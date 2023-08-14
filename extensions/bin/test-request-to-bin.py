import json
import socket
import time


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
sendBytes = jsonStr.encode('utf-8')
for i in range(1000):
    clientSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    clientSocket.connect(('127.0.0.1', 8899))
    clientSocket.sendall(sendBytes)
    data = clientSocket.recv(4096)
    received = json.loads(data)
    print(f'received: {received}')
    clientSocket.close()
    # time.sleep(100 / 1000)