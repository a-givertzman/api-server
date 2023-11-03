import os
import socket
from subprocess import Popen, DEVNULL, run
import time
# import pytest

def run_api_server():
    addr = os.environ.get('API_SERVER_ADDR', '127.0.0.1')
    port = int(os.environ.get('API_SERVER_PORT', 8080))
    if pingApiServer(addr, port):
        kill_all_servers()
    Popen(
        f'cd {os.path.dirname(os.path.abspath(__file__))}/../../.. && cargo run --release', 
        shell=True, 
        # stdout=DEVNULL, stderr=DEVNULL,
    )
    while 1:
        if pingApiServer(addr, port):
            break
        time.sleep(1.0)

def kill_all_servers():
    for pid_str in os.popen('pgrep api-server').read().strip().split('\n'):
        if pid_str != '':
            pid = int(pid_str)
            run(['kill', '-9', f'{pid}'])

def api_server():
    kill_all_servers()
    run_api_server()
    yield
    kill_all_servers()

def pingApiServer(addr, port):
    sock = None
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    except OSError as err:    
        print(f'socketSendBytes | Socket error: {err}')
        sock = None
    try:
        sock.connect((addr, port))
        sock.close()
        return True
    except OSError as err:    
        print(f'socketSendBytes | Socket error: {err}')
        sock.close()
        sock = None
    return False