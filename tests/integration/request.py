import json
import socket

from socket_utils import recvAll

def socketSendBytes(data: bytes) -> bytes:
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(('localhost', 8080))
    sock.send(data)
    received = recvAll(sock)
    sock.close()
    return received

def request_dict(data_map: dict) -> dict:
    data_json = json.dumps(data_map)
    package = bytes(data_json, encoding='utf8')
    received = socketSendBytes(package)
    return json.loads(received)