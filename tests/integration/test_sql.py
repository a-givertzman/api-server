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
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']

def test_sql_invalid_json_cut():
    input = r'{"auth_token":"123zxy456!@#","id":"123","sql":{"databas'
    expected_json = {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing a string at line 1 column 55', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"databas'}
    data_bytes = bytes(input, encoding='utf8')
    received = request_bytes(data_bytes)
    received_json = json.loads(received)
    assert received_json['auth_token'] == expected_json['auth_token']
    assert received_json['id'] == expected_json['id']
    assert received_json['data'] == expected_json['data']
    assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
    assert received_json['query'] == expected_json['query']

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
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_map = entry['input']
            expected_json = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = request_bytes(data_bytes)
            received_json = json.loads(received)
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']

def test_sql_known_service_with_name_of_another_service(subtests):
    data_maps = [
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"py-test","sql":"select id from do_data;"}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'py-test\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"py-test","sql":"select * from do_data;"}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"executable-test","sql":"select id from do_data;"}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'executable-test\' can\'t be found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"executable-test","sql":"select * from do_data;"}}'},
        },
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = request_bytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']
