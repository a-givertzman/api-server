use std::sync::{Arc, Mutex};
use api_tools::{
    error::api_error::ApiError, api::reply::api_reply::ApiReply,
    server::api_query::{api_query::ApiQuery, api_query_type::ApiQueryType},
};
use crate::{
    api_service_type::ApiServiceType, config::Config, executable_query::ExecutableQuery, python_query::PythonQuery,
    server::resources::Resources, sql_query::SqlQuery, sql_query_mysql::SqlQueryMysql, sql_query_postgre::SqlQueryPostgre,
    sql_query_sqlite::SqlQuerySqlite,
};
///
/// 
pub struct ApiServer {
    config: Config,
    resources: Arc<Mutex<Resources>>,
}
impl ApiServer {
    ///
    /// 
    pub fn new(config: Config, resources: Arc<Mutex<Resources>>) -> ApiServer {
        ApiServer {
            config,
            resources
        }
    }
    ///
    /// 
    fn execute(mut sql_query: Box<dyn SqlQuery>, auth_token: String, id: String, keep_alive: bool, query: String, debug: bool) -> ApiReply {
        match sql_query.execute() {
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
    pub fn build(&self, bytes: &[u8]) -> ApiServerResult {
        let api_query = ApiQuery::from_bytes(bytes);
        match api_query.query() {            
            ApiQueryType::Error(err_query) => {
                ApiServerResult {
                    keep_alive: api_query.keep_alive,
                    data: ApiReply::error(
                        api_query.auth_token(),
                        api_query.id(),
                        api_query.keep_alive,
                        api_query.src_query(api_query.debug),
                        err_query.err().debug(api_query.debug),
                    ).as_bytes(),
                }
            },
            ApiQueryType::Sql(sql_query) => {
                log::debug!("ApiServer.build | ApiQueryType: Sql");
                match self.config.services.get(&sql_query.database) {
                    Some(db_config) => {
                        match db_config.service_type {
                            ApiServiceType::Sqlite => {
                                ApiServerResult {
                                    keep_alive: api_query.keep_alive,
                                    data: Self::execute(
                                        Box::new(SqlQuerySqlite::new(db_config.clone(), sql_query.sql, None)),
                                        api_query.auth_token(),
                                        api_query.id(),
                                        api_query.keep_alive,
                                        api_query.src_query(api_query.debug),
                                        api_query.debug,
                                    ).as_bytes(),
                                }
                            },
                            ApiServiceType::MySql => {
                                let dir = std::env::current_dir().unwrap();
                                let path: &str = &format!("{}/{}", dir.to_str().unwrap(), db_config.path);
                                log::debug!("ApiServer.build | database address: {:?}", path);
                                ApiServerResult {
                                    keep_alive: api_query.keep_alive,
                                    data: Self::execute(
                                        Box::new(SqlQueryMysql::new(db_config.clone(), sql_query.sql, None)),
                                        api_query.auth_token(),
                                        api_query.id(),
                                        api_query.keep_alive,
                                        api_query.src_query(api_query.debug),
                                        api_query.debug,
                                    ).as_bytes(),
                                }
                            },
                            ApiServiceType::PostgreSql => {
                                ApiServerResult {
                                    keep_alive: api_query.keep_alive,
                                    data: Self::execute(
                                        Box::new(SqlQueryPostgre::new(db_config.clone(), sql_query.sql, self.resources.clone())),
                                        api_query.auth_token(),
                                        api_query.id(),
                                        api_query.keep_alive,
                                        api_query.src_query(api_query.debug),
                                        api_query.debug,
                                    ).as_bytes(),
                                }
                            },
                            _ => ApiServerResult {
                                keep_alive: api_query.keep_alive,
                                data: ApiReply::error(
                                    api_query.auth_token(),
                                    api_query.id(),
                                    api_query.keep_alive,
                                    api_query.src_query(api_query.debug),
                                    ApiError::new(
                                        format!("API Server - Database service with the name '{}' can't be found", sql_query.database),
                                        format!("ApiServer.build | Error: Database service with the name '{}' can't be found", sql_query.database),
                                    ).debug(api_query.debug),
                                ).as_bytes(),
                            }
                        }
                    },
                    None => ApiServerResult {
                        keep_alive: api_query.keep_alive,
                        data: ApiReply::error(
                            api_query.auth_token(),
                            api_query.id(),
                            api_query.keep_alive,
                            api_query.src_query(api_query.debug),
                            ApiError::new(
                                format!("API Server - Database service with the name '{}' can't be found", sql_query.database),
                                format!("ApiServer.build | Error: Database service with the name '{}' can't be found", sql_query.database),
                            ).debug(api_query.debug),
                        ).as_bytes(),
                    },
                }                    
            },
            ApiQueryType::Python(py_query) => {
                log::debug!("ApiServer.build | ApiQueryType: Python");
                log::debug!("ApiServer.build | ApiQueryType: Python script: {}", py_query.script);
                match self.config.services.get(&py_query.script) {
                    Some(db_config) => {
                        // let path = "./database.sqlite";
                        // let path = self.config.dataBases[0].path.clone();
                        let dir = std::env::current_dir().unwrap();
                        let path: &str = &format!("{}/{}", dir.to_str().unwrap(), db_config.path);
                        log::debug!("ApiServer.build | script path: {:?}", path);
                        // let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();
                        let exists = std::path::Path::new(path).exists();
                        match exists {
                            true => {
                                match PythonQuery::new(path, py_query.params.clone()).execute() {
                                    Ok(rows) => {                        
                                        ApiServerResult {
                                            keep_alive: api_query.keep_alive,
                                            data: ApiReply::new(
                                                api_query.auth_token(),
                                                api_query.id(),
                                                api_query.keep_alive,
                                                api_query.src_query(api_query.debug),
                                                rows,
                                            ).as_bytes(),
                                        }
                                    },
                                    Err(err) => {
                                        ApiServerResult {
                                            keep_alive: api_query.keep_alive,
                                            data: ApiReply::error(
                                                api_query.auth_token(),
                                                api_query.id(),
                                                api_query.keep_alive,
                                                api_query.src_query(api_query.debug),
                                                err.debug(api_query.debug),
                                            ).as_bytes(),
                                        }
                                    },
                                }
                            },
                            false => {
                                ApiServerResult {
                                    keep_alive: api_query.keep_alive,
                                    data: ApiReply::error(
                                        api_query.auth_token(),
                                        api_query.id(),
                                        api_query.keep_alive,
                                        api_query.src_query(api_query.debug),
                                        ApiError::new(
                                            format!("API Server - pyton script does not exists: {}", path), 
                                            format!("ApiServer.build | pyton script does not exists: {}", path), 
                                        ).debug(api_query.debug),
                                    ).as_bytes(),
                                }
                            },
                        }
                    },
                    None => {
                        ApiServerResult {
                            keep_alive: api_query.keep_alive,
                            data: ApiReply::error(
                                api_query.auth_token(),
                                api_query.id(),
                                api_query.keep_alive,
                                api_query.src_query(api_query.debug),
                                ApiError::new(
                                    format!("API Server - Script with the name '{}' can't be found", py_query.script),
                                    format!("ApiServer.build | Error: Script with the name '{}' can't be found", py_query.script),
                                ).debug(api_query.debug),
                            ).as_bytes(),
                        }
                    },
                }
            },
            ApiQueryType::Executable(ex_query) => {
                log::debug!("ApiServer.build | ApiQueryType: Executable");
                log::debug!("ApiServer.build | ApiQueryType: Executable name: {}", ex_query.name);
                log::debug!("ApiServer.build | ApiQueryType: Executable name: {:?}", ex_query);
                match self.config.services.get(&ex_query.name) {
                    Some(db_config) => {
                        // let path = "./database.sqlite";
                        // let path = self.config.dataBases[0].path.clone();
                        let dir = std::env::current_dir().unwrap();
                        let path: &str = &format!("{}/{}", dir.to_str().unwrap(), db_config.path);
                        log::debug!("ApiServer.build | script path: {:?}", path);
                        // let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();
                        let exists = std::path::Path::new(path).exists();
                        match exists {
                            true => {
                                match ExecutableQuery::new(path, ex_query.params.clone()).execute() {
                                    Ok(rows) => {                        
                                        ApiServerResult {
                                            keep_alive: api_query.keep_alive,
                                            data: ApiReply::new(
                                                api_query.auth_token(),
                                                api_query.id(),
                                                api_query.keep_alive,
                                                api_query.src_query(api_query.debug),
                                                rows,
                                            ).as_bytes(),
                                        }
                                    },
                                    Err(err) => {
                                        ApiServerResult {
                                            keep_alive: api_query.keep_alive,
                                            data: ApiReply::error(
                                                api_query.auth_token(),
                                                api_query.id(),
                                                api_query.keep_alive,
                                                api_query.src_query(api_query.debug),
                                                err.debug(api_query.debug),
                                            ).as_bytes()
                                        }
                                    },
                                }
                            },
                            false => {
                                ApiServerResult {
                                    keep_alive: api_query.keep_alive,
                                    data: ApiReply::error(
                                        api_query.auth_token(),
                                        api_query.id(),
                                        api_query.keep_alive,
                                        api_query.src_query(api_query.debug),
                                        ApiError::new(
                                            format!("API Server - Executable does not exists: {}", path),
                                            format!("ApiServer.build | Error: Executable does not exists: {}", path),
                                        ).debug(api_query.debug),
                                    ).as_bytes(),
                                }
                            },
                        }
                    },
                    None => {
                        ApiServerResult {
                            keep_alive: api_query.keep_alive,
                            data: ApiReply::error(
                                api_query.auth_token(),
                                api_query.id(),
                                api_query.keep_alive,
                                (api_query).src_query(api_query.debug),
                                ApiError::new(
                                    format!("API Server - Executable service with name '{}' can't be found", ex_query.name),
                                    format!("ApiServer.build | Error: Executable service with name '{}' can't be found", ex_query.name),
                                ).debug(api_query.debug),
                            ).as_bytes()
                        }
                    },
                }
            },
            ApiQueryType::Unknown => {
                ApiServerResult {
                    keep_alive: api_query.keep_alive,
                    data: ApiReply::error(
                        api_query.auth_token(),
                        api_query.id(),
                        api_query.keep_alive,
                        api_query.src_query(api_query.debug),
                        ApiError::new(
                            "API Server - Unknown type of API query",
                            "ApiServer.build | Error: Unknown type of API query",
                        ).debug(api_query.debug),
                    ).as_bytes(),
                }
            },
        }
        // ApiReply.asBytes()
    }
}


pub struct ApiServerResult {
    pub keep_alive: bool,
    pub data: Vec<u8>,
}
