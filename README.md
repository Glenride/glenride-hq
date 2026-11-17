# Glenride HQ — standalone rebuild

Independent rebuild of the Glenride HQ document library (originally a
private Muse fullstack artifact, slug `glenride-hq`). The Muse original
stays live and untouched; this is a rebuild, not a migration.

- **Live:** https://hq.dvaughnhouse.com (login page — password-gated)
- **Frontend:** Cloudflare Pages project `glenride-hq` (static SPA in `public/`)
- **API:** Cloudflare Worker `glenride-hq-api` — https://glenride-hq-api.mwszghdkkf.workers.dev
- **Data:** D1 database `glenride-hq` (`0d78cc19-3b11-4f39-805e-c061524cab2f`),
  SHARED with the Glenride System Map app. This app uses only `hq_*`
  tables; never touch `sysmap_*`.

## Auth

Password gate. The Worker refuses unauthenticated API reads/writes (401).
Login POSTs the password; the Worker sets an HttpOnly `hq_session`
cookie (plus a Bearer token for cross-site fetch). The password lives
only as the `APP_PASSWORD` Worker secret — never in this repo.

Set/rotate it with:

```
wrangler secret put APP_PASSWORD
```

## Contents

28 documents seeded from two snapshots (merged by `scripts/seed.py`):

- 19 documents from the repo-local
  `scripts/snapshot-2026-11-08.json` (the Nov 8, 2026 Muse backup
  snapshot, vendored byte-exact into the repo so the seed never depends
  on a file outside it).
- 9 attestation SOP documents (operations binder, Nov 17, 2026) from the
  repo-local `scripts/snapshot-sop-attestation-2026-11-17.json`, exported
  byte-exact from the live library.

See `scripts/seed-sha256.json` for the per-document sha256 manifest.
When documents are added to the live library, add them to an additions
snapshot in `scripts/` and list it in `seed.py`'s `ADDITIONS` — a re-seed
deletes every document the snapshots do not contain.
Two binary assets are stored in D1 and served auth-gated via
`GET /api/assets/:id`. Both are vendored byte-exact in `scripts/assets/`,
so a re-seed needs nothing from outside the repo:

- `council-prospectus` — Glenride Council Prospectus PDF (70,358 B, inline)
- `thinktank-pptx` — Glenride & ThinkTank OS deck pptx (6,250,551 B,
  stored in 60 KB chunks in `hq_asset_chunks` — a single D1 statement
  that large is rejected with SQLITE_TOOBIG)

## Layout

- `wrangler.toml` — Worker config + D1 binding
- `worker/src/index.js` — API (login, documents CRUD, search, assets)
- `public/` — static SPA (login, binder filter, search, reader, editor)
- `migrations/` — D1 schema (`hq_documents`, `hq_assets`, `hq_asset_chunks`)
- `scripts/seed.py` — generates `seed.sql` + `seed-sha256.json` from the
  vendored Nov 8 snapshot plus the repo-local additions snapshots in `ADDITIONS`
- `scripts/snapshot-2026-11-08.json` — vendored base snapshot: the 19
  documents from the Nov 8, 2026 Muse backup, byte-exact
- `scripts/snapshot-sop-attestation-2026-11-17.json` — additions snapshot:
  the 9 attestation SOP documents, exported byte-exact from live D1
- `scripts/seed-large-asset.py` — generates chunked seed SQL for a large binary
- `scripts/assets/` — vendored binary assets (prospectus PDF, deck pptx),
  byte-exact; the seed scripts use these by default

## Re-seed (fresh database)

Everything the re-seed needs lives in this repo — no outside files:

```
wrangler d1 migrations apply glenride-hq --remote
python3 scripts/seed.py
wrangler d1 execute glenride-hq --remote --file scripts/seed.sql
python3 scripts/seed-large-asset.py thinktank-pptx
wrangler d1 execute glenride-hq --remote --file scripts/seed-thinktank-pptx-chunks.sql
```

Explicit overrides still work: `seed.py --asset council-prospectus=/path/to.pdf`
and `seed-large-asset.py thinktank-pptx /path/to.pptx <mime> [name]`.

## Deploy

```
# Worker
wrangler deploy
# Pages (from inside public/; the deploy script handles the API token)
python3 ~/workspace/custom-connectors/custom.legacy-cloudflare/bin/pages_wrangler_deploy.py \
  --project glenride-hq --dir <repo>/public
```

The custom domain `hq.dvaughnhouse.com` is attached to the Pages
project; DNS is a proxied CNAME to `glenride-hq.pages.dev` in the
dvaughnhouse.com zone.
