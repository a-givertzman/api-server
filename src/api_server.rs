use log::debug;
use rusqlite::Connection;

use crate::{config::Config, api_query::ApiQuery, sql_query::SqlQuery, api_reply::SqlReply, api_query_type::ApiQueryType};

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
        let apiQuery = ApiQuery::fromBytes(bytes);
        debug!("[TcpServer] received ApiQuery: {:?}", apiQuery);
        let sqlReply = match apiQuery.query.clone() {
            ApiQueryType::Error => {
                SqlReply::error(
                    apiQuery.auth_token,
                    apiQuery.id,
                    apiQuery.query,
                    vec!["Error: Wrong query structure".to_string()],
                )    
            },
            ApiQueryType::Sql(sqlQuery) => {
                // let path = "./database.sqlite";
                // let path = self.config.dataBases[0].path.clone();
                let path = sqlQuery.database;
                debug!("[ApiServer] database address: {:?}", path);
                let connection = Connection::open(path).unwrap();            
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
        };
        sqlReply.asBytes()
    }
}