use log::debug;
use rusqlite::{Connection, OpenFlags};

use crate::{config::Config, api_query::ApiQuery, sql_query::SqlQuery, api_reply::SqlReply, api_query_type::ApiQueryType, python_query::PythonQuery};

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
    pub fn build(&self, bytes: Vec<u8>) -> Vec<u8> {
        let sqlReply = match ApiQuery::fromBytes(bytes) {
            Ok(apiQuery) => {
                debug!("[TcpServer] received ApiQuery: {:?}", apiQuery);
                match apiQuery.query.clone() {
                    ApiQueryType::Error => {
                        SqlReply::error(
                            apiQuery.auth_token,
                            apiQuery.id,
                            apiQuery.query,
                            vec!["Error: Wrong query structure".to_string()],
                        )    
                    },
                    ApiQueryType::Sql(sqlQuery) => {
                        debug!("[ApiServer] ApiQueryType: Sql");
                        match self.config.services.get(&sqlQuery.database) {
                            Some(dbConfig) => {
                                // let path = "./database.sqlite";
                                // let path = self.config.dataBases[0].path.clone();
                                let dir = std::env::current_dir().unwrap();
                                let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                                debug!("[ApiServer] database address: {:?}", path);
                                let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();            
                                match connection {
                                    Ok(connection) => {
                                        let result = SqlQuery::new(&connection, sqlQuery.sql.clone()).execute();
                                        match result {
                                            Ok(rows) => {                        
                                                SqlReply {
                                                    auth_token: apiQuery.auth_token,
                                                    id: apiQuery.id,
                                                    query: apiQuery.query,
                                                    data: rows,
                                                    errors: vec![],
                                                }
                                            },
                                            Err(err) => {
                                                SqlReply::error(
                                                    apiQuery.auth_token,
                                                    apiQuery.id,
                                                    apiQuery.query,
                                                    vec![err.to_string()],
                                                )
                                            },
                                        }                        
                                    },
                                    Err(err) => {
                                        SqlReply::error(
                                            apiQuery.auth_token,
                                            apiQuery.id,
                                            apiQuery.query,
                                            vec![err.to_string()],
                                        )
                                    },
                                }
                            },
                            None => {
                                SqlReply::error(
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query,
                                    vec![format!("ApiServer.build | Error: Database with the namne '{}' can't be found", sqlQuery.database)],
                                )
                            },
                        }                    
                    },
                    ApiQueryType::Python(pyQuery) => {
                        debug!("[ApiServer] ApiQueryType: Python");
                        debug!("[ApiServer] ApiQueryType: Python script: {}", pyQuery.script);
                        match self.config.services.get(&pyQuery.script) {
                            Some(dbConfig) => {
                                // let path = "./database.sqlite";
                                // let path = self.config.dataBases[0].path.clone();
                                let dir = std::env::current_dir().unwrap();
                                let path: &str = &format!("{}/{}", dir.to_str().unwrap(), dbConfig.path);
                                debug!("[ApiServer] script path: {:?}", path);
                                // let connection = Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE); // ::open(path).unwrap();
                                let exists = std::path::Path::new(path).exists();
                                match exists {
                                    true => {
                                        let result = PythonQuery::new(path, pyQuery.params.clone()).execute();
                                        match result {
                                            Ok(rows) => {                        
                                                SqlReply {
                                                    auth_token: apiQuery.auth_token,
                                                    id: apiQuery.id,
                                                    query: apiQuery.query,
                                                    data: rows,
                                                    errors: vec![],
                                                }
                                            },
                                            Err(err) => {
                                                SqlReply::error(
                                                    apiQuery.auth_token,
                                                    apiQuery.id,
                                                    apiQuery.query,
                                                    vec![err.to_string()],
                                                )
                                            },
                                        }                        
                                    },
                                    false => {
                                        SqlReply::error(
                                            apiQuery.auth_token,
                                            apiQuery.id,
                                            apiQuery.query,
                                            vec![format!("pyton script does not exists: {}", path)],
                                        )
                                    },
                                }
                            },
                            None => {
                                SqlReply::error(
                                    apiQuery.auth_token,
                                    apiQuery.id,
                                    apiQuery.query,
                                    vec![format!("ApiServer.build | Error: Script with the namne '{}' can't be found", pyQuery.script)],
                                )
                            },
                        }
                    },
                }
            },
            Err(err) => {
                SqlReply::error(
                    "unknown".into(),
                    "unknown".into(),
                    ApiQueryType::Error,
                    vec![err.to_string()],
                )
            },
        };
        sqlReply.asBytes()
    }
}