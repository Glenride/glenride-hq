// Glenride HQ API — Cloudflare Worker + D1 (shared glenride-hq database).
// Password-gated document library: every API route except /api/health and
// /api/login requires a valid session (HttpOnly cookie OR Bearer token).
// Session tokens are HMAC-SHA256 signed with the APP_PASSWORD secret.
// The password itself lives only as the APP_PASSWORD Worker secret —
// never in this repo, never in D1, never in a file.

const ALLOWED_ORIGINS = new Set([
  "https://hq.dvaughnhouse.com",
  "https://glenride-hq.pages.dev",
]);

const json = (obj, status = 200, extra = {}) =>
  new Response(JSON.stringify(obj), {
    status,
    headers: { "Content-Type": "application/json", ...extra },
  });

function corsHeaders(req) {
  const origin = req.headers.get("Origin") || "";
  const headers = {
    "Access-Control-Allow-Methods": "GET, POST, PATCH, DELETE, OPTIONS",
    "Access-Control-Allow-Headers": "Authorization, Content-Type",
    "Access-Control-Allow-Credentials": "true",
    "Access-Control-Max-Age": "86400",
  };
  if (ALLOWED_ORIGINS.has(origin)) headers["Access-Control-Allow-Origin"] = origin;
  return headers;
}

const b64url = (bytes) =>
  btoa(String.fromCharCode(...new Uint8Array(bytes)))
    .replaceAll("+", "-").replaceAll("/", "_").replaceAll("=", "");
const unb64url = (s) => atob(s.replaceAll("-", "+").replaceAll("_", "/"));

async function hmacSig(payload, secret) {
  const key = await crypto.subtle.importKey(
    "raw", new TextEncoder().encode(secret),
    { name: "HMAC", hash: "SHA-256" }, false, ["sign"]);
  return b64url(await crypto.subtle.sign("HMAC", key, new TextEncoder().encode(payload)));
}

async function makeToken(secret) {
  const payload = b64url(new TextEncoder().encode(JSON.stringify({
    exp: Date.now() + 30 * 864e5, r: crypto.randomUUID(),
  })));
  return `${payload}.${await hmacSig(payload, secret)}`;
}

async function verifyToken(token, secret) {
  if (!token || !secret) return false;
  const parts = token.split(".");
  if (parts.length !== 2) return false;
  const [payload, sig] = parts;
  const expect = await hmacSig(payload, secret);
  if (sig.length !== expect.length) return false;
  let diff = 0;
  for (let i = 0; i < sig.length; i++) diff |= sig.charCodeAt(i) ^ expect.charCodeAt(i);
  if (diff !== 0) return false;
  try {
    const data = JSON.parse(unb64url(payload));
    return data.exp > Date.now();
  } catch { return false; }
}

function timingSafeStrEq(a, b) {
  if (!a || !b || a.length !== b.length) return false;
  let diff = 0;
  for (let i = 0; i < a.length; i++) diff |= a.charCodeAt(i) ^ b.charCodeAt(i);
  return diff === 0;
}

async function authorized(req, env) {
  const secret = env.APP_PASSWORD;
  if (!secret) return false;
  const cookie = req.headers.get("Cookie") || "";
  const m = cookie.match(/(?:^|;\s*)hq_session=([^;]+)/);
  if (m && m[1] && await verifyToken(decodeURIComponent(m[1]), secret)) return true;
  const auth = req.headers.get("Authorization") || "";
  const bearer = auth.startsWith("Bearer ") ? auth.slice(7).trim() : "";
  if (bearer && await verifyToken(bearer, secret)) return true;
  return false;
}

const sessionCookie = (token) =>
  `hq_session=${token}; HttpOnly; Secure; SameSite=None; Path=/; Max-Age=2592000`;
const clearSessionCookie =
  "hq_session=; HttpOnly; Secure; SameSite=None; Path=/; Max-Age=0";

function docRow(r) {
  return {
    id: r.id, title: r.title, binder: r.binder, kind: r.kind,
    status: r.status, summary: r.summary, pinned: r.pinned === 1,
    updated: r.updated, last_opened: r.last_opened,
    content: r.content, asset_id: r.asset_id,
    asset_name: r.asset_name, asset_mime: r.asset_mime,
  };
}

export default {
  async fetch(req, env) {
    const url = new URL(req.url);
    const path = url.pathname;
    const cors = corsHeaders(req);
    const withCors = (res) => {
      for (const [k, v] of Object.entries(cors)) res.headers.set(k, v);
      return res;
    };

    if (req.method === "OPTIONS") return new Response(null, { headers: cors });

    if (path === "/api/health" && req.method === "GET")
      return withCors(json({ ok: true, service: "glenride-hq-api" }));

    if (path === "/api/login" && req.method === "POST") {
      let body = {};
      try { body = await req.json(); } catch { return withCors(json({ ok: false, error: "bad json" }, 400)); }
      const candidate = String(body.password || "");
      if (env.APP_PASSWORD && candidate && timingSafeStrEq(candidate, env.APP_PASSWORD)) {
        const token = await makeToken(env.APP_PASSWORD);
        return withCors(json({ ok: true, token }, 200, { "Set-Cookie": sessionCookie(token) }));
      }
      return withCors(json({ ok: false, error: "wrong password" }, 401));
    }

    if (path === "/api/logout" && req.method === "POST") {
      return withCors(json({ ok: true }, 200, { "Set-Cookie": clearSessionCookie }));
    }

    if (!(await authorized(req, env)))
      return withCors(json({ ok: false, error: "unauthorized" }, 401));

    const db = env.HQ_DB;

    // GET /api/documents?q=...&binder=... — list (content included; docs are small)
    if (path === "/api/documents" && req.method === "GET") {
      const q = (url.searchParams.get("q") || "").trim().toLowerCase();
      const binder = url.searchParams.get("binder") || "";
      let rows;
      if (binder) {
        rows = (await db.prepare(
          "SELECT * FROM hq_documents WHERE binder = ? ORDER BY pinned DESC, title ASC"
        ).bind(binder).all()).results;
      } else {
        rows = (await db.prepare(
          "SELECT * FROM hq_documents ORDER BY pinned DESC, title ASC"
        ).all()).results;
      }
      let docs = rows.map(docRow);
      if (q) {
        docs = docs.filter((d) =>
          (d.title + " " + d.summary + " " + d.content).toLowerCase().includes(q));
      }
      return withCors(json({ ok: true, count: docs.length, documents: docs }));
    }

    // POST /api/documents — create
    if (path === "/api/documents" && req.method === "POST") {
      let body = {};
      try { body = await req.json(); } catch { return withCors(json({ ok: false, error: "bad json" }, 400)); }
      const title = String(body.title || "").trim();
      if (!title) return withCors(json({ ok: false, error: "title required" }, 400));
      const id = String(body.id || "").trim() ||
        title.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "") + "-" + Date.now().toString(36);
      const now = new Date().toISOString();
      await db.prepare(
        `INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
      ).bind(
        id, title, String(body.binder || "general"), String(body.kind || "markdown"),
        String(body.status || ""), String(body.summary || ""),
        body.pinned ? 1 : 0, String(body.updated || now.slice(0, 10)), null,
        String(body.content || ""), body.asset_id || null,
        body.asset_name || null, body.asset_mime || null,
      ).run();
      const row = await db.prepare("SELECT * FROM hq_documents WHERE id = ?").bind(id).first();
      return withCors(json({ ok: true, document: docRow(row) }, 201));
    }

    // /api/documents/:id — GET, PATCH, DELETE
    const dm = path.match(/^\/api\/documents\/([^/]+)$/);
    if (dm) {
      const id = decodeURIComponent(dm[1]);
      if (req.method === "GET") {
        const row = await db.prepare("SELECT * FROM hq_documents WHERE id = ?").bind(id).first();
        if (!row) return withCors(json({ ok: false, error: "not found" }, 404));
        return withCors(json({ ok: true, document: docRow(row) }));
      }
      if (req.method === "PATCH") {
        const row = await db.prepare("SELECT * FROM hq_documents WHERE id = ?").bind(id).first();
        if (!row) return withCors(json({ ok: false, error: "not found" }, 404));
        let body = {};
        try { body = await req.json(); } catch { return withCors(json({ ok: false, error: "bad json" }, 400)); }
        const cur = docRow(row);
        const next = {
          title: body.title !== undefined ? String(body.title) : cur.title,
          binder: body.binder !== undefined ? String(body.binder) : cur.binder,
          kind: body.kind !== undefined ? String(body.kind) : cur.kind,
          status: body.status !== undefined ? String(body.status) : cur.status,
          summary: body.summary !== undefined ? String(body.summary) : cur.summary,
          pinned: body.pinned !== undefined ? (body.pinned ? 1 : 0) : (cur.pinned ? 1 : 0),
          updated: body.updated !== undefined ? String(body.updated) : cur.updated,
          content: body.content !== undefined ? String(body.content) : cur.content,
          asset_id: body.asset_id !== undefined ? body.asset_id : cur.asset_id,
          asset_name: body.asset_name !== undefined ? body.asset_name : cur.asset_name,
          asset_mime: body.asset_mime !== undefined ? body.asset_mime : cur.asset_mime,
        };
        await db.prepare(
          `UPDATE hq_documents SET title=?, binder=?, kind=?, status=?, summary=?, pinned=?, updated=?, content=?, asset_id=?, asset_name=?, asset_mime=? WHERE id=?`
        ).bind(next.title, next.binder, next.kind, next.status, next.summary, next.pinned,
          next.updated, next.content, next.asset_id, next.asset_name, next.asset_mime, id).run();
        const updated = await db.prepare("SELECT * FROM hq_documents WHERE id = ?").bind(id).first();
        return withCors(json({ ok: true, document: docRow(updated) }));
      }
      if (req.method === "DELETE") {
        await db.prepare("DELETE FROM hq_documents WHERE id = ?").bind(id).run();
        return withCors(json({ ok: true, id }));
      }
      return withCors(json({ ok: false, error: "method not allowed" }, 405));
    }

    // GET /api/assets/:id — download a binary asset (auth required).
    // Small assets live inline in hq_assets.data_b64; large ones are
    // reassembled from hq_asset_chunks (D1 SQLITE_TOOBIG on huge rows).
    const am = path.match(/^\/api\/assets\/([^/]+)$/);
    if (am && req.method === "GET") {
      const id = decodeURIComponent(am[1]);
      const row = await db.prepare("SELECT * FROM hq_assets WHERE id = ?").bind(id).first();
      if (!row) return withCors(json({ ok: false, error: "not found" }, 404));
      let b64 = row.data_b64 || "";
      if (!b64) {
        const chunks = (await db.prepare(
          "SELECT data_b64 FROM hq_asset_chunks WHERE asset_id = ? ORDER BY chunk_index ASC"
        ).bind(id).all()).results;
        if (!chunks.length) return withCors(json({ ok: false, error: "asset has no data" }, 404));
        b64 = chunks.map((c) => c.data_b64).join("");
      }
      const bytes = Uint8Array.from(atob(b64), (c) => c.charCodeAt(0));
      return withCors(new Response(bytes, {
        status: 200,
        headers: {
          "Content-Type": row.mime,
          "Content-Disposition": `attachment; filename="${row.name}"`,
          "Content-Length": String(row.size),
        },
      }));
    }

    return withCors(json({ ok: false, error: "not found" }, 404));
  },
};
