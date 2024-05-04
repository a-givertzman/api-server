import json
import unittest
import conftest
from create_postgres_database import createDatabase, longString
from request import socketSendBytes

class TestSqlPostgres(unittest.TestCase):

    def test_invalid_json_without_brackets(self):
        data_maps = [
            {
                'input': r'"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"select 1;"}}',
                'output': {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"select 1;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"select 1;"}',
                'output': {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing an object at line 1 column 87', 'query': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"select 1;"}'},
            },
            {
                'input': r'"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"select 1;"}',
                'output': {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"select 1;"}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            print(f'invalid_json_without_brackets | request: {entry["input"]}')
            data_bytes = bytes(entry['input'], encoding='utf8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['authToken'] == expected_json['authToken']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}"

    def test_invalid_json_cut(self):
        inputs = [
            r'{"authToken":"123zxy456!@#","id":"123","sql":{"databas',
            r'{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"databas',
        ]
        expected_jsons = [
            {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing a string at line 1 column 55', 'query': r'{"authToken":"123zxy456!@#","id":"123","sql":{"databas'},
            {"authToken": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing a string at line 1 column 55', 'query': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"databas'},
        ]
        for index, input in enumerate(inputs):
            expected_json = expected_jsons[index]
            data_bytes = bytes(input, encoding='utf8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            assert received_json['authToken'] == expected_json['authToken']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}"

    def test_invalid_json_key(self):
        print(f'test_invalid_key')
        data_maps = [
            {
                'input': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test", "sql@@@": "select 1;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'debug': True, 'data': [], 'error': '[ApiQuerySql.fromJson] field \'sql\' of type String not found', 'query': r'{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test", "sql@@@": "select 1;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"456","sql":{"database":"db_postgres_test", "sql@@@": "select 1;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "456", 'data': [], 'error': '[ApiQuerySql.fromJson] field \'sql\' of type String not found', 'query': ''},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"789","debug":true,"sql":{"database@@@":"db_postgres_test","sql":"select 1;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "789", 'debug': True, 'data': [], 'error': '[ApiQuerySql.fromJson] field \'database\' of type String not found', 'query': r'{"authToken":"123zxy456!@#","id":"789","debug":true,"sql":{"database@@@":"db_postgres_test","sql":"select 1;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"789","sql":{"database@@@":"db_postgres_test","sql":"select 1;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "789", 'data': [], 'error': '[ApiQuerySql.fromJson] field \'database\' of type String not found', 'query': ''},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_map = entry['input']
            expected_json = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            print(f'test_invalid_key | request: {entry["input"]}')
            print(f'test_invalid_key | reply: {received_json}')
            print(f"received: {received_json} \nexpected: {expected_json}")
            assert received_json['authToken'] == expected_json['authToken']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            received_json_query = json.loads(received_json['query'] if received_json['query'] else '{}')
            expected_json_query = json.loads(expected_json['query'] if expected_json['query'] else '{}')
            self.assertEqual( received_json_query, expected_json_query, msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )
            # assert received_json['query'] == expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}"

    def test_invalid_service_name(self):
        data_maps = [
            {
                'input': r'{"authToken":"123zxy456!@#","id":"111","sql":{"database":"py-test","sql":"select id from do_data;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "111", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'py-test\' can\'t be found', 'query': ''},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"222","debug":true,"sql":{"database":"py-test","sql":"select id from do_data;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "222", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'py-test\' can\'t be found', 'query': r'{"authToken":"123zxy456!@#","id":"222","debug":true,"sql":{"database":"py-test","sql":"select id from do_data;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"333","debug":true,"sql":{"database":"executable-test","sql":"select id from do_data;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "333", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'executable-test\' can\'t be found', 'query': r'{"authToken":"123zxy456!@#","id":"333","debug":true,"sql":{"database":"executable-test","sql":"select id from do_data;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"444","sql":{"database":"executable-test","sql":"select id from do_data;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "444", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'executable-test\' can\'t be found', 'query': ''},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = socketSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            self.assertEqual( received_json['authToken'], expected_json['authToken'])
            self.assertEqual( received_json['id'], expected_json['id'])
            self.assertEqual( received_json['data'], expected_json['data'])
            self.assertEqual( (len(received_json['error']) > 0), (len(expected_json['error']) > 0))
            received_json_query = json.loads(received_json['query'] if received_json['query'] else '{}')
            expected_json_query = json.loads(expected_json['query'] if expected_json['query'] else '{}')
            self.assertEqual( received_json_query, expected_json_query, msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )
            # self.assertEqual( received_json['query'], expected_json['query'], msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )


    def test_sql_basic_types(self):
        data_maps = [
            {
                'input': r'{"authToken":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE boolfield = true;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "01", 'data': {"boolfield": True}, 'error': {'message': ''}, 'query': r'{"authToken":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE boolfield = true;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"02","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = -32768;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "02", 'data': {"int2field": -32768}, 'error': {'message': ''}, 'query': r'{"authToken":"123zxy456!@#","id":"02","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = -32768;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"03","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = 32767;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "03", 'data': {"int2field": 32767}, 'error': {'message': ''}, 'query': r'{"authToken":"123zxy456!@#","id":"03","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = 32767;"}}'},
            },

            {
                'input': r'{"authToken":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = -2147483648;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "04", 'data': {"int4field": -2147483648}, 'error': {'message': ''}, 'query': r'{"authToken":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = -2147483648;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"05","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = 2147483647;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "05", 'data': {"int4field": 2147483647}, 'error': {'message': ''}, 'query': r'{"authToken":"123zxy456!@#","id":"05","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = 2147483647;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"06","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = -9223372036854775808;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "06", 'data': {"int8field": -9223372036854775808}, 'error': {'message': ''}, 'query': r'{"authToken":"123zxy456!@#","id":"06","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = -9223372036854775808;"}}'},
            },
            {
                'input': r'{"authToken":"123zxy456!@#","id":"07","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = 9223372036854775807;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "07", 'data': {"int8field": 9223372036854775807}, 'error': {'message': ''}, 'query': r'{"authToken":"123zxy456!@#","id":"07","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = 9223372036854775807;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"08","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4field = \'-9.123456e3\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "08", 'data': {"float4field": -9.123456e3}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"08","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4field = \'-9.123456e3\';"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"09","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8field = \'9.123456789012345e3\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "09", 'data': {"float8field": 9.123456789012345e3}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"09","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8field = \'9.123456789012345e3\';"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"10","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE charfield = \'1\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "10", 'data': {"charfield": '1'}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"10","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE charfield = \'1\';"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"11","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpcharfield = \'1234\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "11", 'data': {"bpcharfield": '1234'}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"11","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpcharfield = \'1234\';"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"12","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpvarcharfield = \'12345678\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "12", 'data': {"bpvarcharfield": '12345678'}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"12","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpvarcharfield = \'12345678\';"}}'},
            },
            {
                'input': f'{{"authToken":"123zxy456!@#","id":"13","debug":true,"sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varcharfield = \'{longString}\';"}}}}',
                'output': {"authToken": "123zxy456!@#", "id": "13", 'data': {"varcharfield": longString}, 'error': {'message': ''}, 'query': f'{{"authToken":"123zxy456!@#","id":"13","debug":true,"sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varcharfield = \'{longString}\';"}}}}'},
            },
            {
                'input': f'{{"authToken":"123zxy456!@#","id":"14","debug":true,"sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE namefield = \'{longString[:63]}\';"}}}}',
                'output': {"authToken": "123zxy456!@#", "id": "14", 'data': {"namefield": longString[:63]}, 'error': {'message': ''}, 'query': f'{{"authToken":"123zxy456!@#","id":"14","debug":true,"sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE namefield = \'{longString[:63]}\';"}}}}'},
            },
            {
                'input': f'{{"authToken":"123zxy456!@#","id":"15","debug":true,"sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE textfield = \'{longString}\';"}}}}',
                'output': {"authToken": "123zxy456!@#", "id": "15", 'data': {"textfield": longString}, 'error': {'message': ''}, 'query': f'{{"authToken":"123zxy456!@#","id":"15","debug":true,"sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE textfield = \'{longString}\';"}}}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"16","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampfield = \'2004-10-19 10:23:54\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "16", 'data': {"timestampfield": '2004-10-19T10:23:54'}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"16","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampfield = \'2004-10-19 10:23:54\';"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"17","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampzfield = \'2004-10-19 10:23:54+2\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "17", 'data': {"timestampzfield": '2004-10-19T08:23:54Z'}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"17","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampzfield = \'2004-10-19 10:23:54+2\';"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"18","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE datefield = \'2004-10-19\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "18", 'data': {"datefield": '2004-10-19'}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"18","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE datefield = \'2004-10-19\';"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"19","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timefield = \'10:23:54\';"}}',
                'output': {"authToken": "123zxy456!@#", "id": "19", 'data': {"timefield": '10:23:54'}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"19","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timefield = \'10:23:54\';"}}'},
            },
        ]
        for _, entry in enumerate(data_maps):
            query = bytes(entry['input'], encoding='utf-8')
            received = socketSendBytes(query)
            try:
                received_json = json.loads(received)
            except Exception as err:
                print(f'test_sql_basic_types received reply can`t be parsed: {err}')
                print(f'test_sql_basic_types received: {received}')
                # self.fail(f"received reply can't be parsed: {err}")
            if received_json:
                expected_json = entry['output']
                print(f'test_sql_basic_types request: {entry["input"]}')
                print(f'test_sql_basic_types reply: {received_json}')
                print(f"received: {received_json} \nexpected: {expected_json}")
                self.assertEqual( received_json['authToken'], expected_json['authToken'], msg = f"\nexpected authToken: {expected_json['authToken']} \nreceived authToken: {received_json['authToken']}\n query: {entry['input']}" )
                self.assertEqual( received_json['id'], expected_json['id'] )
                receivedDataFirstRow: dict = received_json['data'][0]
                for key, value in expected_json['data'].items():
                    # print(f'test_sql_basic_types expected key: {key} | value: {value}')
                    self.assertEqual( key in receivedDataFirstRow.keys(), True )
                    self.assertAlmostEqual( receivedDataFirstRow[key], value, delta=0.0001 )
                self.assertEqual( received_json['error'], expected_json['error'], msg = f"\nexpected error: {expected_json['error']} \nreceived error: {received_json['error']}" )
                received_json_query = json.loads(received_json['query'] if received_json['query'] else '{}')
                expected_json_query = json.loads(expected_json['query'] if expected_json['query'] else '{}')
                self.assertEqual( received_json_query, expected_json_query, msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )
                # self.assertEqual( received_json['query'], expected_json['query'], msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )


    def test_sql_json_types(self):
        data_maps = [
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonfield IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"jsonfield": {"a":123, "b": 456}}, 'error': {'message': ''}, 'query': ''},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonfield IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"jsonfield": {"a":123, "b": 456}}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonfield IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonbfield IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"jsonbfield": {"a":123, "b": 456}}, 'error': {'message': ''}, 'query': ''},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonbfield IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"jsonbfield": {"a":123, "b": 456}}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonbfield IS NOT NULL;"}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = socketSendBytes(data_bytes)
            try:
                received_json = json.loads(received)
            except Exception as err:
                print(f'test_sql_json_types | received reply can`t be parsed: {err}')
                print(f'test_sql_json_types | received: {received}')
                # self.fail(f"received reply can't be parsed: {err}")
            if received_json:
                expected_json = entry['output']
                print(f'test_sql_json_types | request: {entry["input"]}')
                print(f'test_sql_json_types | reply: {received_json}')
                print(f"received: {received_json} \nexpected: {expected_json}")
                self.assertEqual( received_json['authToken'], expected_json['authToken'] )
                self.assertEqual( received_json['id'], expected_json['id'] )
                receivedDataFirstRow: dict = received_json['data'][0]
                for key, value in expected_json['data'].items():
                    # print(f'test_sql_json_types | expected key: {key} | value: {value}')
                    self.assertEqual( key in receivedDataFirstRow.keys(), True )
                    self.assertEqual( receivedDataFirstRow[key], value )
                self.assertEqual( received_json['error'], expected_json['error'], f"\nexpected error: {expected_json['error']} \nreceived error: {received_json['error']}" )
                received_json_query = json.loads(received_json['query'] if received_json['query'] else '{}')
                expected_json_query = json.loads(expected_json['query'] if expected_json['query'] else '{}')
                self.assertEqual( received_json_query, expected_json_query, msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )
                # self.assertEqual( received_json['query'], expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )


    def test_sql_arrays(self):
        data_maps = [
            {
                'input': '{"authToken":"123zxy456!@#","id":"010","debug":false,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bool_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "010", 'data': {"bool_array_field": [False, True]}, 'error': {'message': ''}, 'query': ''},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"011","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bool_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "011", 'data': {"bool_array_field": [False, True]}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"011","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bool_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"int2_array_field": [-32768, 32767]}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"int4_array_field": [-2147483648, 2147483647]}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"int8_array_field": [-9223372036854775808, 9223372036854775807]}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"float4_array_field": [-9123.456, 9123.456]}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"float8_array_field": [-9.123456789012345e3, 9.123456789012345e3]}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE char_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"char_array_field": ['1', '2', '3']}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE char_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE text_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"text_array_field": ['text 1', 'text 2', 'text 3']}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE text_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varchar_array_field IS NOT NULL;"}}',
                'output': {"authToken": "123zxy456!@#", "id": "123", 'data': {"varchar_array_field": ['varchar 1', 'varchar 2', 'varchar 3']}, 'error': {'message': ''}, 'query': '{"authToken":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varchar_array_field IS NOT NULL;"}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = socketSendBytes(data_bytes)
            try:
                received_json = json.loads(received)
            except Exception as err:
                print(f'test_sql_arrays | received reply can`t be parsed: {err}')
                print(f'test_sql_arrays | received: {received}')
                # self.fail(f"received reply can't be parsed: {err}")
            if received_json:
                expected_json = entry['output']
                print(f'test_sql_arrays | request: {entry["input"]}')
                print(f'test_sql_arrays | reply: {received_json}')
                print(f"received: {received_json} \nexpected: {expected_json}")
                self.assertEqual( received_json['authToken'], expected_json['authToken'] )
                self.assertEqual( received_json['id'], expected_json['id'] )
                receivedDataFirstRow: dict = received_json['data'][0]
                for key, value in expected_json['data'].items():
                    print(f'test_sql_arrays | expected key: {key} | value: {value}')
                    self.assertEqual( key in receivedDataFirstRow.keys(), True )
                    for i in range(len(value)):
                        print(f'expected: {value[i]}, received: {receivedDataFirstRow[key][i]}')
                        if isinstance(value[i], str):
                            self.assertEqual( receivedDataFirstRow[key][i], value[i], msg=f'expected: {value[i]}, received: {receivedDataFirstRow[key][i]}' )
                        else:                        
                            self.assertAlmostEqual( receivedDataFirstRow[key][i], value[i], delta=0.0001, msg=f'expected: {value[i]}, received: {receivedDataFirstRow[key][i]}' )
                self.assertEqual( received_json['error'], expected_json['error'], f"\nexpected error: {expected_json['error']} \nreceived error: {received_json['error']}" )
                received_json_query = json.loads(received_json['query'] if received_json['query'] else '{}')
                expected_json_query = json.loads(expected_json['query'] if expected_json['query'] else '{}')
                self.assertEqual( received_json_query, expected_json_query, msg = f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )
                # self.assertEqual( received_json['query'], expected_json['query'], f"\nexpected query: {expected_json['query']} \nreceived query: {received_json['query']}" )



if __name__ == '__main__':
    createDatabase()
    conftest.kill_all_servers()
    conftest.run_api_server()
    unittest.main()
