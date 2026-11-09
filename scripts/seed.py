#!/usr/bin/env python3
"""Seed Glenride HQ D1 from the Muse backup snapshot.

Reads ~/workspace/your_files/muse-backup-2026-11-08/glenride-hq/data-snapshot-listlibrary.json
and emits:
  - seed.sql  (INSERTs into hq_documents / hq_assets, SQL-escaped)
  - seed-sha256.json (sha256 of each document's seeded content, for verification)

Binary assets: pass --asset <doc-id>=<path> to embed a file as base64 in
hq_assets and link it from the document row. If no --asset is given for a
binary doc, the row is seeded with its summary and asset_* left NULL, and
the doc is listed as missing-asset in the report.

Usage:
  python3 scripts/seed.py [--asset council-prospectus=/path/to.pdf ...]
"""
import argparse, base64, hashlib, json, mimetypes, os, sys

SNAPSHOT = os.path.expanduser(
    "~/workspace/your_files/muse-backup-2026-11-08/glenride-hq/data-snapshot-listlibrary.json")
OUT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(OUT_DIR)


def sql_str(v):
    if v is None:
        return "NULL"
    return "'" + str(v).replace("'", "''") + "'"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--asset", action="append", default=[],
                    help="doc-id=/path/to/file (repeatable)")
    args = ap.parse_args()
    assets = {}
    for a in args.asset:
        doc_id, _, path = a.partition("=")
        assets[doc_id] = os.path.expanduser(path)

    with open(SNAPSHOT, encoding="utf-8") as f:
        data = json.load(f)
    docs = data["documents"]

    lines = ["-- Glenride HQ seed — generated from the Muse backup snapshot.",
             "-- Regenerate with: python3 scripts/seed.py [ --asset id=/path ... ]",
             "DELETE FROM hq_documents;",
             "DELETE FROM hq_assets;"]
    manifest = {"documents": [], "missing_assets": [], "asset_files": {}}

    for d in docs:
        content = d.get("content") or ""
        sha = hashlib.sha256(content.encode("utf-8")).hexdigest()
        asset_id = d.get("asset") or None
        asset_name = None
        asset_mime = None
        if asset_id:
            path = assets.get(d["id"])
            if path and os.path.exists(path):
                with open(path, "rb") as fh:
                    raw = fh.read()
                mime = mimetypes.guess_type(path)[0] or "application/octet-stream"
                b64 = base64.b64encode(raw).decode("ascii")
                asset_name = os.path.basename(path)
                asset_mime = mime
                lines.append(
                    "INSERT INTO hq_assets (id, name, mime, size, data_b64) VALUES (%s, %s, %s, %d, %s);"
                    % (sql_str(asset_id), sql_str(asset_name), sql_str(mime), len(raw), sql_str(b64)))
                manifest["asset_files"][d["id"]] = {
                    "file": asset_name, "bytes": len(raw),
                    "sha256": hashlib.sha256(raw).hexdigest()}
            else:
                # Only a real gap when the doc has no inline text either
                # (launch-transcript carries full text + a source-docx ref).
                if not content.strip():
                    manifest["missing_assets"].append(d["id"])
        manifest["documents"].append({
            "id": d["id"], "title": d["title"], "kind": d.get("kind"),
            "content_chars": len(content), "content_sha256": sha,
            "asset": asset_id, "asset_carried": bool(asset_name)})
        lines.append(
            "INSERT INTO hq_documents (id, title, binder, kind, status, summary, pinned, updated, last_opened, content, asset_id, asset_name, asset_mime) "
            "VALUES (%s, %s, %s, %s, %s, %s, %d, %s, %s, %s, %s, %s, %s);"
            % (sql_str(d["id"]), sql_str(d["title"]), sql_str(d.get("binder") or "general"),
               sql_str(d.get("kind") or "markdown"), sql_str(d.get("status") or ""),
               sql_str(d.get("summary") or ""), 1 if d.get("pinned") else 0,
               sql_str(d.get("updated") or ""), sql_str(d.get("last_opened")),
               sql_str(content), sql_str(asset_id), sql_str(asset_name), sql_str(asset_mime)))

    with open(os.path.join(OUT_DIR, "seed.sql"), "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    with open(os.path.join(OUT_DIR, "seed-sha256.json"), "w", encoding="utf-8") as f:
        json.dump(manifest, f, indent=2)
    print(f"seeded {len(docs)} documents")
    print(f"missing assets: {manifest['missing_assets'] or 'none'}")
    print(f"asset files carried: {list(manifest['asset_files']) or 'none'}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
