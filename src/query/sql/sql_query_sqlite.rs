#![allow(non_snake_case)]

use api_tools::{error::api_error::ApiError, server::api_query::row_map::RowMap};
use indexmap::IndexMap;
use log::{debug, warn};
use rusqlite::{Connection, Statement, OpenFlags};

use crate::{query::sql::sql_query::SqlQuery, config::ServiceConfig};

///
/// 
pub struct SqlQuerySqlite {
    dbConfig: ServiceConfig,
    connection: Option<Connection>,
    sql: String,
}

impl SqlQuerySqlite {
    ///
    pub fn new(dbConfig: ServiceConfig, sql: String, connection: Option<Connection>) -> SqlQuerySqlite {
        Self {
            connection,
            dbConfig,
            sql,
        }
    }
    ///
    fn fakeStmtClone(stmt: Statement<'_>) -> Statement<'_> {
        stmt
    }
}

impl SqlQuery for SqlQuerySqlite {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError> {
        let newConn: Connection;
        let connection: Result<&Connection, ApiError> = match &self.connection {
            Some(connection) => {
                Ok(connection)
            },
            None => {
                match std::env::current_dir() {
                    Ok(dir) => {
                        match dir.to_str() {
                            Some(dir) => {
                                let path: &str = &format!("{}/{}", dir, self.dbConfig.path);
                                debug!("SqlQuerySqlite.execute | database address: {:?}", path);
                                match Connection::open_with_flags(path, OpenFlags::SQLITE_OPEN_READ_WRITE) {
                                    Ok(conn) => {
                                        newConn = conn;
                                        Ok(&newConn)
                                    },
                                    Err(err) => {
                                        let detailed = format!("SqlQuerySqlite.execute | Database connection error: {}", err);
                                        warn!("{}", detailed);
                                        Err( ApiError::new(
                                            "SQLite database - connection error",
                                            detailed,
                                        ))
                                    },
                                }
                            },
                            None => {
                                let details = format!("SqlQuerySqlite.execute | Invalid path to the Database file: {:?}/{}", dir, self.dbConfig.path);
                                warn!("{}", details);
                                Err( ApiError::new(
                                    format!("SQLite database - Invalid path to the Database file \"{:?}/{}\"", dir, self.dbConfig.path),
                                    details,
                                ))
                            },
                        }
                    },
                    Err(err) => {
                        let details = format!("SqlQuerySqlite.execute | Database connection error: {}", err);
                        warn!("{}", details);
                        Err( ApiError::new(
                            "SQLite database - connection error", 
                            details,
                        ))
                    },
                }
            },
        };
        match connection {
            Ok(connection) => {
                debug!("SqlQuerySqlite.execute | preparing sql: {:?}", self.sql);
                match connection.prepare(self.sql.as_str()) {
                    Ok(stmt) => {
                        let mut cNames = vec![];
                        for item in stmt.column_names() {
                            cNames.push(item.to_string());
                        }
                        let mut stmt = SqlQuerySqlite::fakeStmtClone(stmt);
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
                                                parseErrors.push(format!("SqlQuerySqlite.execute | Error getting value from \"{}\" field; Error: {:?}", cName, err));
                                            },
                                        }
                                    }
                                    result.push(rowMap);
                                }
                                if parseErrors.is_empty() {
                                    Ok(result)
                                } else {
                                    warn!("SqlQuerySqlite.execute | parseErrors: {:?}", parseErrors);
                                    Err(ApiError::new(
                                        "SQLite database - rows parsing errors", 
                                        format!("SqlQuerySqlite.execute | rows parsing errors: {:?}", parseErrors.join("\n")), 
                                    ))
                                }
                            },
                            Err(err) => {
                                let detailed = format!("SqlQuerySqlite.execute | sql query error: {:?}", err);
                                warn!("{}", detailed);
                                Err(ApiError::new(
                                    "SQLite database - sql query error", 
                                    detailed, 
                                ))
                            },
                        }
                    },
                    Err(err) => {
                        let details = format!("SqlQuerySqlite.execute | preparing sql error: {:?}", err);
                        warn!("{}", details);
                        Err(ApiError::new("SQLite database - sql preparing error", details))
                    },
                }
            },
            Err(err) => Err(err),
        }
    }
}
