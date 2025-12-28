# cloudflare-ddns

Cloudflare dynamic DNS client (favonia/cloudflare-ddns).

Environment variables

| Variable | Description | Example |
|---|---|---|
| `CLOUDFLARE_API_TOKEN` | API token with DNS edit permissions for the zone | `xxxxx` |
| `DOMAINS` | Comma-separated list of domains to update | `home.example.com` |
| `PROXIED` | Whether Cloudflare proxy is enabled (`true`/`false`) | `true` |

Notes
- Keep your `CLOUDFLARE_API_TOKEN` secret. Use a `.env` file and do not commit it.
