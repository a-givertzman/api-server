import os
import subprocess
from subprocess import Popen, DEVNULL
import time
import pytest

def run_api_server():
    Popen(f'cd {os.path.dirname(os.path.abspath(__file__))}/../.. && cargo run', shell=True, stdout=DEVNULL, stderr=DEVNULL)
    time.sleep(5)

def kill_all_servers():
    for pid_str in os.popen('pgrep api-server').read().strip().split('\n'):
        if pid_str != '':
            pid = int(pid_str)
            subprocess.run(['kill', '-9', f'{pid}'])

@pytest.fixture(autouse=True, scope="session")
def start_server():
    kill_all_servers()
    run_api_server()
    yield
    kill_all_servers()