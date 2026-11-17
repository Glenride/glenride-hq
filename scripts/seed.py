#!/usr/bin/env python3
"""Seed Glenride HQ D1 from the vendored Nov 8 snapshot plus later additions.

Reads scripts/snapshot-2026-11-08.json (the Nov 8, 2026 Muse backup
snapshot, 19 documents, vendored byte-exact into this repo so the seed
never depends on a file outside it) and merges the repo-local
additions snapshot(s) listed in ADDITIONS (documents added to the live
library after Nov 8). Emits:
  - seed.sql  (INSERTs into hq_documents / hq_assets, SQL-escaped)
  - seed-sha256.json (sha256 of each document's seeded content, for verification)

Every document in the live library MUST appear in exactly one snapshot
file, or a re-seed will delete it (seed.sql starts with DELETE FROM).
When documents are added to the live library, add them to an additions
snapshot in scripts/ and list the file in ADDITIONS below — never edit
seed.sql by hand; it is generated.

Binary assets: pass --asset <doc-id>=<path> to embed a file as base64 in
hq_assets and link it from the document row. If no --asset is given for a
binary doc, the row is seeded with its summary and asset_* left NULL, and
the doc is listed as missing-asset in the report. One asset has a
vendored default: council-prospectus resolves to
scripts/assets/glenride-council-prospectus.pdf unless --asset overrides
it. The large deck (thinktank-pptx) is NEVER embedded here — D1 rejects
multi-MB statements — it is seeded separately by seed-large-asset.py
from its vendored copy in scripts/assets/.

Usage:
  python3 scripts/seed.py [--asset council-prospectus=/path/to.pdf ...]
  python3 scripts/seed.py --snapshot /path/to/other-snapshot.json ...

The vendored snapshot is the only default input. There is deliberately
no silent fallback to the external backup path: a fallback would
reintroduce the outside-repo dependency and mask a missing vendored
file. To regenerate from a different snapshot, pass --snapshot
explicitly.
"""
import argparse, base64, hashlib, json, mimetypes, os, sys

OUT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(OUT_DIR)
# Vendored Nov 8, 2026 snapshot — the seed's base input. Byte-exact copy
# of the Muse backup snapshot; sha256 3ad7677be091ccc18cafc568996cda303e461cfb41f3f0f07e6608cf5674a85b.
SNAPSHOT = os.path.join(OUT_DIR, "snapshot-2026-11-08.json")
# Repo-local additions snapshots, merged after the Nov 8 snapshot in
# listed order. Each file has the same {"documents": [...]} shape.
ADDITIONS = [
    os.path.join(OUT_DIR, "snapshot-sop-attestation-2026-11-17.json"),
]
# Vendored binary assets, keyed by document id. An explicit --asset flag
# always wins over a default. Only small assets belong here: the large
# deck is seeded by seed-large-asset.py, never by this script.
# council-prospectus PDF sha256:
# 1fd7bc5c85ccf6ef096dca63e0afbbb9f311c381fb75f9dd6e1dabbdccd0ef60.
DEFAULT_ASSETS = {
    "council-prospectus": os.path.join(OUT_DIR, "assets", "glenride-council-prospectus.pdf"),
}


def sql_str(v):
    if v is None:
        return "NULL"
    return "'" + str(v).replace("'", "''") + "'"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--asset", action="append", default=[],
                    help="doc-id=/path/to/file (repeatable)")
    ap.add_argument("--snapshot", default=SNAPSHOT,
                    help="base snapshot JSON (default: vendored scripts/snapshot-2026-11-08.json)")
    args = ap.parse_args()
    assets = {}
    for a in args.asset:
        doc_id, _, path = a.partition("=")
        assets[doc_id] = os.path.expanduser(path)

    with open(os.path.expanduser(args.snapshot), encoding="utf-8") as f:
        data = json.load(f)
    docs = data["documents"]
    seen = {d["id"] for d in docs}
    for path in ADDITIONS:
        with open(path, encoding="utf-8") as f:
            extra = json.load(f)
        for d in extra["documents"]:
            if d["id"] in seen:
                print(f"duplicate document id {d['id']} in {path}", file=sys.stderr)
                return 1
            seen.add(d["id"])
            docs.append(d)

    lines = ["-- Glenride HQ seed — generated from the Muse backup snapshot + repo-local additions.",
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
            path = assets.get(d["id"]) or DEFAULT_ASSETS.get(d["id"])
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
