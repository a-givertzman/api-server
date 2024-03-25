# SSS-computing-db

# Running

Execute following command from project root to configure database and start api-server.

```bash
mkdir ./postgres
docker compose up
```

If configuration has changed, run following commands from project root to recreate database and api-server with updated configuration.

```bash
docker compose down -v
sudo rm -rf ./postgres
docker compose up --build --no-deps --force-recreate
```

# Connecting

- host - `localhost`
- port - `8080`
- db_name - `sss-computing`