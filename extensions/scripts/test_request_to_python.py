import argparse
import json
import socket
import time
import socket_utils



parser = argparse.ArgumentParser()
parser.add_argument('--count', type = int, default = 1, help='count of iterations')
args = parser.parse_args()
# print(f'args: {args}')
count = args.count
print(f'count: {count}')

obj = {
    "auth_token": "123zxy456!@#",
    "id": "123",
    # "sql": {
    #     "database": "database1",
    #     "sql": "select 1;",
    # },
    "python": {
        "script": "py-test",
        "params": {
            "a": 4,
            "b": 7,
        },
    },
    # "executable": {
    #     "name": "executable-test",
    #     "params": {
    #         "a": 4,
    #         "b": 7,
    #     },
    # }
}

if obj:
    requestJsonStr = json.dumps(obj)
    print(f'requestJsonStr: {requestJsonStr}')
    sendBytes = requestJsonStr.encode('utf-8')
    for i in range(count):
        clientSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        clientSocket.connect(('127.0.0.1', 8899))
        clientSocket.sendall(sendBytes)
        data = socket_utils.recvAll(clientSocket)
        # data = clientSocket.recv(4096)
        received = json.loads(data)
        print(f'received: {json.dumps(received, indent = 4)}')
        clientSocket.close()
        # time.sleep(100 / 1000)

# exit()
invalidJson = [
    # '"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "database", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "database", "sql": "select 1;"}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "databas',

    # '"auth_token": "123zxy456!@#", "id": "123", "python": {"script": "py-test", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "python": {"script": "py-test", "params": {"a": 4, "b": 7}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "python": {"script": "py-test", ',

    # '"auth_token": "123zxy456!@#", "id": "123", "executable": {"name": "executable-test", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "executable": {"name": "executable-test", "params": {"a": 4, "b": 7}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "executable": {"name": "executable-test", ',

    # '{"auth_tokenNNN": "123zxy456!@#", "id": "123", "sql": {"database": "database", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "idDDD": "123", "sql": {"database": "database", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql@@@": {"database": "database", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "python@@@": {"script": "py-test", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "executable@@@": {"name": "executable-test", "params": {"a": 4, "b": 7}}}',

    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "database", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database@@@": "database", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "database", "sql@@@": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "database@@@", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "database", "sql": "select@ 1;"}}',

    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "db_postgres_test", "sql": "SELECT * FROM pg_catalog.pg_tables;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "db_postgres_test", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database@@@": "db-postgres", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "db-postgres", "sql@@@": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "db-postgres@@@", "sql": "select 1;"}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "sql": {"database": "db-postgres", "sql": "select@ 1;"}}',

    # '{"auth_token": "123zxy456!@#", "id": "123", "python": {"script": "py-test", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "python": {"script@@@": "py-test", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "python": {"script": "py-test@@@", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "python": {"script": "py-test", "params@@@": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "python": {"script": "py-test", "params": "invalid params"}}',

    # '{"auth_token": "123zxy456!@#", "id": "123", "executable": {"name": "executable-test", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "executable": {"name@@@": "executable-test", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "executable": {"name": "executable-test@@@", "params": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "executable": {"name": "executable-test", "params@@@": {"a": 4, "b": 7}}}',
    # '{"auth_token": "123zxy456!@#", "id": "123", "executable": {"name": "executable-test", "params": "invalid params"}}',
]


if invalidJson:
    print(f'\n\n\t INVALID QUERIES')
    for requestJsonStr in invalidJson:
        print(f'\nrequestJsonStr: {requestJsonStr}')
        clientSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        clientSocket.connect(('127.0.0.1', 8899))
        sendBytes = requestJsonStr.encode('utf-8')
        clientSocket.sendall(sendBytes)
        data = clientSocket.recv(4096)
        try:
            received = json.loads(data)
            print(f'received: {json.dumps(received, indent = 4)}')
        except Exception as err:
            print(f'received: {received}')
        clientSocket.close()

