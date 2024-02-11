#![allow(non_snake_case)]
#[cfg(test)]
mod tests {
    use api_tools::{error::api_error::ApiError, server::api_query::{api_query::ApiQuery, api_query_error::ApiQueryError, api_query_sql::ApiQuerySql, api_query_type::ApiQueryType}};
    use log::info;
    use std::sync::Once;
    
    use crate::core_::debug::debug_session::{DebugSession, LogLevel, Backtrace};
    
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
        queryVariant: ApiQueryTypeVariant,
    }

    #[derive(std::fmt::Debug)]
    enum ApiQueryTypeVariant {
        Sql,
        Python,
        Executable,
        Unknown,
        Error,
    }
    

    #[test]
    fn test_api_query_from_bytes() {
        DebugSession::init(LogLevel::Debug, Backtrace::Short);
        initOnce();
        initEach();
        println!("");
        info!("test_api_query_from_bytes");
        let testData = [

            // debug
            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"11","sql":{"database":"database","sql":"select id from do_data;"}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "11".into(), 
                    ApiQueryType::Sql(ApiQuerySql{ database: "database".to_string(), sql: "select id from do_data;".to_string() }), 
                    "", 
                    false, false
                ),
                queryVariant: ApiQueryTypeVariant::Sql,
            },
            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"12","debug":true,"sql":{"database":"database","sql":"select id from do_data;"}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "12".into(), 
                    ApiQueryType::Sql(ApiQuerySql{ database: "database".to_string(), sql: "select id from do_data;".to_string() }), 
                    r#"{"authToken":"123zxy456!@#","id":"12","debug":true,"sql":{"database":"database","sql":"select id from do_data;"}}"#, 
                    false, true
                ),
                queryVariant: ApiQueryTypeVariant::Sql,
            },

            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"13","sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "13".into(), 
                    ApiQueryType::Error(ApiQueryError::new(ApiError::new("", ""))), 
                    "", 
                    false, false
                ),
                queryVariant: ApiQueryTypeVariant::Error,
            },

            // multyservice query
            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "01".into(), 
                    ApiQueryType::Error(ApiQueryError::new(ApiError::new("", ""))), 
                    r#"{"authToken":"123zxy456!@#","id":"01","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}}}"#, 
                    false, true
                ),
                queryVariant: ApiQueryTypeVariant::Error,
            },
            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"02","debug":true,"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "02".into(), 
                    ApiQueryType::Error(ApiQueryError::new(ApiError::new("", ""))), 
                    r#"{"authToken":"123zxy456!@#","id":"02","debug":true,"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}"#, 
                    false, true
                ),
                queryVariant: ApiQueryTypeVariant::Error,
            },
            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"03","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "03".into(), 
                    ApiQueryType::Error(ApiQueryError::new(ApiError::new("", ""))), 
                    r#"{"authToken":"123zxy456!@#","id":"03","debug":true,"executable":{"name":"executable-test","params":{"a": 4, "b": 7}},"sql":{"database":"database","sql":"select id from do_data;"}}"#,
                    false, true
                ),
                queryVariant: ApiQueryTypeVariant::Error,
            },
            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "04".into(), 
                    ApiQueryType::Error(ApiQueryError::new(ApiError::new("", ""))), 
                    r#"{"authToken":"123zxy456!@#","id":"04","debug":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}"#, 
                    false, true
                ),
                queryVariant: ApiQueryTypeVariant::Error,
            },
            TestEntry {
                input: r#"{"authToken":"123zxy456!@#","id":"04","debug":true,"keepAlive":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}"#,
                out: ApiQuery::new(
                    "123zxy456!@#".into(), "04".into(), 
                    ApiQueryType::Error(ApiQueryError::new(ApiError::new("", ""))), 
                    r#"{"authToken":"123zxy456!@#","id":"04","debug":true,"keepAlive":true,"sql":{"database":"database","sql":"select id from do_data;"},"python":{"script":"py-test","params":{"a": 4, "b": 7}},"executable":{"name":"executable-test","params":{"a": 4, "b": 7}}}"#, 
                    true, true
                ),
                queryVariant: ApiQueryTypeVariant::Error,
            },
        ];
        for testEntry in testData {
            let bytes = testEntry.input.as_bytes();
            let apiQuery = ApiQuery::fromBytes(bytes.into());

            assert!(
                apiQuery.authToken() == testEntry.out.authToken(), 
                "\nparsed apiQuery authToken: {:?} \ntarget apiQuery authToken: {:?}", apiQuery.authToken(), testEntry.out.authToken(),
            );
            assert!(
                apiQuery.id() == testEntry.out.id(), 
                "\nparsed apiQuery id: {:?} \ntarget apiQuery id: {:?}", apiQuery.id(), testEntry.out.id(),
            );
            assert!(
                apiQuery.debug == testEntry.out.debug, 
                "\nparsed apiQuery debug: {:?} \ntarget apiQuery debug: {:?}", apiQuery.debug, testEntry.out.debug,
            );
            assert!(
                apiQuery.keepAlive == testEntry.out.keepAlive, 
                "\nparsed apiQuery keepAlive: {:?} \ntarget apiQuery keepAlive: {:?}", apiQuery.keepAlive, testEntry.out.keepAlive,
            );
            match apiQuery.query() {
                ApiQueryType::Sql(_) => {
                    assert!(
                        apiQuery.keepAlive == testEntry.out.keepAlive, 
                        "\nparsed apiQuery query: 'ApiQueryType::Sql' \ntarget apiQuery query: {:?}", testEntry.queryVariant,
                    );        
                },
                ApiQueryType::Python(_) => {
                    assert!(
                        apiQuery.keepAlive == testEntry.out.keepAlive, 
                        "\nparsed apiQuery query: 'ApiQueryType::Python' \ntarget apiQuery query: {:?}", testEntry.queryVariant,
                    );
                },
                ApiQueryType::Executable(_) => {
                    assert!(
                        apiQuery.keepAlive == testEntry.out.keepAlive, 
                        "\nparsed apiQuery query: 'ApiQueryType::Executable' \ntarget apiQuery query: {:?}", testEntry.queryVariant,
                    );
                },
                ApiQueryType::Unknown => {
                    assert!(
                        apiQuery.keepAlive == testEntry.out.keepAlive, 
                        "\nparsed apiQuery query: 'ApiQueryType::Unknown' \ntarget apiQuery query: {:?}", testEntry.queryVariant,
                    );
                },
                ApiQueryType::Error(_) => {
                    assert!(
                        apiQuery.keepAlive == testEntry.out.keepAlive, 
                        "\nparsed apiQuery query: 'ApiQueryType::Error' \ntarget apiQuery query: {:?}", testEntry.queryVariant,
                    );                    
                },
            }
    
        }    
    }
}