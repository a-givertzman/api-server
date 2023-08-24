import argparse
import json
import socket
import time


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
    #     "database": "py-test",
    #     "sql": "select 1;",
    # },
    # "python": {
    #     "script": "py-test",
    #     "params": {
    #         "a": 4,
    #         "b": 7,
    #     },
    # },
    "executable": {
        "name": "executable-test",
        "params": {
            "a": 4,
            "b": 7,
        },
    }
}
jsonStr = json.dumps(obj)
sendBytes = jsonStr.encode('utf-8')
for i in range(count):
    clientSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    clientSocket.connect(('127.0.0.1', 8899))
    clientSocket.sendall(sendBytes)
    data = clientSocket.recv(4096)
    received = json.loads(data)
    print(f'received: {json.dumps(received, indent = 4)}')
    clientSocket.close()
    # time.sleep(100 / 1000)