# homepage

Personal homepage application. The compose references many `HOMEPAGE_VAR_*` variables used to populate links and credentials for services displayed on the homepage.

Environment variables (as used by the compose file)

| Variable | Description |
|---|---|
| `HOMEPAGE_ALLOWED_HOSTS` | Comma-separated hosts allowed by the app (or `*`) |
| `HOMEPAGE_VAR_TITLE` | Title shown on the homepage |
| `HOMEPAGE_VAR_START_URL` | Default start URL for the homepage |
| `HOMEPAGE_VAR_LOCATION` | Region/location string shown in UI |
| `HOMEPAGE_VAR_TIMEZONE` | Timezone for displayed times |
| `HOMEPAGE_VAR_GLANCES_URL` | URL for Glances agent (optional) |
| `HOMEPAGE_VAR_GLANCES_USERNAME` | Username for Glances agent (optional) |
| `HOMEPAGE_VAR_GLANCES_PASSWORD` | Password for Glances agent (optional) |
| `HOMEPAGE_VAR_NPM_URL` | URL for NPM/private registry (optional) |
| `HOMEPAGE_VAR_NPM_USERNAME` | Username for NPM/private registry (optional) |
| `HOMEPAGE_VAR_NPM_PASSWORD` | Password for NPM/private registry (optional) |
| `HOMEPAGE_VAR_NAS_URL` | NAS service URL (optional) |
| `HOMEPAGE_VAR_NAS_USERNAME` | NAS username (optional) |
| `HOMEPAGE_VAR_NAS_PASSWORD` | NAS password (optional) |
| `HOMEPAGE_VAR_PORTAINER_URL` | Portainer URL |
| `HOMEPAGE_VAR_PORTAINER_API_KEY` | Portainer API key |
| `HOMEPAGE_VAR_JELLYFIN_URL` | Jellyfin URL |
| `HOMEPAGE_VAR_JELLYFIN_API_KEY` | Jellyfin access token/key |
| `HOMEPAGE_VAR_IMMICH_URL` | Immich URL |
| `HOMEPAGE_VAR_IMMICH_API_KEY` | Immich API key (note: this repo's compose references Immich) |
| `HOMEPAGE_VAR_ACTUALBUDGET_URL` | Actual Budget URL |
| `HOMEPAGE_VAR_UPTIME_KUMA_URL` | Uptime Kuma URL |
| `HOMEPAGE_VAR_JELLYSEERR_URL` | Jellyseerr URL |
| `HOMEPAGE_VAR_JELLYSEERR_API_KEY` | Jellyseerr API key |
| `HOMEPAGE_VAR_BAZARR_URL` | Bazarr URL |
| `HOMEPAGE_VAR_BAZARR_API_KEY` | Bazarr API key |
| `HOMEPAGE_VAR_PROWLARR_URL` | Prowlarr URL |
| `HOMEPAGE_VAR_PROWLARR_API_KEY` | Prowlarr API key |
| `HOMEPAGE_VAR_RADARR_URL` | Radarr URL |
| `HOMEPAGE_VAR_RADARR_API_KEY` | Radarr API key |
| `HOMEPAGE_VAR_SONARR_URL` | Sonarr URL |
| `HOMEPAGE_VAR_SONARR_API_KEY` | Sonarr API key |
| `HOMEPAGE_VAR_QBITTORRENT_URL` | qBittorrent web UI URL |
| `HOMEPAGE_VAR_SYNCTHING_*` | Syncthing URLs for devices (optional) |
| `HOMEPAGE_VAR_GITHUB_URL` | Github link shown on homepage |
| `HOMEPAGE_VAR_CLOUDFLARE_URL` | Cloudflare link shown on homepage |
| `HOMEPAGE_VAR_REDDIT_URL` | Reddit link shown on homepage |
| `HOMEPAGE_VAR_DISCORD_URL` | Discord link shown on homepage |

Notes
- This stack stores config under `./config` inside the stack directory. Add sensitive API keys to a local `.env` and keep it out of git.
