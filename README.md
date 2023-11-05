# API Server

Just a simple api server

- wrapping databases:
  - [x] SQLite
  - [ ] MySQL
  - [x] PostgreSQL
- runs puthon script:
  - [x] Python script received some json data via stdin
  - [x] Python script handle some algorithms
  - [x] Python script can access to the databases data via self API or directly
  - [x] Python script returns some json data
- runs binaty executable:
  - [x] Executable received some json data via stdin
  - [x] Executable handle some algorithms
  - [x] Executable can access to the databases data via self API or directly
  - [x] Executable returns some json data

## Config

- for configure api server use file config.yaml
- the cobfig file mast be located in the root folder with executable

```yaml
address: '127.0.0.1:8899'                   # self ip:port address where API service will be alvalible
services:                                   # list of currently avalible API services
    - database-sqlite:              # internal unique API service name
        name: 'database'            # database instance name
        type: sqlite                # the type of the dattabase (sqlite/postgres/mysql)
        path: 'database.sqlite'     # path / ip:pot to the database file / host 
        user: root                  # database access user
        pass: root                  # database access password
    - database-postgres:
        name: 'db_postgres_test'    # database instance name
        type: postgres              # the type of the dattabase (sqlite/postgres/mysql)
        path: '127.0.0.1:5432'      #'postgresql://postgres@localhost:5433' 
        user: db_postgres_test
        pass: db_postgres_test
        # replaceNullWithDefault:   # uncomment to replace all null values received from the database with default walue
    - py-test-script:                       # internal unique API service name
        name: 'py-test'             # the name of the python script (must be specified in the API request, field 'path')
        type: python                # the type of the service
        path: 'extensions/scripts/script_tamplate.py'   # the path to the python script file
        user: root                  # can be used to restrict assecc to the python script
        pass: root                  # can be used to restrict assecc to the python script
    - executable-test-app:                  # internal unique API service name
        name: 'executable-test'     # the name of the exequtable (must be specified in the API request, field 'path')
        type: bin                   # the type of the service
        path: 'extensions/bin/simple-executable'    # the path to the extension exequtable file
        user: root                  # can be used to restrict assecc to the python script
        pass: root                  # can be used to restrict assecc to the python script
```

## Message format

- Request SQL

```json
{
    "auth_token": "123zxy456!@#",
    "id": "123",
    "sql": {
        "database": "database name",
        "sql": "Some valid sql query"
    },
    "keep-alive": true,
    "debug": false
}
```

- Request Python

```json
{
    "auth_token": "123zxy456!@#",
    "id": "123",
    "python": {
        "script": "python service name",
        "params": "Some valid params for python script (json)"
    },
    "keep-alive": true,
    "debug": false
}
```

- Request Executable

```json
{
    "auth_token": "123zxy456!@#",
    "id": "123",
    "executable": {
        "name": "executable service name",
        "params": "Some valid params for executable (json)"
    },
    "keep-alive": true,
    "debug": false
}
```

- Reply

```json
{
    "auth_token": "123zxy456!@#",
    "id": "123",
    "query": "{\"database\":\"database name\",\"sql\":\"Some valid sql query\"}",       - if "debug" is true in the request
    "data": [
        {"id": 1, "name": "Markus", "email": "markus@gmail.com", "role": "customer", "created": "2023-10-29T22:18:23.977900"}, 
        {"id": 2, "name": "Daniel", "email": "daniel@gmail.com", "role": "customer", "created": "2023-10-29T22:18:23.977900"}
    ],
    "error": {
        "message": "Some error info",
        "details": "Detailed information about errors"                                  - if "debug" is true in the request
    }
}
```

## Python script format

- can be called by the API request
- json data can be passed as input parameters to the python script
- output of the script will be returned to the frontend in the json field "data"
- if script will be crushed with error, that error wil be returned to the frontend in the json field "errors"

```python
import sys
import json

def main():
    # reading input params from stdin
    lines = sys.stdin.read()
    # parsing input params from the string
    parsed = json.loads(lines)

    # your code...
    # you can do some calculations
    # you cam use some data stored in the databases

    # build map to be returned to the frontend
    result = {
        "aa": parsed['a'] * 2,
        "bb": parsed['b'] * 2,
    }
    # returning data to the frontend
    print(
        json.dumps(result)
    )
if __name__ == '__main__':
    main()
```

## Build for windows

### cross-compile for windows

```bash
cargo build --target x86_64-pc-windows-gnu
```
