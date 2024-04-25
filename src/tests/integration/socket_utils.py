import socket
from typing import Optional

def recvAll(sock: socket.socket | None):
    data = bytearray()
    if (sock):
        buff_size = 4096
        __connected = True
        __cancel = False
        while __connected and (not __cancel):
            part = sock.recv(buff_size)
            data.extend(part)
            if len(part) < buff_size:
                break
    return data
