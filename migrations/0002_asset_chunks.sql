-- Chunked binary storage for assets too large for a single D1 statement
-- (D1 rejects very long statements with SQLITE_TOOBIG; the 6.25 MB deck
-- is ~8.3 MB base64). Small assets stay inline in hq_assets.data_b64.
CREATE TABLE IF NOT EXISTS hq_asset_chunks (
  asset_id TEXT NOT NULL,
  chunk_index INTEGER NOT NULL,
  data_b64 TEXT NOT NULL,
  PRIMARY KEY (asset_id, chunk_index)
);
