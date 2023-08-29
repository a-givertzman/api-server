#![allow(non_snake_case)]

use std::collections::HashMap;

use log::{debug, warn};
use rusqlite::{Connection, Statement, OpenFlags};

use crate::{sql_query::{SqlQuery, ErrorString}, config::ServiceConfig};

type RowMap = HashMap<String, serde_json::Value>;


/// 
pub struct SqlQueryMysql {
    dbConfig: ServiceConfig,
    connection: Option<Connection>,
    sql: String,
}

impl SqlQueryMysql {
    ///
    pub fn new(dbConfig: ServiceConfig, sql: String, connection: Option<Connection>) -> SqlQueryMysql {
        Self {
            connection,
            dbConfig,
            sql,
        }
    }
    ///
    fn fakeStmtClone<'b>(stmt: Statement<'b>) -> Statement<'b> {
        stmt
    }
}

impl SqlQuery for SqlQueryMysql {
    fn execute(&mut self) -> Result<Vec<RowMap>, ErrorString> {
        let newConn: Connection;
        let connection: Result<&Connection, String> = match &self.connection {
            Some(connection) => {
                Ok(connection)
            },
            None => {
                let path = self.dbConfig.path.clone();
                match Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE) {        // ::open(path).unwrap();
                    Ok(conn) => {
                        newConn = conn;
                        Ok(&newConn)
                    },
                    Err(err) => Err(format!("SqlQueryMysql.execute | Database connection error: {}", err)),
                }
            },
        };
        match connection {
            Ok(connection) => {
                debug!("SqlQueryMysql.execute | preparing sql: {:?}", self.sql);
                match connection.prepare(self.sql.as_str()) {
                    Ok(stmt) => {
                        let mut cNames = vec![];
                        for item in stmt.column_names() {
                            cNames.push(item.to_string());
                        }
                        let mut stmt = SqlQueryMysql::fakeStmtClone(stmt);
                        let sqlRows = stmt.query([]);
                        let mut result = vec![];
                        match sqlRows {
                            Ok(mut rows) => {
                                while let Some(row) = rows.next().unwrap() {
                                    // ...
                                    debug!("row: {:?}", row);
                                    let mut rowMap = HashMap::new();
                                    for cName in cNames.iter() {
                                        let value: rusqlite::types::Value = row.get(cName.as_str()).expect(&format!("SqlQueryMysql.execute | Error getting value from \"{}\" field", cName));
                                        let value: serde_json::Value = match value {
                                            rusqlite::types::Value::Null => serde_json::Value::Null,
                                            rusqlite::types::Value::Integer(v) => serde_json::Value::Number(serde_json::Number::from(v)),
                                            rusqlite::types::Value::Real(v) => serde_json::Value::Number(serde_json::Number::from_f64(v).unwrap()),
                                            rusqlite::types::Value::Text(v) => serde_json::Value::String(v),
                                            rusqlite::types::Value::Blob(v) => {
                                                let mut arr = vec![];
                                                for i in v {
                                                    arr.push(
                                                        serde_json::Value::Number(
                                                            serde_json::Number::from(i)
                                                        )
                                                    )
                                                }
                                                serde_json::Value::Array(arr)
                                            }
                                        };
                                        rowMap.insert(String::from(cName), value);
                                    }
                                    result.push(rowMap);
                                }
                            },
                            Err(err) => {
                                warn!("SqlQueryMysql.execute | getting rows error: {:?}", err);
                            },
                        }
                        Ok(result)
                    },
                    Err(err) => {
                        warn!("SqlQueryMysql.execute | preparing sql error: {:?}", err);
                        Err(err.to_string())
                    },
                }
            },
            Err(err) => Err(format!("SqlQueryMysql.execute | Database connection error: '{}' can't be found", err)),
        }
    }
}
