#!/usr/bin/env python3
"""Seed one LARGE binary asset into hq_assets + hq_asset_chunks.

D1 rejects a single multi-MB statement (SQLITE_TOOBIG), so the base64 is
split into 60 KB chunks. The Worker reassembles chunks in order.

Usage:
  python3 scripts/seed-large-asset.py <asset-id> [path] [mime] [display-name]
  python3 scripts/seed-large-asset.py thinktank-pptx
Writes: scripts/seed-<asset-id>-chunks.sql

With only <asset-id>, the vendored copy in scripts/assets/ is used
(thinktank-pptx only). Explicit path/mime/name arguments always win.
"""
import base64, hashlib, sys, os

CHUNK = 60000

# Vendored large assets: asset-id -> (filename in scripts/assets/, mime,
# display name). Deck pptx sha256:
# 18f2567c8b414e06e2b103c37cf109427f86be236aa3db0cbc607d81fa26f7fe.
HERE = os.path.dirname(os.path.abspath(__file__))
DEFAULTS = {
    "thinktank-pptx": ("glenride-and-thinktank-os.pptx",
                       "application/vnd.openxmlformats-officedocument.presentationml.presentation",
                       "glenride-and-thinktank-os.pptx"),
}

if len(sys.argv) < 2:
    print("usage: seed-large-asset.py <asset-id> [path] [mime] [display-name]", file=sys.stderr)
    sys.exit(2)
asset_id = sys.argv[1]
default = DEFAULTS.get(asset_id)
if len(sys.argv) >= 4:
    path, mime = sys.argv[2], sys.argv[3]
    name = sys.argv[4] if len(sys.argv) > 4 else os.path.basename(path)
elif default:
    path = os.path.join(HERE, "assets", default[0])
    mime = default[1]
    name = sys.argv[3] if len(sys.argv) > 3 else default[2]
    if len(sys.argv) == 3:
        path = sys.argv[2]
else:
    print(f"no vendored default for {asset_id}; pass <path> <mime>", file=sys.stderr)
    sys.exit(2)
raw = open(os.path.expanduser(path), "rb").read()
b64 = base64.b64encode(raw).decode("ascii")


def q(v):
    return "'" + v.replace("'", "''") + "'"


out = ["-- Large-asset seed for %s (%d bytes, sha256 %s)"
       % (asset_id, len(raw), hashlib.sha256(raw).hexdigest()),
       "DELETE FROM hq_asset_chunks WHERE asset_id = %s;" % q(asset_id),
       "INSERT INTO hq_assets (id, name, mime, size, data_b64) VALUES (%s, %s, %s, %d, '') "
       "ON CONFLICT(id) DO UPDATE SET name=excluded.name, mime=excluded.mime, "
       "size=excluded.size, data_b64='';" % (q(asset_id), q(name), q(mime), len(raw))]
for i in range(0, len(b64), CHUNK):
    out.append("INSERT INTO hq_asset_chunks (asset_id, chunk_index, data_b64) VALUES (%s, %d, %s);"
               % (q(asset_id), i // CHUNK, q(b64[i:i + CHUNK])))
fn = os.path.join(os.path.dirname(os.path.abspath(__file__)), "seed-%s-chunks.sql" % asset_id)
open(fn, "w").write("\n".join(out) + "\n")
print("%s: %d bytes -> %d chunks, wrote %s" % (asset_id, len(raw), -(-len(b64) // CHUNK), fn))
