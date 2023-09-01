import json
from request import request_bytes, request_dict

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
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']

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
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']

def test_common_invalid_key(subtests):
    data_maps = [
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
        {
            'input': r'{"auth_token":"123zxy456!@#","id":"123","python@@@":{"script":"py-test","params":{"a":4,"b":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Unknown type of API query', 'query': r'{"auth_token":"123zxy456!@#","id":"123","python@@@":{"script":"py-test","params":{"a":4,"b":7}}}'},
        },
        {
            'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","python":{"script":"py-test","params":{"a": 4,"b":7}}}',
            'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': '[ApiQuery.parseJsonString] field \'id\' of type String not found', 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","python":{"script":"py-test","params":{"a":4,"b":7}}}'},
        },
        {
            'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","python":{"script":"py-test","params":{"a":4,"b":7}}}',
            'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': '[ApiQuery.parseJsonString] field \'auth_token\' of type String not found', 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","python":{"script":"py-test","params":{"a":4,"b":7}}}'},
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
            expected_json = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = request_bytes(data_bytes)
            received_json = json.loads(received)
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']

def test_common_multirequest(subtests):
    data_maps = [
        {
            'input': {
                "auth_token": "123zxy456!@#", 
                "id": "123", 
                "multi": {
                    "0": {
                        "sql": {
                            "database": "database",
                            "sql": "SELECT COUNT(*) FROM do_data;"
                        }
                    },
                    "1": {
                        "python": {
                            "script": "py-test",
                            "params": {
                                "a": 4,
                                "b": 7,
                            }
                        }
                    },
                    "2": {
                        "executable": {
                            "name": "executable-test",
                            "params": {
                                "a": 4,
                                "b": 7,
                            }
                        }
                    }
                }
            },
            'output': {
                "auth_token": "123zxy456!@#", 
                "id": "123", 
                "multi": {
                    "0": {
                        "query": r'{"database":"database","sql":"SELECT COUNT(*) FROM do_data;"}',
                        "data": [{'COUNT(*)': 16}],
                        "error": "",
                    },
                    "1": {
                        "query": r'{"script":"py-test","params":{"a":4,"b":7}}',
                        "data": [{'aa': 8, 'bb': 14}],
                        "error": "",
                    },
                    "2": {
                        "query": r'{"name":"executable-test","params":{"a":4,"b":7}}',
                        "data": [{'c': 0.5714285714285714, 'a': 4, 'b': 7}],
                        "error": "",
                    }
                }
            }
        }
    ]
    for i, entry in enumerate(data_maps):
        with subtests.test(msg=f'item {i}'):
            data_map = entry['input']
            expected_json = entry['output']
            received_json = request_dict(data_map)
            print(received_json)
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            received_json_multi = received_json['multi']
            expected_json_multi = expected_json['multi']
            assert received_json_multi['query']
            for key, expected_item in expected_json_multi.items():
                assert received_json_multi[key]['query'] == expected_item['query']
                assert received_json_multi[key]['data'] == expected_item['data']
                assert (len(received_json_multi[key]['error']) > 0) == (len(expected_item['error']) > 0)

