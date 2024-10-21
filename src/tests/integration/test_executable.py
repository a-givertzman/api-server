import json
import unittest
import conftest
from request import socketSendBytes

class TestExecutable(unittest.TestCase):

    def test_executable_invalid_json_without_brackets(self):
        data_maps = [
            {
                'input': r'"authToken":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
                'output': {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"authToken":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
            },
            {
                'input': r'"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
                'output': {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}',
                'output': {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing an object at line 1 column 105', 'query': r'{"authToken":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}'},
            },
            {
                'input': r'"authToken":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}',
                'output': {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"authToken":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['authToken'] == expected_json['authToken']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            self.assertEqual( received_json['query'], expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

    def test_executable_invalid_json_cut(self):
        input = r'{"authToken":"123zxy456!@#","id":"123","executable":{"nam'
        expected_json = {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing a string at line 1 column 58', 'query': r'{"authToken":"123zxy456!@#","id":"123","executable":{"nam'}
        data_bytes = bytes(input, encoding='utf8')
        received = socketSendBytes(data_bytes)
        received_json = json.loads(received)
        assert received_json['authToken'] == expected_json['authToken']
        assert received_json['id'] == expected_json['id']
        assert received_json['data'] == expected_json['data']
        assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
        self.assertEqual( received_json['query'], expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

    def test_executable_invalid_key(self):
        data_maps = [
            {
                'input': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b@@@":7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Executable param \'b\' not found', 'query': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b@@@":7}}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a@@@":4,"b":7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': [], 'error': 'Executable param \'a\' not found', 'query': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a@@@":4,"b":7}}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params@@@":{"a":4,"b":7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQueryExecutable.fromJson] field \'params\' of type Map not found', 'query': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params@@@":{"a":4,"b":7}}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name@@@":"executable-test","params":{"a":4,"b":7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQueryExecutable.fromJson] field \'name\' of type String not found', 'query': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"executable":{"name@@@":"executable-test","params":{"a":4,"b":7}}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_map = entry['input']
            expected_json = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            assert received_json['authToken'] == expected_json['authToken']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            received_json_query = json.loads(received_json['query'])
            expected_json_query = json.loads(expected_json['query'])
            self.assertEqual( received_json_query, expected_json_query, msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

            # self.assertEqual( received_json['query'], expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

    def test_executable_known_service_with_name_of_another_service(self):
        data_maps = [
            {
                'input': r'{"authToken":"123zxy456!@#","id":"001","executable":{"name":"py-test","params":{"a": 4, "b": 7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "001", 'data': [], 'error': 'ApiServer.build | Error: Executable service with the name \'py-test\' can\'t be found', 'query': r'{}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"002","debug":true,"executable":{"name":"py-test","params":{"a": 4, "b": 7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "002", 'data': [], 'error': 'ApiServer.build | Error: Executable service with the name \'py-test\' can\'t be found', 'query': r'{"authToken":"123zxy456!@#","id":"002","debug":true,"executable":{"name":"py-test","params":{"a": 4, "b": 7}}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"003","executable":{"name":"database","params":{"a": 4, "b": 7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "003", 'data': [], 'error': 'ApiServer.build | Error: Executable service with the name \'database\' can\'t be found', 'query': r''},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"004","debug":true,"executable":{"name":"database","params":{"a": 4, "b": 7}}}',
                'output': {"authToken": "123zxy456!@#", "id": "004", 'data': [], 'error': 'ApiServer.build | Error: Executable service with the name \'database\' can\'t be found', 'query': r'{"authToken":"123zxy456!@#","id":"004","debug":true,"executable":{"name":"database","params":{"a": 4, "b": 7}}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['authToken'] == expected_json['authToken']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            received_json_query = json.loads(received_json['query'] if received_json['query'] else '{}')
            expected_json_query = json.loads(expected_json['query'] if expected_json['query'] else '{}')
            self.assertEqual( received_json_query, expected_json_query, msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )
            # self.assertEqual( received_json['query'], expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )

if __name__ == '__main__':
    conftest.kill_all_servers()
    conftest.run_api_server()
    unittest.main()