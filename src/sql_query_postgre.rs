#![allow(non_snake_case)]

use chrono::{DateTime, Utc, NaiveTime, NaiveDate, NaiveDateTime};
use postgres::{Client, NoTls, types::Type};
use serde_json::json;

use std::collections::HashMap;

use log::{debug, warn};

use crate::{sql_query::{SqlQuery, ErrorString}, config::ServiceConfig};

type RowMap = HashMap<String, serde_json::Value>;


/// 
pub struct SqlQueryPostgre {
    dbConfig: ServiceConfig,
    connection: Option<Client>,
    sql: String,
}
///
impl SqlQueryPostgre {
    ///
    pub fn new(dbConfig: ServiceConfig, sql: String, connection: Option<Client>) -> SqlQueryPostgre {
        Self {
            connection,
            dbConfig,
            sql,
        }
    }
    ///
    fn asJson(t: Type, row: &postgres::Row, idx: &str) -> serde_json::Value {
        let dbValue = row.try_get::<_, Option<_>>(idx);
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => {
                        Self::asJsonDefaultValue(t)
                    }
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.asJson | Error parsing value of type '{:?}': {:?}\t db-err-code: {:?}", t, err, err.code());
                Self::asJsonDefaultValue(t)
            },
        };
        json!(dbValue)
    }   
    ///
    fn asJsonDefaultValue(t: Type) -> serde_json::Value {
        match t {
            Type::BOOL => json!(false),
            Type::INT2 => json!(0),
            Type::INT4 => json!(0),
            Type::INT8 => json!(0),
            Type::FLOAT4 => json!(0.0),
            Type::FLOAT8 => json!(0.0),
            Type::BPCHAR => json!(0.0),
            Type::CHAR 
            | Type::TEXT | Type::VARCHAR => json!(String::new()),
            Type::NAME => json!(String::new()),
            Type::TIMESTAMP => json!(NaiveDateTime::default()),
            Type::TIMESTAMPTZ => {
                let value: DateTime<Utc> = DateTime::default();
                json!(value)
            },
            Type::DATE => json!(NaiveDate::default()),
            Type::TIME => json!(NaiveTime::default()),
            Type::JSON 
            | Type::JSONB => json!(serde_json::Value::Null),
            Type::BOOL_ARRAY => {
                let value: Vec<bool> = vec![];
                json!(value)
            },
            Type::INT2_ARRAY => {
                let value: Vec<i16> = vec![];
                json!(value)
            },
            Type::INT4_ARRAY => {
                let value: Vec<i32> = vec![];
                json!(value)
            },
            Type::INT8_ARRAY => {
                let value: Vec<i64> = vec![];
                json!(value)
            },
            Type::FLOAT4_ARRAY => {
                let value: Vec<f32> = vec![];
                json!(value)
            },
            Type::FLOAT8_ARRAY => {
                let value: Vec<f64> = vec![];
                json!(value)
            },
            Type::CHAR_ARRAY 
            | Type::TEXT_ARRAY 
            | Type::VARCHAR_ARRAY => {
                let value: Vec<String> = vec![];
                json!(value)
            },
            _ => {
                debug!("SqlQueryPostgre.asJson | Error parsing value of unknown type '{}'", t);
                serde_json::Value::Null
            }
        }
    } 
}
///
impl SqlQuery for SqlQueryPostgre {
    fn execute(&mut self) -> Result<Vec<RowMap>, ErrorString> {
        let mut newConn: Client;
        let connection = match &mut self.connection {
            Some(connection) => {
                Ok(connection)
            },
            None => {
                let path = if !self.dbConfig.user.is_empty() && !self.dbConfig.pass.is_empty() {
                    format!("postgresql://{}:{}@{}/{}", self.dbConfig.user, self.dbConfig.pass, self.dbConfig.path, self.dbConfig.name)    // postgresql://user:secret@localhost
                } else {
                    format!("postgresql://{}/{}", self.dbConfig.path, self.dbConfig.name)                                                  // postgresql://localhost
                };
                debug!("SqlQueryPostgre.execute | connecting with params: {:?}", &path);
                match Client::connect(&path, NoTls) {
                    Ok(conn) => {
                        newConn = conn;
                        Ok(&mut newConn)
                    },
                    Err(err) => {
                        debug!("SqlQueryPostgre.execute | connection error: {:?}", &err);
                        Err(err)
                    },
                }
            },
        };
        match connection {
            Ok(connection) => {
                debug!("SqlQueryPostgre.execute | preparing sql: {:?}", self.sql);
                match connection.prepare(self.sql.as_str()) {
                    Ok(stmt) => {
                        let mut cNames = vec![];
                        for column in stmt.columns() {
                            cNames.push(column.name().to_string());
                        }
                        let sqlRows = connection.query(&stmt, &[]);
                        let mut result = vec![];
                        match sqlRows {
                            Ok(rows) => {
                                for row in rows {
                                    debug!("row: {:?}", row);
                                    let mut rowMap = HashMap::new();
                                    for column in row.columns() {
                                        let idx = column.name();
                                        let value: serde_json::Value = Self::asJson(column.type_().to_owned(), &row, idx);
                                        rowMap.insert(String::from(idx), value);
                                    }
                                    result.push(rowMap);
                                }
                            },
                            Err(err) => {
                                warn!("SqlQueryPostgre.execute | getting rows error: {:?}", err);
                            },
                        }
                        // debug!("SqlQueryPostgre.execute | result: {:?}", result);
                        Ok(result)
                    },
                    Err(err) => {
                        warn!("SqlQueryPostgre.execute | preparing sql error: {:?}", err);
                        Err(err.to_string())
                    },
                }
            },
            Err(err) => Err(format!("SqlQueryPostgre.execute | Database connection error: '{}'", err)),
        }
    }
}
