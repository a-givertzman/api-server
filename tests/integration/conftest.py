import os
import socket
from subprocess import Popen, DEVNULL, run
import time
# import pytest

def run_api_server():
    Popen(
        f'cd {os.path.dirname(os.path.abspath(__file__))}/../.. && cargo run --release', 
        shell=True, 
        # stdout=DEVNULL, stderr=DEVNULL,
    )
    addr = os.environ['API_SERVER_ADDR']
    port = int(os.environ['API_SERVER_PORT'])
    while 1:
        sock = None
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        except OSError as err:    
            print(f'socketSendBytes | Socket error: {err}')
            sock = None
        try:
            sock.connect((addr, port))
            sock.close()
            break
        except OSError as err:    
            print(f'socketSendBytes | Socket error: {err}')
            sock.close()
            sock = None
        time.sleep(1.0)

def kill_all_servers():
    for pid_str in os.popen('pgrep api-server').read().strip().split('\n'):
        if pid_str != '':
            pid = int(pid_str)
            run(['kill', '-9', f'{pid}'])

# @pytest.fixture(autouse=True, scope="session")
def api_server():
    kill_all_servers()
    run_api_server()
    yield
    kill_all_servers()