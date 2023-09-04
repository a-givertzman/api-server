import json
import unittest
import conftest
from create_postgres_database import createDatabase, longString
from request import sockerSendBytes

class TestSqlPostgres(unittest.TestCase):

    def test_invalid_json_without_brackets(self):
        data_maps = [
            {
                'input': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"select 1;"}}',
                'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"select 1;"}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"select 1;"}',
                'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing an object at line 1 column 87', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"select 1;"}'},
            },
            {
                'input': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"select 1;"}',
                'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'trailing characters at line 1 column 13', 'query': r'"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"select 1;"}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            print(f'invalid_json_without_brackets | request: {entry["input"]}')
            data_bytes = bytes(entry['input'], encoding='utf8')
            received = sockerSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']

    def test_invalid_json_cut(self):
        input = r'{"auth_token":"123zxy456!@#","id":"123","sql":{"databas'
        expected_json = {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': 'EOF while parsing a string at line 1 column 55', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"databas'}
        data_bytes = bytes(input, encoding='utf8')
        received = sockerSendBytes(data_bytes)
        received_json = json.loads(received)
        assert received_json['auth_token'] == expected_json['auth_token']
        assert received_json['id'] == expected_json['id']
        assert received_json['data'] == expected_json['data']
        assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
        assert received_json['query'] == expected_json['query']

    def test_invalid_json_key(self):
        print(f'test_invalid_key')
        data_maps = [
            {
                # 'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test", "sql": "select 1;"}}',
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test", "sql@@@": "select 1;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQuerySql.fromJson] field \'sql\' of type String not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql@@@":"select 1;"}}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database@@@":"db_postgres_test","sql":"select 1;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQuerySql.fromJson] field \'database\' of type String not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database@@@":"db_postgres_test","sql":"select 1;"}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_map = entry['input']
            expected_json = entry['output'] 
            data_bytes = bytes(data_map, encoding='utf8')
            received = sockerSendBytes(data_bytes)
            received_json = json.loads(received)
            print(f'test_invalid_key | request: {entry["input"]}')
            print(f'test_invalid_key | reply: {received_json}')
            print(f"received: {received_json} \nexpected: {expected_json}")
            assert received_json['auth_token'] == expected_json['auth_token']
            assert received_json['id'] == expected_json['id']
            assert received_json['data'] == expected_json['data']
            assert (len(received_json['error']) > 0) == (len(expected_json['error']) > 0)
            assert received_json['query'] == expected_json['query']

    def test_invalid_service_name(self):
        data_maps = [
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"py-test","sql":"select id from do_data;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'py-test\' can\'t be found', 'query': r'{"database":"py-test","sql":"select id from do_data;"}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"executable-test","sql":"select id from do_data;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': 'ApiServer.build | Error: Database service with the name \'executable-test\' can\'t be found', 'query': r'{"database":"executable-test","sql":"select id from do_data;"}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = sockerSendBytes(data_bytes)
            received_json = json.loads(received)
            expected_json = entry['output']
            self.assertEqual( received_json['auth_token'], expected_json['auth_token'])
            self.assertEqual( received_json['id'], expected_json['id'])
            self.assertEqual( received_json['data'], expected_json['data'])
            self.assertEqual( (len(received_json['error']) > 0), (len(expected_json['error']) > 0))
            self.assertEqual( received_json['query'], expected_json['query'], msg=f"received query: {received_json['query']} should be equal to the \nexpected query: {expected_json['query']}")


    def test_sql_basic_types(self):
        data_maps = [
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE boolfield = true;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"boolfield": True}, 'error': '', 'query': r'{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE boolfield = true;"}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = -32768;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int2field": -32768}, 'error': '', 'query': r'{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = -32768;"}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = 32767;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int2field": 32767}, 'error': '', 'query': r'{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2field = 32767;"}'},
            },

            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = -2147483648;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int4field": -2147483648}, 'error': '', 'query': r'{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = -2147483648;"}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = 2147483647;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int4field": 2147483647}, 'error': '', 'query': r'{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4field = 2147483647;"}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = -9223372036854775808;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int8field": -9223372036854775808}, 'error': '', 'query': r'{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = -9223372036854775808;"}'},
            },
            {
                'input': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = 9223372036854775807;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int8field": 9223372036854775807}, 'error': '', 'query': r'{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8field = 9223372036854775807;"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4field = \'-9.123456e3\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"float4field": -9.123456e3}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4field = \'-9.123456e3\';"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8field = \'9.123456789012345e3\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"float8field": 9.123456789012345e3}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8field = \'9.123456789012345e3\';"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE charfield = \'1\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"charfield": '1'}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE charfield = \'1\';"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpcharfield = \'1234\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"bpcharfield": '1234'}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpcharfield = \'1234\';"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpvarcharfield = \'12345678\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"bpvarcharfield": '12345678'}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bpvarcharfield = \'12345678\';"}'},
            },
            {
                'input': f'{{"auth_token":"123zxy456!@#","id":"123","sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varcharfield = \'{longString}\';"}}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"varcharfield": longString}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varcharfield = \'{longString}\';"}}'},
            },
            {
                'input': f'{{"auth_token":"123zxy456!@#","id":"123","sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE namefield = \'{longString[:63]}\';"}}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"namefield": longString[:63]}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE namefield = \'{longString[:63]}\';"}}'},
            },
            {
                'input': f'{{"auth_token":"123zxy456!@#","id":"123","sql":{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE textfield = \'{longString}\';"}}}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"textfield": longString}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE textfield = \'{longString}\';"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampfield = \'2004-10-19 10:23:54\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"timestampfield": '2004-10-19T10:23:54'}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampfield = \'2004-10-19 10:23:54\';"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampzfield = \'2004-10-19 10:23:54+2\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"timestampzfield": '2004-10-19T08:23:54Z'}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timestampzfield = \'2004-10-19 10:23:54+2\';"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE datefield = \'2004-10-19\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"datefield": '2004-10-19'}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE datefield = \'2004-10-19\';"}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timefield = \'10:23:54\';"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"timefield": '10:23:54'}, 'error': '', 'query': '{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE timefield = \'10:23:54\';"}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = sockerSendBytes(data_bytes)
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
                self.assertEqual( received_json['auth_token'], expected_json['auth_token'] )
                self.assertEqual( received_json['id'], expected_json['id'] )
                receivedDataFirstRow: dict = received_json['data'][0]
                for key, value in expected_json['data'].items():
                    # print(f'test_sql_basic_types expected key: {key} | value: {value}')
                    self.assertEqual( key in receivedDataFirstRow.keys(), True )
                    self.assertAlmostEqual( receivedDataFirstRow[key], value, delta=0.0001 )
                self.assertEqual( received_json['error'], expected_json['error'] )
                self.assertEqual( received_json['query'], expected_json['query'] )


    def test_sql_json_types(self):
        data_maps = [
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonfield IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"jsonfield": {"a":123, "b": 456}}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonfield IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonbfield IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"jsonbfield": {"a":123, "b": 456}}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE jsonbfield IS NOT NULL;"}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = sockerSendBytes(data_bytes)
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
                self.assertEqual( received_json['auth_token'], expected_json['auth_token'] )
                self.assertEqual( received_json['id'], expected_json['id'] )
                receivedDataFirstRow: dict = received_json['data'][0]
                for key, value in expected_json['data'].items():
                    # print(f'test_sql_json_types | expected key: {key} | value: {value}')
                    self.assertEqual( key in receivedDataFirstRow.keys(), True )
                    self.assertEqual( receivedDataFirstRow[key], value )
                self.assertEqual( received_json['error'], expected_json['error'] )
                self.assertEqual( received_json['query'], expected_json['query'] )


    def test_sql_arrays(self):
        data_maps = [
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bool_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"bool_array_field": [False, True]}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE bool_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int2_array_field": [-32768, 32767]}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int2_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int4_array_field": [-2147483648, 2147483647]}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int4_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"int8_array_field": [-9223372036854775808, 9223372036854775807]}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE int8_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"float4_array_field": [-9123.456, 9123.456]}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float4_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"float8_array_field": [-9.123456789012345e3, 9.123456789012345e3]}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE float8_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE char_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"char_array_field": ['1', '2', '3']}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE char_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE text_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"text_array_field": ['text 1', 'text 2', 'text 3']}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE text_array_field IS NOT NULL;"}}'},
            },
            {
                'input': '{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varchar_array_field IS NOT NULL;"}}',
                'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': {"varchar_array_field": ['varchar 1', 'varchar 2', 'varchar 3']}, 'error': '', 'query': f'{{"database":"db_postgres_test","sql":"SELECT * FROM test WHERE varchar_array_field IS NOT NULL;"}}'},
            },
        ]
        for i, entry in enumerate(data_maps):
            data_bytes = bytes(entry['input'], encoding='utf-8')
            received = sockerSendBytes(data_bytes)
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
                self.assertEqual( received_json['auth_token'], expected_json['auth_token'] )
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
                self.assertEqual( received_json['error'], expected_json['error'] )
                self.assertEqual( received_json['query'], expected_json['query'] )



if __name__ == '__main__':
    createDatabase()
    # g = conftest.api_server()
    # next(g)
    unittest.main()
    # next(g)