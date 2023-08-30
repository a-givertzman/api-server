import json
from request import request_bytes

def test_common_non_utf8_encoding(subtests):
    data_maps = [
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select * from do_data;"}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'key must be a string at line 1 column 2', 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00s\x00\x00\x00q\x00\x00\x00l\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00a\x00\x00\x00s\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00a\x00\x00\x00s\x00\x00\x00e\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00s\x00\x00\x00q\x00\x00\x00l\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00s\x00\x00\x00e\x00\x00\x00l\x00\x00\x00e\x00\x00\x00c\x00\x00\x00t\x00\x00\x00 \x00\x00\x00*\x00\x00\x00 \x00\x00\x00f\x00\x00\x00r\x00\x00\x00o\x00\x00\x00m\x00\x00\x00 \x00\x00\x00d\x00\x00\x00o\x00\x00\x00_\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00;\x00\x00\x00"\x00\x00\x00}\x00\x00\x00}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"py-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'key must be a string at line 1 column 2', 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00y\x00\x00\x00t\x00\x00\x00h\x00\x00\x00o\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00s\x00\x00\x00c\x00\x00\x00r\x00\x00\x00i\x00\x00\x00p\x00\x00\x00t\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00p\x00\x00\x00y\x00\x00\x00-\x00\x00\x00t\x00\x00\x00e\x00\x00\x00s\x00\x00\x00t\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00a\x00\x00\x00r\x00\x00\x00a\x00\x00\x00m\x00\x00\x00s\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x004\x00\x00\x00,\x00\x00\x00 \x00\x00\x00"\x00\x00\x00b\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x007\x00\x00\x00}\x00\x00\x00}\x00\x00\x00}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'key must be a string at line 1 column 2', 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00e\x00\x00\x00x\x00\x00\x00e\x00\x00\x00c\x00\x00\x00u\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00l\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00n\x00\x00\x00a\x00\x00\x00m\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00e\x00\x00\x00x\x00\x00\x00e\x00\x00\x00c\x00\x00\x00u\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00l\x00\x00\x00e\x00\x00\x00-\x00\x00\x00t\x00\x00\x00e\x00\x00\x00s\x00\x00\x00t\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00a\x00\x00\x00r\x00\x00\x00a\x00\x00\x00m\x00\x00\x00s\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x004\x00\x00\x00,\x00\x00\x00 \x00\x00\x00"\x00\x00\x00b\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x007\x00\x00\x00}\x00\x00\x00}\x00\x00\x00}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_bytes = bytes(entry['input'], encoding='utf-32-le')
            received = request_bytes(data_bytes)
            assert json.loads(received) == entry['output']

def test_common_known_service_with_ref_of_another_service(subtests):
    data_maps = [
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"py-test","sql":"select * from do_data;"}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'py-test\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"py-test","sql":"select * from do_data;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"executable-test","sql":"select * from do_data;"}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'executable-test\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"executable-test","sql":"select * from do_data;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"database","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'ApiServer.build | Error: Python service with the name \'database\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"database","params":{"a": 4, "b": 7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"executable-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'ApiServer.build | Error: Python service with the name \'executable-test\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"executable-test","params":{"a": 4, "b": 7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"py-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'ApiServer.build | Error: Executable service with the name \'py-test\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"py-test","params":{"a": 4, "b": 7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"database","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'ApiServer.build | Error: Executable service with the name \'database\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"database,"params":{"a": 4, "b": 7}}}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = request_bytes(data_bytes)
            assert json.loads(received) == entry['output']

def test_common_multiservice_request(subtests):
    data_maps = [
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Unable to perform multiservice request', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Unable to perform multiservice request', 'query': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Unable to perform multiservice request', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Unable to perform multiservice request', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_bytes = bytes(entry['input'], encoding='utf8')
            received = request_bytes(data_bytes)
            assert json.loads(received) == entry['output']