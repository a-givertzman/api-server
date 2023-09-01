import json
import socket

def sockerSendBytes(data: bytes) -> bytes:
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(('127.0.0.1', 8899))
    sock.send(data)
    received = sock.recv(4096)
    sock.close()
    return received

def request_dict(data_map: dict) -> dict:
    data_json = json.dumps(data_map)
    package = bytes(data_json, encoding='utf8')
    received = sockerSendBytes(package)
    return json.loads(received)