# krakend

Krakend API gateway stack. The compose mounts a `config/krakend.json` file for gateway configuration.

Environment variables

- This stack does not declare runtime environment variables in the compose file. Configure routing and backends in `config/krakend.json` as needed.

Notes
- If you want to pass secrets or environment overrides to Krakend, you can add an `env_file` entry or `environment:` block in the compose.
