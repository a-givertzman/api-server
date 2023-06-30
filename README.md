# API Server

Just a simple api server 

- runs puthon script:
    - [ ] Python script received some json data via stdin
    - [ ] Python script handle some algorithms
    - [ ] Python script van access to the databases data
    - [ ] Python script returns some json data
- wrapping databases:
    - [x] SQLite
    - [x] Python script
    - [ ] MySQL
    - [ ] PostgreSQL

## Config

- for configure api server use file config.yaml
- the cobfig file mast be located in the root folder with executable

```
address: '127.0.0.1:8899'       # self ip:port address where api service will be alvalible
databases:                      # list currently avalible databases
    - database:                 # internal database service name
        name: 'database'        # database instance name
        type: sqlite            # the type of the dattabase
        path: 'database.sqlite' # path / ip:pot to the database file / host 
        user: root              # database access user
        pass: root              # database access password
    - new-database:
        name: 'new-database'
        type: mysql
        path: '127.0.0.1:3306'
        user: root
        pass: root
```

## Message format

- Request

```json
{
    "auth_token": "123zxy456!@#",
    "id": "123",
    "sql": {
        "database": "database name",
        "sql": "Some valid sql query"
    }
}
```

- Reply

```json
{
    "auth_token": "123zxy456!@#",
    "id": "123",
    "sql": {
        "database": "database name",
        "sql": "Some valid sql query",
    },
    "data": [

    ],
    "errors": [

    ]
}
```

## Build for windows

### cross-compile for windows

```bash
cargo build --target x86_64-pc-windows-gnu
```