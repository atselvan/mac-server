# redis

Redis stack used by other services (e.g. Immich). The compose file uses an `.env` for secrets.

Variables

| Variable | Description |
|---|---|
| `REDIS_PASSWORD` | Password for Redis `requirepass` (secret) |

Notes
- The compose also maps a host data directory to persist Redis data. Keep `REDIS_PASSWORD` out of Git and store in a local `.env`.
