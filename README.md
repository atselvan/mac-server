# Home Server

This repository contains Docker stacks used to run a personal home server. Below is a table of the application stacks with short descriptions and links to the upstream project pages.

| Name | Description | Upstream URL |
|---|---|---|
| [actual](stacks/apps/actual/README.md) | Actual budgeting server (personal finance) | https://actualbudget.com |
| [arr](stacks/apps/arr/README.md) | Collection of media automation and downloader services (Prowlarr, Radarr, Sonarr, Bazarr, qBittorrent, FlareSolverr, Jellyseerr) | https://linuxserver.io/ (various upstream projects linked in stack README) |
| [cloudflare-ddns](stacks/apps/cloudflare-ddns/README.md) | Cloudflare dynamic DNS client (favonia/cloudflare-ddns) | https://github.com/favonia/cloudflare-ddns |
| [homepage](stacks/apps/homepage/README.md) | Personal homepage application for links and service status | https://github.com/gethomepage/homepage |
| [immich](stacks/apps/immich/README.md) | Self-hosted photo/video management (Immich) | https://immich.app |
| [krakend](stacks/apps/krakend/README.md) | API gateway (Krakend) used for routing/proxying | https://www.krakend.io |
| [monitoring](stacks/apps/monitoring/README.md) | Monitoring stack (Prometheus/Grafana/Loki/Promtail — optional components) | https://prometheus.io and https://grafana.com |
| [postgres](stacks/apps/postgres/README.md) | Postgres database service used by other stacks | https://www.postgresql.org |
| [redis](stacks/apps/redis/README.md) | Redis cache/queue used by other stacks | https://redis.io |
| [uptime-kuma](stacks/apps/uptime-kuma/README.md) | Uptime monitoring dashboard (Uptime Kuma) | https://github.com/louislam/uptime-kuma |

Notes:
- Click the stack name to open the per-stack README which documents the environment variables used by that stack.
- Keep secrets (passwords, API tokens) out of Git. Use `.env` files locally and add them to `.gitignore`.
