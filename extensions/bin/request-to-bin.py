import json
import socket


clientSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
clientSocket.connect(('127.0.0.1', 8899))

obj = {
    "auth_token": "123zxy456!@#",
    "id": "123",
    "executable": {
        "name": "executable-test",
        "params": {
            "a": 4,
            "b": 7,
        },
    }
}

jsonStr = json.dumps(obj)

clientSocket.sendall(jsonStr.encode('utf-8'))

data = clientSocket.recv(4096)

received = json.loads(data)

print(f'received: {received}')