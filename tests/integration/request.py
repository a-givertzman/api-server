import json
import socket

from socket_utils import recvAll

def socketSendBytes(data: bytes) -> bytes:
    sock = None
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    except OSError as err:    
        print(f'socketSendBytes | Socket error: {err}')
        sock = None
    try:
        sock.connect(('0.0.0.0', 8080))
    except OSError as err:    
        print(f'socketSendBytes | Socket error: {err}')
        sock.close()
        sock = None
    if sock:
        try:
            sock.send(data)
            received = recvAll(sock)
            sock.close()
            return received
        except OSError as err:    
            print(f'socketSendBytes | Socket error: {err}')
            sock.close()
            sock = None
    return b'{}'

def request_dict(data_map: dict) -> dict:
    data_json = json.dumps(data_map)
    package = bytes(data_json, encoding='utf8')
    received = socketSendBytes(package)
    return json.loads(received)