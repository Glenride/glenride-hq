// API base URL for the Worker. Overwritten at deploy time once the
// Worker URL is known. Runtime override:
//   localStorage.setItem('hq_api_base', 'https://<worker>.workers.dev')
window.HQ_API_BASE = localStorage.getItem('hq_api_base')
  || "https://glenride-hq-api.mwszghdkkf.workers.dev";
