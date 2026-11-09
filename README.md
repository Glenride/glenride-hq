# Glenride HQ — standalone rebuild

Independent rebuild of the Glenride HQ document library (originally a
private Muse fullstack artifact, slug `glenride-hq`). The Muse original
stays live and untouched; this is a rebuild, not a migration.

- **Live:** https://hq.dvaughnhouse.org (login page — password-gated)
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

19 documents seeded from
`~/workspace/your_files/muse-backup-2026-11-08/glenride-hq/data-snapshot-listlibrary.json`
(see `scripts/seed-sha256.json` for the per-document sha256 manifest).
Two binary assets are stored in D1 and served auth-gated via
`GET /api/assets/:id`:

- `council-prospectus` — Glenride Council Prospectus PDF (70,358 B, inline)
- `thinktank-pptx` — Glenride & ThinkTank OS deck pptx (6,250,551 B,
  stored in 60 KB chunks in `hq_asset_chunks` — a single D1 statement
  that large is rejected with SQLITE_TOOBIG)

## Layout

- `wrangler.toml` — Worker config + D1 binding
- `worker/src/index.js` — API (login, documents CRUD, search, assets)
- `public/` — static SPA (login, binder filter, search, reader, editor)
- `migrations/` — D1 schema (`hq_documents`, `hq_assets`, `hq_asset_chunks`)
- `scripts/seed.py` — generates `seed.sql` + `seed-sha256.json` from the snapshot
- `scripts/seed-large-asset.py` — generates chunked seed SQL for a large binary

## Re-seed (fresh database)

```
wrangler d1 migrations apply glenride-hq --remote
python3 scripts/seed.py --asset council-prospectus=<path to prospectus pdf>
wrangler d1 execute glenride-hq --remote --file scripts/seed.sql
python3 scripts/seed-large-asset.py thinktank-pptx <path to deck pptx> \
  application/vnd.openxmlformats-officedocument.presentationml.presentation \
  glenride-and-thinktank-os.pptx
wrangler d1 execute glenride-hq --remote --file scripts/seed-thinktank-pptx-chunks.sql
```

## Deploy

```
# Worker
wrangler deploy
# Pages (from inside public/; the deploy script handles the API token)
python3 ~/workspace/custom-connectors/custom.legacy-cloudflare/bin/pages_wrangler_deploy.py \
  --project glenride-hq --dir <repo>/public
```

The custom domain `hq.dvaughnhouse.org` is attached to the Pages
project; DNS is a proxied CNAME to `glenride-hq.pages.dev` in the
dvaughnhouse.org zone.
