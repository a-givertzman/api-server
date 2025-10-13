use api_tools::error::api_error::ApiError;
use indexmap::IndexMap;
use rusqlite::{Connection, Statement};
use sal_core::error::Error;
use crate::sql_query::SqlQuery;
type RowMap = IndexMap<String, serde_json::Value>;


/// 
pub struct SqlQuerySqlite<'a> {
    connection: &'a Connection,
    sql: String,
}

impl<'a> SqlQuerySqlite<'a> {
    ///
    pub fn new(connection: &'a Connection, sql: String) -> SqlQuerySqlite<'a> {
        Self {
            connection,
            sql: sql.to_string(),
        }
    }
    ///
    fn fake_stmt_clone<'b>(stmt: Statement<'b>) -> Statement<'b> {
        stmt
    }
}

impl SqlQuery for SqlQuerySqlite<'_> {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError> {
        let error = Error::new("SqlQuerySqlite", "execute");
        let connection = self.connection;
        log::debug!(".execute | preparing sql: {:?}", self.sql);
        let mut errors = vec![];
        match connection.prepare(self.sql.as_str()) {
            Ok(stmt) => {
                let mut c_names = vec![];
                for item in stmt.column_names() {
                    c_names.push(item.to_string());
                }
                let mut stmt = SqlQuerySqlite::fake_stmt_clone(stmt);
                let sql_rows = stmt.query([]);
                let mut result = vec![];
                match sql_rows {
                    Ok(mut rows) => {
                        while let Some(row) = rows.next().unwrap() {
                            // ...
                            log::debug!("row: {:?}", row);
                            let mut row_map = IndexMap::new();
                            for c_name in c_names.iter() {
                                // let value: rusqlite::types::Value = row.get(c_name.as_str()).expect(&format!("Error getting value from \"{}\" field", c_name));
                                match row.get(c_name.as_str()) {
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
                                        row_map.insert(String::from(c_name), value);
                                    }
                                    Err(err) => {
                                        errors.push(error.pass_with(format!("Can't get '{c_name}' from {:?}", row), err.to_string()));
                                    }
                                }
                            }
                            result.push(row_map);
                        }
                    },
                    Err(err) => {
                        log::warn!("getting rows error: {:?}", err);
                    },
                };
                Ok(result)
            },
            Err(err) => {
                log::warn!(".execute | Can't prepare sql '{}': {:?}", self.sql.as_str(), err);
                Err(ApiError::new(
                    format!("Can't prepare sql '{}': {:?}", self.sql.as_str(), err),
                    err.to_string(),
                ))
            },
        }
    }
}

///
pub struct SqlQueryMysql<'a> {
    connection: &'a Connection,
    sql: String,
}
///
impl<'a> SqlQueryMysql<'a> {
    ///
    pub fn new(connection: &'a Connection, sql: String) -> SqlQueryMysql<'a> {
        Self {
            connection,
            sql: sql.to_string(),
        }
    }
    ///
    fn fake_stmt_clone<'b>(stmt: Statement<'b>) -> Statement<'b> {
        stmt
    }
}
///
impl SqlQuery for SqlQueryMysql<'_> {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError> {
        let error = Error::new("SqlQueryMysql", "execute");
        let connection = self.connection;
        log::debug!(".execute | preparing sql: {:?}", self.sql);
        let mut errors = vec![];
        match connection.prepare(self.sql.as_str()) {
            Ok(stmt) => {
                let mut c_names = vec![];
                for item in stmt.column_names() {
                    c_names.push(item.to_string());
                }
                let mut stmt = SqlQuerySqlite::fake_stmt_clone(stmt);
                let sql_rows = stmt.query([]);
                let mut result = vec![];
                match sql_rows {
                    Ok(mut rows) => {
                        while let Some(row) = rows.next().unwrap() {
                            // ...
                            log::debug!("row: {:?}", row);
                            let mut row_map = IndexMap::new();
                            for c_name in c_names.iter() {
                                // let value: rusqlite::types::Value = row.get(c_name.as_str()).expect(&format!("Error getting value from \"{}\" field", c_name));
                                match row.get(c_name.as_str()) {
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
                                        row_map.insert(String::from(c_name), value);
                                    }
                                    Err(err) => {
                                        errors.push(error.pass_with(format!("Can't get '{c_name}' from {:?}", row), err.to_string()));
                                    }
                                }
                            }
                            result.push(row_map);
                        }
                    },
                    Err(err) => {
                        log::warn!("getting rows error: {:?}", err);
                    },
                };
                if errors.is_empty() {
                    return Ok(result);
                }
                Err(ApiError::new(
                    "Sql parse error",
                    errors.into_iter().fold(String::new(), |acc, e| format!("{acc}\n\t{e}"))
                ))
            },
            Err(err) => {
                log::warn!(".execute | Can't prepare sql '{}': {:?}", self.sql.as_str(), err);
                Err(ApiError::new(
                    format!("Can't prepare sql '{}': {:?}", self.sql.as_str(), err),
                    err.to_string(),
                ))
            },
        }
    }
}

///
pub struct SqlQueryPostgre<'a> {
    connection: &'a Connection,
    sql: String,
}
///
impl<'a> SqlQueryPostgre<'a> {
    ///
    pub fn new(connection: &'a Connection, sql: String) -> SqlQueryPostgre<'a> {
        Self {
            connection,
            sql: sql.to_string(),
        }
    }
    ///
    fn fake_stmt_clone<'b>(stmt: Statement<'b>) -> Statement<'b> {
        stmt
    }
}
///
impl SqlQuery for SqlQueryPostgre<'_> {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError> {
        let error = Error::new("SqlQueryPostgre", "execute");
        let connection = self.connection;
        log::debug!(".execute | preparing sql: {:?}", self.sql);
        let mut errors = vec![];
        match connection.prepare(self.sql.as_str()) {
            Ok(stmt) => {
                let mut c_names = vec![];
                for item in stmt.column_names() {
                    c_names.push(item.to_string());
                }
                let mut stmt = SqlQuerySqlite::fake_stmt_clone(stmt);
                let sql_rows = stmt.query([]);
                let mut result = vec![];
                match sql_rows {
                    Ok(mut rows) => {
                        while let Some(row) = rows.next().unwrap() {
                            // ...
                            log::debug!("row: {:?}", row);
                            let mut row_map = IndexMap::new();
                            for c_name in c_names.iter() {
                                // let value: rusqlite::types::Value = row.get(c_name.as_str()).expect(&format!("Error getting value from \"{}\" field", c_name));
                                match row.get(c_name.as_str()) {
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
                                        row_map.insert(String::from(c_name), value);
                                    }
                                    Err(err) => {
                                        errors.push(error.pass_with(format!("Can't get '{c_name}' from {:?}", row), err.to_string()));
                                    }
                                }
                            }
                            result.push(row_map);
                        }
                    },
                    Err(err) => {
                        log::warn!("getting rows error: {:?}", err);
                    },
                };
                if errors.is_empty() {
                    return Ok(result);
                }
                Err(ApiError::new(
                    "Sql parse error",
                    errors.into_iter().fold(String::new(), |acc, e| format!("{acc}\n\t{e}"))
                ))
            },
            Err(err) => {
                log::warn!(".execute | Can't prepare sql '{}': {:?}", self.sql.as_str(), err);
                Err(ApiError::new(
                    format!("Can't prepare sql '{}': {:?}", self.sql.as_str(), err),
                    err.to_string(),
                ))
            },
        }
    }
}