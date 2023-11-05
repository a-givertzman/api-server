import json
import unittest
import conftest
from create_postgres_database import createDatabase
from request import socketSendBytes

class TestCommon(unittest.TestCase):
    def test_common_non_utf8_encoding(self):
        data_maps = [
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select * from do_data;"}}',
                'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': {'message': 'key must be a string at line 1 column 2'}, 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00s\x00\x00\x00q\x00\x00\x00l\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00a\x00\x00\x00s\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00a\x00\x00\x00s\x00\x00\x00e\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00s\x00\x00\x00q\x00\x00\x00l\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00s\x00\x00\x00e\x00\x00\x00l\x00\x00\x00e\x00\x00\x00c\x00\x00\x00t\x00\x00\x00 \x00\x00\x00*\x00\x00\x00 \x00\x00\x00f\x00\x00\x00r\x00\x00\x00o\x00\x00\x00m\x00\x00\x00 \x00\x00\x00d\x00\x00\x00o\x00\x00\x00_\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00;\x00\x00\x00"\x00\x00\x00}\x00\x00\x00}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"py-test","params":{"a": 4, "b": 7}}}',
                'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': {'message': 'key must be a string at line 1 column 2'}, 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00y\x00\x00\x00t\x00\x00\x00h\x00\x00\x00o\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00s\x00\x00\x00c\x00\x00\x00r\x00\x00\x00i\x00\x00\x00p\x00\x00\x00t\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00p\x00\x00\x00y\x00\x00\x00-\x00\x00\x00t\x00\x00\x00e\x00\x00\x00s\x00\x00\x00t\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00a\x00\x00\x00r\x00\x00\x00a\x00\x00\x00m\x00\x00\x00s\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x004\x00\x00\x00,\x00\x00\x00 \x00\x00\x00"\x00\x00\x00b\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x007\x00\x00\x00}\x00\x00\x00}\x00\x00\x00}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
                'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': {'message': 'key must be a string at line 1 column 2'}, 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00e\x00\x00\x00x\x00\x00\x00e\x00\x00\x00c\x00\x00\x00u\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00l\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00n\x00\x00\x00a\x00\x00\x00m\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00e\x00\x00\x00x\x00\x00\x00e\x00\x00\x00c\x00\x00\x00u\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00l\x00\x00\x00e\x00\x00\x00-\x00\x00\x00t\x00\x00\x00e\x00\x00\x00s\x00\x00\x00t\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00a\x00\x00\x00r\x00\x00\x00a\x00\x00\x00m\x00\x00\x00s\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x004\x00\x00\x00,\x00\x00\x00 \x00\x00\x00"\x00\x00\x00b\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x007\x00\x00\x00}\x00\x00\x00}\x00\x00\x00}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-32-le')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (received_json['error']['message'] != '') == (expected_json['error']['message'] != '')
            # self.assertEqual( received_json['error'], expected_json['error'], msg = f"\nexpected error: {expected_json['error']} \nreceived error: {received_json['error']}" )
            self.assertEqual( received_json['query'], expected_json['query'], msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

    def test_common_multiservice_request(self):
        data_maps = [
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "01", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"02","debug":true,"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "02", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"02","debug":true,"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"03","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "03", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"03","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "04", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            self.assertEqual( received_json['data'], expected_json['data'], msg = f"\nexpected data: {expected_json['data']} \nreceived data: {received_json['data']}" )
            self.assertEqual( received_json['error']['message'].startswith(expected_json['error']['message']), True, msg = f"\nexpected query: {expected_json['error']['message']} \nreceived query: {received_json['error']['message']}")
            # self.assertEqual( received_json['error'], expected_json['error'], msg = f"\nexpected error: {expected_json['error']} \nreceived error: {received_json['error']}" )
            self.assertEqual( received_json['query'], expected_json['query'], msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

    def test_common_invalid_key(self):
        data_maps = [
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"executable@@@":{"name":"executable-test","params":{"a":4,"b":7}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': {'message': 'Unknown type of API query'}, 'query': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"executable@@@":{"name":"executable-test","params":{"a":4,"b":7}}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'id\' of type String not found'}, 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}'},
            },
            {
                'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}',
                'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'auth_token\' of type String not found'}, 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"python@@@":{"script":"py-test","params":{"a":4,"b":7}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': {'message': 'Unknown type of API query'}, 'query': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"python@@@":{"script":"py-test","params":{"a":4,"b":7}}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': {'message': 'ApiQuery -  field \'id\' of type String not found'}, 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}'},
            },
            {
                'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}',
                'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'auth_token\' of type String not found'}, 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"sql@@@":{"database":"db-postgres","sql":"select 1;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': {'message': 'Unknown type of API query'}, 'query': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"sql@@@":{"database":"db-postgres","sql":"select 1;"}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'id\' not found'}, 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}'},
            },
            {
                'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}',
                'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'auth_token\' not found'}, 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_map = entry['input']
            expected_json = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            self.assertEqual(received_json['error']['message'] != '', expected_json['error']['message'] != '', msg = f"\nexpected query: {expected_json['error']['message']} \nreceived query: {received_json['error']['message']}")
            self.assertEqual( received_json['query'], expected_json['query'], msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

if __name__ == '__main__':
    createDatabase()
    conftest.kill_all_servers()
    conftest.run_api_server()
    unittest.main()