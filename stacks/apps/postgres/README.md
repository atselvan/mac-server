# postgres

Postgres database used by other stacks. The compose file reads variables from a `.env` file.

Common variables to place in `stacks/apps/postgres/.env`:

| Variable | Description |
|---|---|
| `POSTGRES_USER` | Database user for Postgres |
| `POSTGRES_PASSWORD` | Database password (secret) |
| `POSTGRES_DB` | Default database name |

Notes
- Create `.env` in this folder and do not commit it.
- Volumes are configured to persist DB data outside the container.
