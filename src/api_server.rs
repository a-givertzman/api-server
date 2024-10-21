#![allow(non_snake_case)]

use api_tools::{error::api_error::ApiError, api::reply::api_reply::ApiReply, server::api_query::{api_query::ApiQuery, api_query_type::ApiQueryType}};
use log::debug;

use crate::{
    config::Config, 
    sql_query_sqlite::SqlQuerySqlite, 
    python_query::PythonQuery, 
    executable_query::ExecutableQuery, 
    api_service_type::ApiServiceType, 
    sql_query::SqlQuery, 
    sql_query_mysql::SqlQueryMysql, 
    sql_query_postgre::SqlQueryPostgre, 
};

///
/// 
pub struct ApiServer {
    config: Config
}
impl ApiServer {
    ///
    /// 
    pub fn new(config: Config) -> ApiServer {
        ApiServer {
            config,
        }
    }
    ///
    /// 
    fn execute(mut sqlQuery: Box<dyn SqlQuery>, auth_token: String, id: String, keep_alive: bool, query: String, debug: bool) -> ApiReply {
        match sqlQuery.execute() {
            Ok(rows) => {
                ApiReply::new(auth_token, id, keep_alive, query, rows)
            },
            Err(err) => {
                ApiReply::error(
                    auth_token,
                    id,
                    keep_alive,
                    query,
                    err.debug(debug),
                )
            },
        }
    }
    /// - Received API query as bytes
    /// - Parses bytes into ApiQuery struct
    /// - Dippending on ApiQueryType call private execute method
    /// - Returns ApiReply with data or error
    // pub fn build(&self, bytes: Vec<u8>) -> Vec<u8> {
    pub fn build(&self, bytes: Vec<u8>) -> ApiServerResult {
        let apiQuery = ApiQuery::fromBytes(bytes);
        match apiQuery.query() {            
            ApiQueryType::Error(errQuery) => {
                ApiServerResult {
                    keepAlive: apiQuery.keepAlive,
                    data: ApiReply::error(
                        apiQuery.authToken(),
                        apiQuery.id(),
                        apiQuery.keepAlive,
                        apiQuery.srcQuery(apiQuery.debug),
                        errQuery.err().debug(apiQuery.debug),
                    ).as_bytes(),
                }
            },
            ApiQueryType::Sql(sqlQuery) => {
                debug!("ApiServer.build | ApiQueryType: Sql");
                match self.config.services.get(&sqlQuery.database) {
                    Some(dbConfig) => {
                        match dbConfig.service_type {
                            ApiServiceType::Sqlite => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: Self::execute(
                                        Box::new(SqlQuerySqlite::new(dbConfig.clone(), sqlQuery.sql, None)),
                                        apiQuery.authToken(),
                                        apiQuery.id(),
                                        apiQuery.keepAlive,
                                        apiQuery.srcQuery(apiQuery.debug),
                                        apiQuery.debug,
                                    ).as_bytes(),
                                }
                            },
                            ApiServiceType::MySql => {
                                let dir = std::env::current_dir().unwrap();
                                let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                                debug!("ApiServer.build | database address: {:?}", path);
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: Self::execute(
                                        Box::new(SqlQueryMysql::new(dbConfig.clone(), sqlQuery.sql, None)),
                                        apiQuery.authToken(),
                                        apiQuery.id(),
                                        apiQuery.keepAlive,
                                        apiQuery.srcQuery(apiQuery.debug),
                                        apiQuery.debug,
                                    ).as_bytes(),
                                }
                            },
                            ApiServiceType::PostgreSql => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: Self::execute(
                                        Box::new(SqlQueryPostgre::new(dbConfig.clone(), sqlQuery.sql, None)),
                                        apiQuery.authToken(),
                                        apiQuery.id(),
                                        apiQuery.keepAlive,
                                        apiQuery.srcQuery(apiQuery.debug),
                                        apiQuery.debug,
                                    ).as_bytes(),
                                }
                            },
                            _ => ApiServerResult {
                                keepAlive: apiQuery.keepAlive,
                                data: ApiReply::error(
                                    apiQuery.authToken(),
                                    apiQuery.id(),
                                    apiQuery.keepAlive,
                                    apiQuery.srcQuery(apiQuery.debug),
                                    ApiError::new(
                                        format!("API Server - Database service with the name '{}' can't be found", sqlQuery.database),
                                        format!("ApiServer.build | Error: Database service with the name '{}' can't be found", sqlQuery.database),
                                    ).debug(apiQuery.debug),
                                ).as_bytes(),
                            }
                        }
                    },
                    None => ApiServerResult {
                        keepAlive: apiQuery.keepAlive,
                        data: ApiReply::error(
                            apiQuery.authToken(),
                            apiQuery.id(),
                            apiQuery.keepAlive,
                            apiQuery.srcQuery(apiQuery.debug),
                            ApiError::new(
                                format!("API Server - Database service with the name '{}' can't be found", sqlQuery.database),
                                format!("ApiServer.build | Error: Database service with the name '{}' can't be found", sqlQuery.database),
                            ).debug(apiQuery.debug),
                        ).as_bytes(),
                    },
                }                    
            },
            ApiQueryType::Python(pyQuery) => {
                debug!("ApiServer.build | ApiQueryType: Python");
                debug!("ApiServer.build | ApiQueryType: Python script: {}", pyQuery.script);
                match self.config.services.get(&pyQuery.script) {
                    Some(dbConfig) => {
                        // let path = "./database.sqlite";
                        // let path = self.config.dataBases[0].path.clone();
                        let dir = std::env::current_dir().unwrap();
                        let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                        debug!("ApiServer.build | script path: {:?}", path);
                        // let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();
                        let exists = std::path::Path::new(path).exists();
                        match exists {
                            true => {
                                match PythonQuery::new(path, pyQuery.params.clone()).execute() {
                                    Ok(rows) => {                        
                                        ApiServerResult {
                                            keepAlive: apiQuery.keepAlive,
                                            data: ApiReply::new(
                                                apiQuery.authToken(),
                                                apiQuery.id(),
                                                apiQuery.keepAlive,
                                                apiQuery.srcQuery(apiQuery.debug),
                                                rows,
                                            ).as_bytes(),
                                        }
                                    },
                                    Err(err) => {
                                        ApiServerResult {
                                            keepAlive: apiQuery.keepAlive,
                                            data: ApiReply::error(
                                                apiQuery.authToken(),
                                                apiQuery.id(),
                                                apiQuery.keepAlive,
                                                apiQuery.srcQuery(apiQuery.debug),
                                                err.debug(apiQuery.debug),
                                            ).as_bytes(),
                                        }
                                    },
                                }
                            },
                            false => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: ApiReply::error(
                                        apiQuery.authToken(),
                                        apiQuery.id(),
                                        apiQuery.keepAlive,
                                        apiQuery.srcQuery(apiQuery.debug),
                                        ApiError::new(
                                            format!("API Server - pyton script does not exists: {}", path), 
                                            format!("ApiServer.build | pyton script does not exists: {}", path), 
                                        ).debug(apiQuery.debug),
                                    ).as_bytes(),
                                }
                            },
                        }
                    },
                    None => {
                        ApiServerResult {
                            keepAlive: apiQuery.keepAlive,
                            data: ApiReply::error(
                                apiQuery.authToken(),
                                apiQuery.id(),
                                apiQuery.keepAlive,
                                apiQuery.srcQuery(apiQuery.debug),
                                ApiError::new(
                                    format!("API Server - Script with the name '{}' can't be found", pyQuery.script),
                                    format!("ApiServer.build | Error: Script with the name '{}' can't be found", pyQuery.script),
                                ).debug(apiQuery.debug),
                            ).as_bytes(),
                        }
                    },
                }
            },
            ApiQueryType::Executable(exQuery) => {
                debug!("ApiServer.build | ApiQueryType: Executable");
                debug!("ApiServer.build | ApiQueryType: Executable name: {}", exQuery.name);
                debug!("ApiServer.build | ApiQueryType: Executable name: {:?}", exQuery);
                match self.config.services.get(&exQuery.name) {
                    Some(dbConfig) => {
                        // let path = "./database.sqlite";
                        // let path = self.config.dataBases[0].path.clone();
                        let dir = std::env::current_dir().unwrap();
                        let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                        debug!("ApiServer.build | script path: {:?}", path);
                        // let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();
                        let exists = std::path::Path::new(path).exists();
                        match exists {
                            true => {
                                match ExecutableQuery::new(path, exQuery.params.clone()).execute() {
                                    Ok(rows) => {                        
                                        ApiServerResult {
                                            keepAlive: apiQuery.keepAlive,
                                            data: ApiReply::new(
                                                apiQuery.authToken(),
                                                apiQuery.id(),
                                                apiQuery.keepAlive,
                                                apiQuery.srcQuery(apiQuery.debug),
                                                rows,
                                            ).as_bytes(),
                                        }
                                    },
                                    Err(err) => {
                                        ApiServerResult {
                                            keepAlive: apiQuery.keepAlive,
                                            data: ApiReply::error(
                                                apiQuery.authToken(),
                                                apiQuery.id(),
                                                apiQuery.keepAlive,
                                                apiQuery.srcQuery(apiQuery.debug),
                                                err.debug(apiQuery.debug),
                                            ).as_bytes()
                                        }
                                    },
                                }
                            },
                            false => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: ApiReply::error(
                                        apiQuery.authToken(),
                                        apiQuery.id(),
                                        apiQuery.keepAlive,
                                        apiQuery.srcQuery(apiQuery.debug),
                                        ApiError::new(
                                            format!("API Server - Executable does not exists: {}", path),
                                            format!("ApiServer.build | Error: Executable does not exists: {}", path),
                                        ).debug(apiQuery.debug),
                                    ).as_bytes(),
                                }
                            },
                        }
                    },
                    None => {
                        ApiServerResult {
                            keepAlive: apiQuery.keepAlive,
                            data: ApiReply::error(
                                apiQuery.authToken(),
                                apiQuery.id(),
                                apiQuery.keepAlive,
                                (apiQuery).srcQuery(apiQuery.debug),
                                ApiError::new(
                                    format!("API Server - Executable service with name '{}' can't be found", exQuery.name),
                                    format!("ApiServer.build | Error: Executable service with name '{}' can't be found", exQuery.name),
                                ).debug(apiQuery.debug),
                            ).as_bytes()
                        }
                    },
                }
            },
            ApiQueryType::Unknown => {
                ApiServerResult {
                    keepAlive: apiQuery.keepAlive,
                    data: ApiReply::error(
                        apiQuery.authToken(),
                        apiQuery.id(),
                        apiQuery.keepAlive,
                        apiQuery.srcQuery(apiQuery.debug),
                        ApiError::new(
                            "API Server - Unknown type of API query",
                            "ApiServer.build | Error: Unknown type of API query",
                        ).debug(apiQuery.debug),
                    ).as_bytes(),
                }
            },
        }
        // ApiReply.asBytes()
    }
}


pub struct ApiServerResult {
    pub keepAlive: bool,
    pub data: Vec<u8>,
}
