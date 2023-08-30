import json
from request import request_bytes

def test_executable_invalid_json_without_brackets(subtests):
    data_maps = [
        {
            'input': r'"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing an object at line 1 column 105', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}'},
        },
        {
            'input': r'"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_bytes = bytes(entry['input'], encoding='utf8')
            received = request_bytes(data_bytes)
            assert json.loads(received) == entry['output']

def test_executable_invalid_json_cut():
    input = r'{"auth_token":"123zxy456!@#","id":"123","executable":{"nam'
    output = {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing a string at line 1 column 58', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"nam'}
    data_bytes = bytes(input, encoding='utf8')
    received = request_bytes(data_bytes)
    assert json.loads(received) == output

def test_executable_invalid_key(subtests):
    data_maps = [
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a":4,"b@@@":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Executable param \'b\' not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4,"b@@@":7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a@@@":4,"b":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Executable param \'a\' not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a@@@":4,"b":7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params@@@":{"a":4,"b":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQueryExecutable.fromJson] field \'params\' of type Map not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params@@@":{"a":4,"b":7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name@@@":"executable-test","params":{"a":4,"b":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQueryExecutable.fromJson] field \'name\' of type String not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name@@@":"executable-test","params":{"a":4,"b":7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","executable@@@":{"name":"executable-test","params":{"a":4,"b":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Unknown type of API query', 'query': r'{"auth_token":"123zxy456!@#","id":"123","executable@@@":{"name":"executable-test","params":{"a":4,"b":7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","executable":{"name":"executable-test","params":{"a": 4,"b":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': '[ApiQuery.parseJsonString] field \'id\' of type String not found', 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","executable":{"name":"executable-test","params":{"a":4,"b":7}}}'},
        },
        {
            'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a":4,"b":7}}}',
            'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': '[ApiQuery.parseJsonString] field \'auth_token\' of type String not found', 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a":4,"b":7}}}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_map = entry['input']
            output = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = request_bytes(data_bytes)
            assert json.loads(received) == output