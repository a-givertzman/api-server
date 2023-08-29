import json
from request import request_dict


def test_sql_invalid():
    data_maps = [
        {
            'input': {"auth_token": "123zxy456!@#", "id": "123", "sql": {"database@@@": "db-postgres", "sql": "select 1;"}},
            'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': '[ApiQuerySql.fromJson] field \'database\' not found', 'query': r'{"auth_token":"123zxy456!@#","id":"123","sql":{"database@@@":"db-postgres","sql":"select 1;"}}'},
        }
    ]
    for entry in data_maps:
        data_map = entry['input']
        assert request_dict(data_map) == entry['output']