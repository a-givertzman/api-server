import json
from request import request_bytes

def test_sql_invalid_json_without_brackets(subtests):
    data_maps = [
        {
            'input': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select 1;"}}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select 1;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select 1;"}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing an object at line 1 column 87', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select 1;"}'},
        },
        {
            'input': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select 1;"}',
            'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select 1;"}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_bytes = bytes(entry['input'], encoding='utf8')
            received = request_bytes(data_bytes)
            assert json.loads(received) == entry['output']

def test_sql_invalid_json_cut():
    input = r'{"auth_token":"123zxy456!@#","id":"123","sql":{"databas'
    output = {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing a string at line 1 column 55', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"databas'}
    data_bytes = bytes(input, encoding='utf8')
    received = request_bytes(data_bytes)
    assert json.loads(received) == output

def test_sql_invalid_key(subtests):
    data_maps = [
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db-postgres", "sql@@@": "select 1;"}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQuerySql.fromJson] field \'sql\' of type String not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db-postgres","sql@@@":"select 1;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database@@@":"db-postgres","sql":"select 1;"}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQuerySql.fromJson] field \'database\' of type String not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database@@@":"db-postgres","sql":"select 1;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql@@@":{"database":"db-postgres","sql":"select 1;"}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Unknown type of API query', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql@@@":{"database":"db-postgres","sql":"select 1;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","sql":{"database":"db-postgres","sql":"select 1;"}}',
            'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': '[ApiQuery.parseJsonString] field \'id\' not found', 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","sql":{"database":"db-postgres","sql":"select 1;"}}'},
        },
        {
            'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","sql":{"database":"db-postgres","sql":"select 1;"}}',
            'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': '[ApiQuery.parseJsonString] field \'auth_token\' not found', 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","sql":{"database":"db-postgres","sql":"select 1;"}}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_map = entry['input']
            output = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = request_bytes(data_bytes)
            assert json.loads(received) == output