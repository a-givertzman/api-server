use log::debug;

use crate::{
    config::Config, 
    api_query::ApiQuery, 
    api_reply::SqlReply, 
    api_query_type::ApiQueryType, 
    sql_query_sqlite::SqlQuerySqlite, 
    python_query::PythonQuery, 
    executable_query::ExecutableQuery, api_service_type::ApiServiceType, sql_query::SqlQuery, sql_query_mysql::SqlQueryMysql, sql_query_postgre::SqlQueryPostgre
};

///
pub struct ApiServer {
    config: Config
}
impl ApiServer {
    ///
    pub fn new(config: Config) -> ApiServer {
        ApiServer {
            config,
        }
    }
    ///
    fn execute(mut sqlQuery: Box<dyn SqlQuery>, auth_token: String, id: String, query: String) -> SqlReply {
        match sqlQuery.execute() {
            Ok(rows) => {                        
                SqlReply {
                    auth_token: auth_token,
                    id: id,
                    query: query,
                    data: rows,
                    error: String::new(),
                }
            },
            Err(err) => {
                SqlReply::error(
                    auth_token,
                    id,
                    query,
                    err.to_string(),
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
        match apiQuery.query.clone() {            
            ApiQueryType::Error(err) => {
                ApiServerResult {
                    keepAlive: apiQuery.keepAlive,
                    data: SqlReply::error(
                        apiQuery.auth_token,
                        apiQuery.id,
                        apiQuery.query.srcQuery(),
                        err.err,
                    ).asBytes(),
                }
            },
            ApiQueryType::Sql(sqlQuery) => {
                debug!("ApiServer.build | ApiQueryType: Sql");
                match self.config.services.get(&sqlQuery.database) {
                    Some(dbConfig) => {
                        match dbConfig.serviceType {
                            ApiServiceType::Sqlite => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: Self::execute(
                                        Box::new(SqlQuerySqlite::new(dbConfig.clone(), sqlQuery.sql.clone(), None)),
                                        apiQuery.auth_token,
                                        apiQuery.id,
                                        sqlQuery.srcQuery(),
                                    ).asBytes(),
                                }
                            },
                            ApiServiceType::MySql => {
                                let dir = std::env::current_dir().unwrap();
                                let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                                debug!("ApiServer.build | database address: {:?}", path);
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: Self::execute(
                                        Box::new(SqlQueryMysql::new(dbConfig.clone(), sqlQuery.sql.clone(), None)),
                                        apiQuery.auth_token,
                                        apiQuery.id,
                                        apiQuery.query.srcQuery(),
                                    ).asBytes(),
                                }
                            },
                            ApiServiceType::PostgreSql => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: Self::execute(
                                        Box::new(SqlQueryPostgre::new(dbConfig.clone(), sqlQuery.sql.clone(), None)),
                                        apiQuery.auth_token,
                                        apiQuery.id,
                                        apiQuery.query.srcQuery(),
                                    ).asBytes(),
                                }
                            },
                            _ => ApiServerResult {
                                keepAlive: apiQuery.keepAlive,
                                data: SqlReply::error(
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query.srcQuery(),
                                    format!("ApiServer.build | Error: Database service with the name '{}' can't be found", sqlQuery.database),
                                ).asBytes(),
                            }
                        }
                    },
                    None => ApiServerResult {
                        keepAlive: apiQuery.keepAlive,
                        data: SqlReply::error(
                            apiQuery.auth_token,
                            apiQuery.id,
                            apiQuery.query.srcQuery(),
                            format!("ApiServer.build | Error: Database service with the name '{}' can't be found", sqlQuery.database),
                        ).asBytes(),
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
                                            data: SqlReply {
                                                auth_token: apiQuery.auth_token,
                                                id: apiQuery.id,
                                                query: apiQuery.query.srcQuery(),
                                                data: rows,
                                                error: String::new(),
                                            }.asBytes(),
                                        }
                                    },
                                    Err(err) => {
                                        ApiServerResult {
                                            keepAlive: apiQuery.keepAlive,
                                            data: SqlReply::error(
                                                apiQuery.auth_token,
                                                apiQuery.id,
                                                apiQuery.query.srcQuery(),
                                                err.to_string(),
                                            ).asBytes(),
                                        }
                                    },
                                }
                            },
                            false => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: SqlReply::error(
                                        apiQuery.auth_token,
                                        apiQuery.id,
                                        apiQuery.query.srcQuery(),
                                        format!("ApiServer.build | pyton script does not exists: {}", path),
                                    ).asBytes(),
                                }
                            },
                        }
                    },
                    None => {
                        ApiServerResult {
                            keepAlive: apiQuery.keepAlive,
                            data: SqlReply::error(
                                apiQuery.auth_token,
                                apiQuery.id,
                                apiQuery.query.srcQuery(),
                                format!("ApiServer.build | Error: Script with the name '{}' can't be found", pyQuery.script),
                            ).asBytes(),
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
                                            data: SqlReply {
                                                auth_token: apiQuery.auth_token,
                                                id: apiQuery.id,
                                                query: apiQuery.query.srcQuery(),
                                                data: rows,
                                                error: String::new(),
                                            }.asBytes(),
                                        }
                                    },
                                    Err(err) => {
                                        ApiServerResult {
                                            keepAlive: apiQuery.keepAlive,
                                            data: SqlReply::error(
                                                apiQuery.auth_token,
                                                apiQuery.id,
                                                apiQuery.query.srcQuery(),
                                                err.to_string(),
                                            ).asBytes()
                                        }
                                    },
                                }
                            },
                            false => {
                                ApiServerResult {
                                    keepAlive: apiQuery.keepAlive,
                                    data: SqlReply::error(
                                        apiQuery.auth_token,
                                        apiQuery.id,
                                        apiQuery.query.srcQuery(),
                                        format!("ApiServer.build | Error: Executable does not exists: {}", path),
                                    ).asBytes(),
                                }
                            },
                        }
                    },
                    None => {
                        ApiServerResult {
                            keepAlive: apiQuery.keepAlive,
                            data: SqlReply::error(
                                apiQuery.auth_token,
                                apiQuery.id,
                                apiQuery.query.srcQuery(),
                                format!("ApiServer.build | Error: Executable with the name '{}' can't be found", exQuery.name),
                            ).asBytes()
                        }
                    },
                }
            },
            ApiQueryType::Unknown(_) => {
                ApiServerResult {
                    keepAlive: apiQuery.keepAlive,
                    data: SqlReply::error(
                        apiQuery.auth_token,
                        apiQuery.id,
                        apiQuery.query.srcQuery(),
                        "ApiServer.build | Error: Unknown type of API query".into(),
                    ).asBytes(),
                }
            },
        }
        // sqlReply.asBytes()
    }
}


pub struct ApiServerResult {
    pub keepAlive: bool,
    pub data: Vec<u8>,
}
