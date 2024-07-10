# Running inside docker

## Database with api-server only

Run the following command to get the database and api-server up and running:

```bash
mkdir ./postgres
docker compose up --scale client=0
```

If configuration has changed, run following commands to recreate database and api-server with updated configuration:

```bash
docker compose down -v
sudo rm -rf ./postgres
docker compose up --scale client=0 --build --no-deps --force-recreate
```

## Database, api-server and GUI

It is also possible to run app with GUI by replacing the commands above with:

```bash
docker compose up
```
or
```bash
docker compose up --build --no-deps --force-recreate
```

### Prerequisites
On Linux, ensure that XServer and Xhost installed and run the following command to give docker access to graphics server:

```bash
xhost + local:docker
```
