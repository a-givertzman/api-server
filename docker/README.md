# Running inside docker

## Prerequisites

Inside `./docker` directory create `.env` file with following content:

```dotenv
# Token to access private Github repositories
GITHUB_TOKEN=<PUT GITHUB TOKEN HERE>
```

## Database with api-server only

Run the following command from `./docker` directory to start the database and api-server:

```bash
mkdir ./postgres
docker compose up
```

If configuration has changed, run following commands to recreate database and api-server with updated configuration:

```bash
docker compose down -v
sudo rm -rf ./postgres
docker compose up --build --no-deps --force-recreate
```

## Database, api-server and GUI (Temporally disabled)

It is also possible to run app with GUI by replacing the commands above with:

```bash
docker compose up --scale client=1
```
or
```bash
docker compose up --scale client=1 --build --no-deps --force-recreate
```

### Prerequisites
On Linux, ensure that XServer and Xhost installed and run the following command to give docker access to graphics server:

```bash
xhost + local:docker
```

## Connecting to a psql DB session

You can connect to a psql DB session by running the following commands:

```bash
docker exec -it docker-db-1 psql -U test -d sss-computing
```
or
```bash
docker ls # check id of container with db
docker exec -it <Container id here> psql -U test -d sss-computing
```