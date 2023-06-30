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
address: '127.0.0.1:8899'       # self ip:port address where API services will be alvalible
databases:                      # list currently avalible API services
    - sqlite-database:              # internal unique API service name
        name: 'database'                # database instance name
        type: sqlite                    # the type of the service (sqlite / mysql/ postgresql / python)
        path: 'database.sqlite'         # path / ip:pot to the database file / host 
        user: root                      # database access user
        pass: root                      # database access password
    - mysql-database:
        name: 'new-database'
        type: mysql
        path: '127.0.0.1:3306'
        user: root
        pass: root
    - py-test-script:               # internal unique API service name
        name: 'py-test'                 # the name of the script handler (must be specified in the API request, field 'database')
        type: python                    # the type of the service
        path: 'scripts/read_std_in.py'  # the path to the python script file
        user: root                      # can be used to restrict assecc to the python script
        pass: root                      # can be used to restrict assecc to the python script
```

## Message format

- Request Python

```json
{
    "auth_token": "123zxy456!@#",
    "id": "123",
    "python": {
        "script": "python script service name",
        "params": "Some valid params for python script"
    }
}
```

- Request SQL

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

## Python script format
- can be called by the API request
- json data can be passed as input parameters to the python script
- output of the script will be returned to the frontend in the json field "data"
- if script will be crushed with error, that error wil be returned to the frontend in the json field "errors"

```
import sys
import json

for line in sys.stdin:
    if 'Exit' == line.rstrip():
        break
    parsed = json.loads(line)
    print(f'sys.stdin line: {line}')
    print(f'parsed json line: {parsed}')
print("Done")
```

## Build for windows

### cross-compile for windows

```bash
cargo build --target x86_64-pc-windows-gnu
```