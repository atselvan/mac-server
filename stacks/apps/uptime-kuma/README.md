# uptime-kuma

Uptime-Kuma is a self-hosted monitoring/alerting dashboard.

Environment variables

| Variable | Description |
|---|---|
| `UPTIME_KUMA_DATA_LOCATION` | Host path for Uptime-Kuma data directory |
| `TZ` | Timezone for the container (e.g. `Europe/Amsterdam`) |
| `UMASK` | Umask for file creation (e.g. `0022`) |

Notes
- The stack maps a host directory to `/app/data`. Store any credentials inside that data directory or provide them via the UI. No secret envs are required by default.
