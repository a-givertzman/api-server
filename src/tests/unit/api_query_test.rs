#![allow(non_snake_case)]
#[cfg(test)]
mod tests {
    use log::{info, debug, warn};
    use std::{sync::Once, time::{Duration, Instant}, collections::HashMap};
    use rand::Rng;
    
    use crate::{core_::{debug::debug_session::{DebugSession, LogLevel, Backtrace}, aprox_eq::aprox_eq::AproxEq}, api_query::{api_query::ApiQuery, api_query_type::ApiQueryType}};
    
    // Note this useful idiom: importing names from outer (for mod tests) scope.
    // use super::*;
    
    static INIT: Once = Once::new();
    
    ///
    /// once called initialisation
    fn initOnce() {
        INIT.call_once(|| {
                // implement your initialisation code to be called only once for current test file
            }
        )
    }
    
    
    ///
    /// returns:
    ///  - ...
    fn initEach() -> () {
    
    }
    
    struct TestEntry {
        input: &'static str,
        out: ApiQuery,
    }

    #[test]
    fn test_api_query_from_bytes() {
        DebugSession::init(LogLevel::Debug, Backtrace::Short);
        initOnce();
        initEach();
        println!("");
        info!("test_api_query_from_bytes");
    
        let testData = [
            TestEntry {
                input: r#"{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select * from do_data;"}}"#,
                out: ApiQuery::new(
                    "Unknown".into(), "Unknown".into(), 
                    ApiQueryType::Unknown, 
                    r#"{"auth_token":"123zxy456!@#","id":"123","sql":{"database":"database","sql":"select * from do_data;"}}"#, 
                    false, false
                ),
            },
                //     "error": {"message": "key must be a string at line 1 column 2"}, 
                //     "query": b"{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00s\x00\x00\x00q\x00\x00\x00l\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00a\x00\x00\x00s\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00a\x00\x00\x00s\x00\x00\x00e\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00s\x00\x00\x00q\x00\x00\x00l\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00s\x00\x00\x00e\x00\x00\x00l\x00\x00\x00e\x00\x00\x00c\x00\x00\x00t\x00\x00\x00 \x00\x00\x00*\x00\x00\x00 \x00\x00\x00f\x00\x00\x00r\x00\x00\x00o\x00\x00\x00m\x00\x00\x00 \x00\x00\x00d\x00\x00\x00o\x00\x00\x00_\x00\x00\x00d\x00\x00\x00a\x00\x00\x00t\x00\x00\x00a\x00\x00\x00;\x00\x00\x00"\x00\x00\x00}\x00\x00\x00}"},
                // ]))
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"123","python":{"script":"py-test","params":{"a": 4, "b": 7}}}',
            //     'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': {'message': 'key must be a string at line 1 column 2'}, 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00y\x00\x00\x00t\x00\x00\x00h\x00\x00\x00o\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00s\x00\x00\x00c\x00\x00\x00r\x00\x00\x00i\x00\x00\x00p\x00\x00\x00t\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00p\x00\x00\x00y\x00\x00\x00-\x00\x00\x00t\x00\x00\x00e\x00\x00\x00s\x00\x00\x00t\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00a\x00\x00\x00r\x00\x00\x00a\x00\x00\x00m\x00\x00\x00s\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x004\x00\x00\x00,\x00\x00\x00 \x00\x00\x00"\x00\x00\x00b\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x007\x00\x00\x00}\x00\x00\x00}\x00\x00\x00}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"123","executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
            //     'output': {"auth_token": "Unknown", "id": "Unknown", 'data': [], 'error': {'message': 'key must be a string at line 1 column 2'}, 'query': '{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00u\x00\x00\x00t\x00\x00\x00h\x00\x00\x00_\x00\x00\x00t\x00\x00\x00o\x00\x00\x00k\x00\x00\x00e\x00\x00\x00n\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00z\x00\x00\x00x\x00\x00\x00y\x00\x00\x004\x00\x00\x005\x00\x00\x006\x00\x00\x00!\x00\x00\x00@\x00\x00\x00#\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00i\x00\x00\x00d\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x001\x00\x00\x002\x00\x00\x003\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00e\x00\x00\x00x\x00\x00\x00e\x00\x00\x00c\x00\x00\x00u\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00l\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00n\x00\x00\x00a\x00\x00\x00m\x00\x00\x00e\x00\x00\x00"\x00\x00\x00:\x00\x00\x00"\x00\x00\x00e\x00\x00\x00x\x00\x00\x00e\x00\x00\x00c\x00\x00\x00u\x00\x00\x00t\x00\x00\x00a\x00\x00\x00b\x00\x00\x00l\x00\x00\x00e\x00\x00\x00-\x00\x00\x00t\x00\x00\x00e\x00\x00\x00s\x00\x00\x00t\x00\x00\x00"\x00\x00\x00,\x00\x00\x00"\x00\x00\x00p\x00\x00\x00a\x00\x00\x00r\x00\x00\x00a\x00\x00\x00m\x00\x00\x00s\x00\x00\x00"\x00\x00\x00:\x00\x00\x00{\x00\x00\x00"\x00\x00\x00a\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x004\x00\x00\x00,\x00\x00\x00 \x00\x00\x00"\x00\x00\x00b\x00\x00\x00"\x00\x00\x00:\x00\x00\x00 \x00\x00\x007\x00\x00\x00}\x00\x00\x00}\x00\x00\x00}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "01", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"02","debug":true,"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "02", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"02","debug":true,"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"03","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "03", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"03","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "04", 'data': [], 'error': {'message': 'API Service - Unable to perform multiservice request'}, 'query': r'{"auth_token":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"executable@@@":{"name":"executable-test","params":{"a":4,"b":7}}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': {'message': 'Unknown type of API query'}, 'query': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"executable@@@":{"name":"executable-test","params":{"a":4,"b":7}}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'id\' of type String not found'}, 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}'},
            // },
            // {
            //     'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}',
            //     'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'auth_token\' of type String not found'}, 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"executable":{"name":"executable-test","params":{"a":4,"b":7}}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"python@@@":{"script":"py-test","params":{"a":4,"b":7}}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': {'message': 'Unknown type of API query'}, 'query': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"python@@@":{"script":"py-test","params":{"a":4,"b":7}}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': {'message': 'ApiQuery -  field \'id\' of type String not found'}, 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}'},
            // },
            // {
            //     'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}',
            //     'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'auth_token\' of type String not found'}, 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"python":{"script":"py-test","params":{"a":4,"b":7}}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"sql@@@":{"database":"db-postgres","sql":"select 1;"}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "123", 'data': [], 'error': {'message': 'Unknown type of API query'}, 'query': r'{"auth_token":"123zxy456!@#","id":"123","debug":true,"sql@@@":{"database":"db-postgres","sql":"select 1;"}}'},
            // },
            // {
            //     'input': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}',
            //     'output': {"auth_token": "123zxy456!@#", "id": "Unknown", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'id\' not found'}, 'query': r'{"auth_token":"123zxy456!@#","id@@@":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}'},
            // },
            // {
            //     'input': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}',
            //     'output': {"auth_token": "Unknown", "id": "123", 'data': [], 'error': {'message': '[ApiQuery.parseJsonString] field \'auth_token\' not found'}, 'query': r'{"auth_token@@@":"123zxy456!@#","id":"123","debug":true,"sql":{"database":"db-postgres","sql":"select 1;"}}'},
            // },
        ];
        for testEntry in testData {
            let bytes = testEntry.input.as_bytes();
            let apiQuery = ApiQuery::fromBytes(bytes.into());

            assert!(apiQuery == testEntry.out, "\nparsed apiQuery: {:?} \ntarget apiQuery: {:?}", apiQuery, testEntry.out);
    
        }    
    }
}