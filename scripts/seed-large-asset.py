#!/usr/bin/env python3
"""Seed one LARGE binary asset into hq_assets + hq_asset_chunks.

D1 rejects a single multi-MB statement (SQLITE_TOOBIG), so the base64 is
split into 60 KB chunks. The Worker reassembles chunks in order.

Usage:
  python3 scripts/seed-large-asset.py <asset-id> <path> <mime> [display-name]
Writes: scripts/seed-<asset-id>-chunks.sql
"""
import base64, hashlib, sys, os

CHUNK = 60000

asset_id, path, mime = sys.argv[1], sys.argv[2], sys.argv[3]
name = sys.argv[4] if len(sys.argv) > 4 else os.path.basename(path)
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
