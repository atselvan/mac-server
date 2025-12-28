```markdown
# arr

This stack contains a set of media automation and downloader services. Each service has its own environment variables; the compose file references host paths for config and data.

Below are per-service tables describing the environment variables used by the compose file.

## flaresolverr

| Variable | Description | Example / Notes |
|---|---|---|
| `LOG_LEVEL` | Log verbosity | `info` (default), `debug` |
| `LOG_FILE` | Path to log file or `none` | `none` |
| `LOG_HTML` | Whether to save HTML of solved pages | `false` |
| `CAPTCHA_SOLVER` | Captcha solver backend (if used) | `none` |
| `FLARESOLVERR_DATA_PATH` | Host path for FlareSolverr config and data | `/path/to/flaresolverr` |

## prowlarr

| Variable | Description | Example / Notes |
|---|---|---|
| `PUID` | Host UID used to run container | `1000` (default)
| `PGID` | Host GID used to run container | `1000` (default)
| `TZ` | Timezone used by the container | `Etc/UTC` |
| `PROWLARR_DATA_PATH` | Host path for Prowlarr config | `/path/to/prowlarr` |

## bazarr

| Variable | Description | Example / Notes |
|---|---|---|
| `PUID` / `PGID` | Host UID/GID for container | `1000` |
| `TZ` | Timezone | `Etc/UTC` |
| `BAZARR_DATA_PATH` | Host path for Bazarr config | `/path/to/bazarr` |
| `BAZARR_MEDIA_MOVIES_PATH` | Path mounted as `/movies` inside container | `/media/movies` |
| `BAZARR_MEDIA_TV_SHOWS_PATH` | Path mounted as `/tv-shows` inside container | `/media/tv` |

## radarr

| Variable | Description | Example / Notes |
|---|---|---|
| `PUID` / `PGID` | Host UID/GID for container | `1000` |
| `TZ` | Timezone | `Etc/UTC` |
| `RADARR_DATA_PATH` | Host path for Radarr config | `/path/to/radarr` |
| `RADARR_MEDIA_PATH` | Path mounted as `/movies` inside container | `/media/movies` |
| `RADARR_DOWNLOAD_PATH` | Download client path (e.g. qBittorrent/nas) | `/downloads` |

## sonarr

| Variable | Description | Example / Notes |
|---|---|---|
| `PUID` / `PGID` | Host UID/GID for container | `1000` |
| `TZ` | Timezone | `Etc/UTC` |
| `SONARR_DATA_PATH` | Host path for Sonarr config | `/path/to/sonarr` |
| `SONARR_MEDIA_PATH` | Path mounted as `/tv-shows` | `/media/tv` |
| `SONARR_DOWNLOAD_PATH` | Download client path | `/downloads` |

## qbittorrent

| Variable | Description | Example / Notes |
|---|---|---|
| `PUID` / `PGID` | Host UID/GID for container | `1000` |
| `TZ` | Timezone | `Etc/UTC` |
| `WEBUI_PORT` | Web UI port (container) | `8080` |
| `TORRENTING_PORT` | Torrenting port | `6881` |
| `QBittorrent_DATA_PATH` | Host path for qBittorrent config | `/path/to/qbittorrent` |
| `QBittorrent_DOWNLOADS_PATH` | Host downloads folder mounted into container | `/downloads` |

## jellyseerr

| Variable | Description | Example / Notes |
|---|---|---|
| `LOG_LEVEL` | Logging level (example: `debug`) | `debug` |
| `TZ` | Timezone | `Asia/Tashkent` (example in compose) |
| `PORT` | Service port (optional) | `5055` |
| `JELLYSEERR_DATA_PATH` | Host path for Jellyseerr config | `/path/to/jellyseerr` |

## Notes and recommendations

- Create a `stacks/apps/arr/.env` file and set the host paths (`*_DATA_PATH`, `*_MEDIA_PATH`, download paths) and any tokens or credentials required by the services.
- `PUID` and `PGID` are commonly used for LinuxServer images; set them to the UID/GID that should own files on the host (use `id -u` / `id -g`).
- Many services expose a web UI; set ports, firewalls or reverse-proxy rules accordingly.
- For service-specific authentication or API keys, consult the upstream documentation linked from the root README.

```
# arr

This stack contains a set of media automation and downloader services. Each service may use its own environment variables; the compose file references host paths for config and data.

Services and common env variables

- `flaresolverr`
  - `LOG_LEVEL` — logging verbosity (`info`, `debug`) — default `info`
  - `LOG_FILE` — path to log file or `none`
  - `LOG_HTML` — `true`/`false`
  - `CAPTCHA_SOLVER` — captcha solver configuration
  - `FLARESOLVERR_DATA_PATH` — host path for FlareSolverr config

- `prowlarr`, `bazarr`, `radarr`, `sonarr`, `qbittorrent`, `jellyseerr`
  - `PUID` / `PGID` — user and group id used by LinuxServer images (defaults in compose: `1000`)
  - `TZ` — timezone (e.g. `Etc/UTC`)
  - Service-specific data paths referenced in compose:
    - `PROWLARR_DATA_PATH`
    - `BAZARR_DATA_PATH`, `BAZARR_MEDIA_MOVIES_PATH`, `BAZARR_MEDIA_TV_SHOWS_PATH`
    - `RADARR_DATA_PATH`, `RADARR_MEDIA_PATH`, `RADARR_DOWNLOAD_PATH`
    - `SONARR_DATA_PATH`, `SONARR_MEDIA_PATH`, `SONARR_DOWNLOAD_PATH`
    - `QBittorrent_DATA_PATH`, `QBittorrent_DOWNLOADS_PATH`
    - `JELLYSEERR_DATA_PATH`
  - `WEBUI_PORT` / `TORRENTING_PORT` (qbittorrent) — ports for web UI and torrenting

Notes
- Create a `.env` file in this folder and define the host paths and any secrets.
- Useful defaults are provided inline in the compose file for some variables.
- Refer to each upstream project's documentation for advanced config and authentication tokens.
