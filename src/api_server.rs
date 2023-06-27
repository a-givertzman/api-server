use log::debug;
use rusqlite::Connection;

use crate::{config::Config, api_query::ApiQuery, sql_query::SqlQuery, api_reply::SqlReply};

///
pub struct ApiServer<'a> {
    config: &'a Config
}
impl<'a> ApiServer<'_> {
    ///
    pub fn new(config: &Config) -> ApiServer {
        ApiServer {
            config,
        }
    }
    ///
    pub fn build(&self, bytes: Vec<u8>) -> Vec<u8> {
        let sqlQuery = ApiQuery::fromBytes(bytes);
        debug!("[TcpServer] received point: {:?}", sqlQuery);
        let sqlReply = if !sqlQuery.sql.is_empty() {
            let path = "./database.sqlite";
            let connection = Connection::open(path).unwrap();            
            let result = SqlQuery::new(&connection, sqlQuery.sql.clone()).execute();
            match result {
                Ok(rows) => {                        
                    SqlReply {
                        auth_token: sqlQuery.auth_token,
                        id: sqlQuery.id,
                        sql: sqlQuery.sql,
                        data: rows,
                        errors: vec![],
                    }
                },
                Err(err) => {
                    SqlReply::error(
                        sqlQuery.auth_token,
                        sqlQuery.id,
                        sqlQuery.sql,
                        vec![err.to_string()],
                    )
                },
            }
        } else {
            SqlReply::error(
                sqlQuery.auth_token,
                sqlQuery.id,
                sqlQuery.sql,
                vec!["Error: Wrong SQL syntax in query".to_string()],
            )
        };
        sqlReply.asBytes()
    }
}