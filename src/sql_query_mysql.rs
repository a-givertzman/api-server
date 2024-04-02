#![allow(non_snake_case)]

use indexmap::IndexMap;
use log::{debug, warn};
use rusqlite::{Connection, Statement, OpenFlags};
use api_tools::{error::api_error::ApiError, server::api_query::row_map::RowMap};

use crate::{sql_query::SqlQuery, config::ServiceConfig};


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
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError> {
        let newConn: Connection;
        let connection: Result<&Connection, ApiError> = match &self.connection {
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
                    Err(err) => {
                        let detailed = format!("SqlQueryMysql.execute | Database connection error: '{}'", err);
                        warn!("{}", detailed);
                        Err(ApiError::new(
                            "MySQL database - connection error", 
                            detailed, 
                        ))
                    },
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
                        let queryResult = stmt.query([]);
                        let mut result = vec![];
                        match queryResult {
                            Ok(mut rows) => {
                                let mut parseErrors = vec![];
                                while let Some(row) = rows.next().unwrap() {
                                    debug!("row: {:?}", row);
                                    let mut rowMap = IndexMap::new();
                                    for cName in cNames.iter() {
                                        match row.get(cName.as_str()) {
                                            Ok(value) => {
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
                                            },
                                            Err(err) => {
                                                parseErrors.push(format!("SqlQueryMysql.execute | Error getting value from \"{}\" field; Error: {:?}", cName, err));
                                            },
                                        };
                                    };
                                    result.push(rowMap);
                                }
                                if parseErrors.is_empty() {
                                    Ok(result)
                                } else {
                                    warn!("SqlQueryMysql.execute | parseErrors: {:?}", parseErrors);
                                    Err(ApiError::new(
                                        "MySQL database - rows parsing errors", 
                                        format!("SqlQueryMysql.execute | rows parsing errors: {:?}", parseErrors.join("\n")), 
                                    ))
                                }
                            },
                            Err(err) => {
                                let detiled = format!("SqlQueryMysql.execute | sql query error: {:?}", err);
                                warn!("{}", &detiled);
                                Err(ApiError::new(
                                    "MySQL database - sql query error", 
                                    detiled, 
                                ))
                            },
                        }
                    },
                    Err(err) => {
                        let detiled = format!("SqlQueryMysql.execute | sql preparing error: {:?}", err);
                        warn!("{}", &detiled);
                        Err(ApiError::new(
                            "MySQL database - sql preparing error", 
                            detiled, 
                        ))
                    },
                }
            },
            Err(err) => Err(err),
        }
    }
}
