-- Glenride HQ D1 schema.
-- Tables are hq_* prefixed: this database is SHARED with the Glenride
-- System Map app (sysmap_* tables). Never touch tables you did not create.
CREATE TABLE IF NOT EXISTS hq_documents (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  binder TEXT NOT NULL DEFAULT 'general',
  kind TEXT NOT NULL DEFAULT 'markdown',
  status TEXT NOT NULL DEFAULT '',
  summary TEXT NOT NULL DEFAULT '',
  pinned INTEGER NOT NULL DEFAULT 0,
  updated TEXT NOT NULL DEFAULT '',
  last_opened TEXT,
  content TEXT NOT NULL DEFAULT '',
  asset_id TEXT,
  asset_name TEXT,
  asset_mime TEXT
);
CREATE TABLE IF NOT EXISTS hq_assets (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  mime TEXT NOT NULL DEFAULT 'application/octet-stream',
  size INTEGER NOT NULL DEFAULT 0,
  data_b64 TEXT NOT NULL DEFAULT ''
);
