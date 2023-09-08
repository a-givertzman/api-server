import argparse
import json
import random
import socket
import time
import re
import threading
from ds_socket import DsSocket
from request import sockerSendBytes
import socket_utils
import create_postgres_database



if True:
    create_postgres_database.createDatabase()

parser = argparse.ArgumentParser()
parser.add_argument('--count', type = int, default = 1, help='count of iterations')
args = parser.parse_args()
# print(f'args: {args}')
count = args.count
print(f'count: {count}')

obj = {
    # "auth_token": "123zxy456!@#",
    # "id": "123",
    # "sql": {
    #     "database": "database1",
    #     "sql": "select 1;",
    # },
    # "python": {
    #     "script": "py-test",
    #     "params": {
    #         "a": 4,
    #         "b": 7,
    #     },
    # },
    # "executable": {
    #     "name": "executable-test",
    #     "params": {
    #         "a": 4,
    #         "b": 7,
    #     },
    # }
    # "auth_token": "123zxy456!@#",
    # "id": "123",
    # "sql": {
    #     "database": "db_postgres_test",
    #     # "sql": "insert into test (title, description) values ('title 1', 'descroption2');",
    #     # "sql": "SELECT * FROM pg_catalog.pg_tables;",
    #     "sql": "SELECT * FROM test;",
    # },
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
    '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select id, type, name from tags;"}}',
    '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select * from event_test where pid = 11 and value = \'0\';"}}',
    '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select * from event_test where pid = 127 and value = \'250\';"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select * from event_test where pid = 127 and value = \'251\';"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select * from event_test where pid = 127 and value = \'252\';"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select * from event_test where pid = 127 and value = \'253\';"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select * from event_test where pid = 127 and value = \'254\';"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select * from event_test where pid = 127 and value = \'255\';"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select id, type, name from tags;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select id, type, name from tags;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select id, type, name from tags;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select id, type, name from tags;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
    # '{"auth_token": "crane_data_server", "id": "crane_data_server", "keep-alive": "true", "sql": {"database": "crane_data_server", "sql": "select 1;"}}',
]


# if invalidJson:
#     print(f'\n\n\t INVALID QUERIES')
#     for requestJsonStr in invalidJson:
#         print(f'\nrequestJsonStr: {requestJsonStr}')
#         sendBytes = requestJsonStr.encode('utf-8')
#         data = sockerSendBytes(sendBytes)
#         try:
#             received = json.loads(data)
#             print(f'received: {json.dumps(received, indent = 4)}')
#         except Exception as err:
#             print(f'received: {received}')


def target():
    threadName = threading.current_thread().name
    if invalidJson:
        print(f'\n\n\t{threadName} | INVALID QUERIES')
        count = 3
        for _ in range(count):
            # sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            # sock.connect(('127.0.0.1', 8080))
            sock = DsSocket(
                address = ('127.0.0.1', 8080),
                name = threadName,
                auto = True
            )
            for requestJsonStr in invalidJson:
                print(f'\n{threadName} | requestJsonStr: {requestJsonStr}')
                sent = json.loads(requestJsonStr)
                sendBytes = requestJsonStr.encode('utf-8')
                sock.send(sendBytes)
                milles = random.randint(5, 100)
                time.sleep(milles / 1000)
                received = sock.read()
                if received.hasError:
                    data = json.loads(received.error)
                    raise Exception(f'{threadName} | ERROR in received: {json.dumps(data, indent = 4)}')
                    # print(f'{threadName} | ERROR in received: {json.dumps(data, indent = 4)}')
                else:
                    data = json.loads(received.data)
                    print(f'{threadName} | received: {json.dumps(data, indent = 4)}')
                    sentSql: str = sent['sql']['sql']
                    print(f"{threadName} | sentSql: {sentSql}")
                    if 'select * from event_test where pid =' in sentSql:
                        sentValue = re.search(r"value\s*=\s*'(\d+)'\s*;", sentSql).group(1)
                        sentValue = int(str(sentValue))
                        print(f"{threadName} | match: {sentValue}")
                        receivedValue = data['data'][0]['value']
                        receivedValue = int(str(receivedValue))
                        print(f"{threadName} | sentValue: {sentValue}   receivedValue: {receivedValue}")
                        assert receivedValue == sentValue
            sock.close()

threads = []
for _ in range(10):
    t = threading.Thread(target=target)
    t.start()
    threads.append(t)

for t in threads:
    t.join()
