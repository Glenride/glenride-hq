// Glenride HQ SPA — password-gated document library.
// Talks to the glenride-hq-api Worker (D1). Session = HttpOnly cookie
// set at login, plus a Bearer token kept in memory for cross-site fetch.
(function () {
  const API = window.HQ_API_BASE;
  let token = sessionStorage.getItem("hq_token") || "";
  let docs = [];
  let binderFilter = "all";
  let editingId = null;

  const $ = (id) => document.getElementById(id);
  const esc = (s) => String(s ?? "").replace(/[&<>"']/g, (c) =>
    ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));

  async function api(path, opts = {}) {
    const res = await fetch(API + path, {
      ...opts,
      credentials: "include",
      headers: {
        "Content-Type": "application/json",
        ...(token ? { Authorization: "Bearer " + token } : {}),
        ...(opts.headers || {}),
      },
    });
    if (res.status === 401) { showLogin(); throw new Error("unauthorized"); }
    return res;
  }

  // --- tiny markdown renderer (headings, bold/italic, lists, tables, code, links, hr) ---
  function inlineMd(s) {
    return esc(s)
      .replace(/`([^`]+)`/g, "<code>$1</code>")
      .replace(/\*\*([^*]+)\*\*/g, "<strong>$1</strong>")
      .replace(/\*([^*]+)\*/g, "<em>$1</em>")
      .replace(/\[([^\]]+)\]\(([^)\s]+)\)/g, '<a href="$2" target="_blank" rel="noopener">$1</a>');
  }
  function renderMd(md) {
    const lines = String(md || "").split("\n");
    let html = "", inCode = false, inList = false, inTable = false;
    const closeList = () => { if (inList) { html += "</ul>"; inList = false; } };
    const closeTable = () => { if (inTable) { html += "</tbody></table>"; inTable = false; } };
    for (let i = 0; i < lines.length; i++) {
      const line = lines[i];
      if (line.trim().startsWith("```")) { inCode = !inCode; html += inCode ? "<pre><code>" : "</code></pre>"; continue; }
      if (inCode) { html += esc(line) + "\n"; continue; }
      if (/^\s*\|.*\|\s*$/.test(line) && /---/.test(line)) continue; // separator row
      if (/^\s*\|.*\|\s*$/.test(line)) {
        const cells = line.trim().replace(/^\||\|$/g, "").split("|").map((c) => c.trim());
        if (!inTable) { html += "<table><thead><tr>" + cells.map((c) => "<th>" + inlineMd(c) + "</th>").join("") + "</tr></thead><tbody>"; inTable = true; continue; }
        html += "<tr>" + cells.map((c) => "<td>" + inlineMd(c) + "</td>").join("") + "</tr>";
        continue;
      }
      closeTable();
      const h = line.match(/^(#{1,4})\s+(.*)/);
      if (h) { closeList(); html += `<h${h[1].length}>${inlineMd(h[2])}</h${h[1].length}>`; continue; }
      if (/^\s*---+\s*$/.test(line)) { closeList(); html += "<hr>"; continue; }
      const li = line.match(/^\s*[-*]\s+(.*)/);
      if (li) { if (!inList) { html += "<ul>"; inList = true; } html += "<li>" + inlineMd(li[1]) + "</li>"; continue; }
      const ol = line.match(/^\s*\d+[.)]\s+(.*)/);
      if (ol) { if (!inList) { html += "<ul>"; inList = true; } html += "<li>" + inlineMd(ol[1]) + "</li>"; continue; }
      closeList();
      if (line.trim() === "") continue;
      html += "<p>" + inlineMd(line.trim()) + "</p>";
    }
    closeList(); closeTable();
    if (inCode) html += "</code></pre>";
    return html;
  }

  function showLogin() {
    $("login-view").classList.remove("hidden");
    $("app-view").classList.add("hidden");
  }
  function showApp() {
    $("login-view").classList.add("hidden");
    $("app-view").classList.remove("hidden");
  }

  function binderLabel(b) {
    return { structure: "Structure", operations: "Operations", council: "Council",
      commercial: "Commercial", brand: "Brand", general: "General" }[b] || b;
  }

  function renderBinders() {
    const counts = {};
    docs.forEach((d) => { counts[d.binder] = (counts[d.binder] || 0) + 1; });
    const binders = [...new Set(docs.map((d) => d.binder))].sort();
    let html = `<button class="binder${binderFilter === "all" ? " active" : ""}" data-b="all">All documents (${docs.length})</button>`;
    binders.forEach((b) => {
      html += `<button class="binder${binderFilter === b ? " active" : ""}" data-b="${esc(b)}">${esc(binderLabel(b))} (${counts[b]})</button>`;
    });
    $("binders").innerHTML = html;
    document.querySelectorAll(".binder").forEach((el) =>
      el.addEventListener("click", () => { binderFilter = el.dataset.b; renderAll(); }));
  }

  function filteredDocs() {
    const q = $("search").value.trim().toLowerCase();
    return docs.filter((d) => {
      if (binderFilter !== "all" && d.binder !== binderFilter) return false;
      if (q && !(d.title + " " + d.summary + " " + (d.content || "")).toLowerCase().includes(q)) return false;
      return true;
    });
  }

  function renderList() {
    const list = filteredDocs();
    if (!list.length) { $("doc-list").innerHTML = "<p class='muted'>No documents match.</p>"; return; }
    $("doc-list").innerHTML = list.map((d) => `
      <div class="doc-card" data-id="${esc(d.id)}">
        <div class="doc-title">${esc(d.title)}${d.pinned ? " 📌" : ""}</div>
        <div class="doc-meta">${esc(binderLabel(d.binder))} · ${esc(d.status || "")} · ${esc(d.updated || "")}</div>
        <div class="doc-summary">${esc(d.summary || "")}</div>
        ${d.asset_id ? `<div class="doc-asset">📎 ${esc(d.asset_name || d.asset_id)} — download after opening</div>` : ""}
      </div>`).join("");
    document.querySelectorAll(".doc-card").forEach((el) =>
      el.addEventListener("click", () => openDoc(el.dataset.id)));
  }

  function openDoc(id) {
    const d = docs.find((x) => x.id === id);
    if (!d) return;
    $("doc-list").classList.add("hidden");
    $("editor").classList.add("hidden");
    $("reader").classList.remove("hidden");
    const asset = d.asset_id
      ? `<p><a class="btn" href="${API}/api/assets/${encodeURIComponent(d.asset_id)}" download>⬇ Download ${esc(d.asset_name || d.asset_id)}</a></p>`
      : "";
    $("reader-body").innerHTML = `
      <div class="doc-meta">${esc(binderLabel(d.binder))} · ${esc(d.status || "")} · ${esc(d.updated || "")}</div>
      <h1>${esc(d.title)}</h1>
      <p class="muted">${esc(d.summary || "")}</p>
      ${asset}
      <div class="md">${d.content ? renderMd(d.content) : "<p class='muted'>No text content — see the attached file above.</p>"}</div>
      <div class="row"><button id="edit-doc-btn" class="btn">Edit</button></div>`;
    $("edit-doc-btn").addEventListener("click", () => openEditor(d));
    window.scrollTo(0, 0);
  }

  function openEditor(d) {
    editingId = d ? d.id : null;
    $("editor-title").textContent = d ? "Edit document" : "New document";
    $("ed-title").value = d ? d.title : "";
    $("ed-binder").value = d ? d.binder : "general";
    $("ed-status").value = d ? d.status || "" : "";
    $("ed-summary").value = d ? d.summary || "" : "";
    $("ed-content").value = d ? d.content || "" : "";
    $("delete-doc-btn").classList.toggle("hidden", !d);
    $("editor-error").classList.add("hidden");
    $("reader").classList.add("hidden");
    $("doc-list").classList.add("hidden");
    $("editor").classList.remove("hidden");
  }

  async function loadDocs() {
    const res = await api("/api/documents");
    const data = await res.json();
    if (!data.ok) throw new Error(data.error || "load failed");
    docs = data.documents;
    renderAll();
  }

  function renderAll() { renderBinders(); renderList(); }

  $("search").addEventListener("input", renderList);
  $("back-btn").addEventListener("click", () => {
    $("reader").classList.add("hidden");
    $("editor").classList.add("hidden");
    $("doc-list").classList.remove("hidden");
  });
  $("new-doc-btn").addEventListener("click", () => openEditor(null));
  $("cancel-edit-btn").addEventListener("click", () => {
    $("editor").classList.add("hidden");
    $("doc-list").classList.remove("hidden");
  });
  $("logout-btn").addEventListener("click", async () => {
    try { await api("/api/logout", { method: "POST" }); } catch (e) {}
    token = ""; sessionStorage.removeItem("hq_token");
    showLogin();
  });

  $("login-form").addEventListener("submit", async (e) => {
    e.preventDefault();
    $("login-error").classList.add("hidden");
    try {
      const res = await fetch(API + "/api/login", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ password: $("password").value }),
      });
      const data = await res.json();
      if (!res.ok || !data.ok) throw new Error(data.error || "login failed");
      token = data.token || "";
      sessionStorage.setItem("hq_token", token);
      $("password").value = "";
      showApp();
      await loadDocs();
    } catch (err) {
      $("login-error").textContent = err.message === "unauthorized" ? "Wrong password." : err.message;
      $("login-error").classList.remove("hidden");
    }
  });

  $("save-doc-btn").addEventListener("click", async () => {
    $("editor-error").classList.add("hidden");
    const body = {
      title: $("ed-title").value.trim(),
      binder: $("ed-binder").value,
      status: $("ed-status").value.trim(),
      summary: $("ed-summary").value.trim(),
      content: $("ed-content").value,
    };
    if (!body.title) { $("editor-error").textContent = "Title is required."; $("editor-error").classList.remove("hidden"); return; }
    try {
      const res = await api(editingId ? "/api/documents/" + encodeURIComponent(editingId) : "/api/documents", {
        method: editingId ? "PATCH" : "POST",
        body: JSON.stringify(body),
      });
      const data = await res.json();
      if (!res.ok || !data.ok) throw new Error(data.error || "save failed");
      await loadDocs();
      $("editor").classList.add("hidden");
      $("doc-list").classList.remove("hidden");
      openDoc(data.document.id);
    } catch (err) {
      $("editor-error").textContent = err.message;
      $("editor-error").classList.remove("hidden");
    }
  });

  $("delete-doc-btn").addEventListener("click", async () => {
    if (!editingId || !confirm("Delete this document?")) return;
    try {
      await api("/api/documents/" + encodeURIComponent(editingId), { method: "DELETE" });
      await loadDocs();
      $("editor").classList.add("hidden");
      $("doc-list").classList.remove("hidden");
    } catch (err) {
      $("editor-error").textContent = err.message;
      $("editor-error").classList.remove("hidden");
    }
  });

  // Boot: if we already hold a token, try loading; otherwise show login.
  (async () => {
    if (!token) { showLogin(); return; }
    try { showApp(); await loadDocs(); }
    catch (e) { showLogin(); }
  })();
})();
