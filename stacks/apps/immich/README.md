# immich

Immich is a self-hosted photo and video manager. This stack runs the Immich server, machine-learning worker, Redis and Postgres used by Immich.

Environment variables referenced in the compose file

| Variable | Description | Example |
|---|---|---|
| `IMMICH_VERSION` | Image tag for Immich services (defaults to `release`) | `release` |
| `UPLOAD_LOCATION` | Host path where uploaded media will be stored | `/home/user/Data/immich/uploads` |
| `EXTERNAL_LOCATION` | Host path mounted read-only for external files | `/home/user/Data/immich/external` |
| `MODEL_CACHE_LOCATION` | Host path for ML model cache used by the ML service | `/home/user/Data/immich/ml-cache` |
| `REDIS_DATA_LOCATION` | Host path for Redis data | `/home/user/Data/immich/redis` |
| `DB_DATA_LOCATION` | Host path for Postgres data | `/home/user/Data/immich/pgdata` |
| `DB_USERNAME` | Postgres username used by Immich | `immich` |
| `DB_PASSWORD` | Postgres password used by Immich (secret) | `secure_password` |
| `DB_DATABASE_NAME` | Postgres database name | `immich` |

Notes
- Create a `.env` file in this folder to set these variables. Do not commit the `.env` file.
- Ports: server listens on `2283` by default as configured in the compose.
