#![allow(non_snake_case)]

use chrono::{DateTime, Utc, NaiveTime, NaiveDate, NaiveDateTime};
use postgres::{Client, NoTls, types::Type};
use serde::Serialize;
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
    fn asJson(&self, t: &Type, row: &postgres::Row, idx: &str) -> (serde_json::Value, String) {
        match t.to_owned() {
            Type::BOOL => (self.asJson_::<bool>(t, row, idx), String::new()),
            Type::INT2 => (self.asJson_::<i16>(t, row, idx), String::new()),
            Type::INT4 => (self.asJson_::<i32>(t, row, idx), String::new()),
            Type::INT8 => (self.asJson_::<i64>(t, row, idx), String::new()),
            Type::FLOAT4 => (self.asJson_::<f32>(t, row, idx), String::new()),
            Type::FLOAT8 => (self.asJson_::<f64>(t, row, idx), String::new()),
            Type::BPCHAR => (self.asJson_::<String>(t, row, idx), String::new()),
            Type::CHAR 
            | Type::TEXT | Type::VARCHAR => (self.asJson_::<String>(t, row, idx), String::new()),
            Type::NAME => (self.asJson_::<String>(t, row, idx), String::new()),
            Type::TIMESTAMP => (self.asJson_::<NaiveDateTime>(t, row, idx), String::new()),
            Type::TIMESTAMPTZ => (self.asJson_::<DateTime<Utc>>(t, row, idx), String::new()),
            Type::DATE => (self.asJson_::<NaiveDate>(t, row, idx), String::new()),
            Type::TIME => (self.asJson_::<NaiveTime>(t, row, idx), String::new()),
            Type::JSON 
            | Type::JSONB => (self.asJson_::<serde_json::Value>(t, row, idx), String::new()),
            Type::BOOL_ARRAY => (self.asJson_::<Vec<bool>>(t, row, idx), String::new()),
            Type::INT2_ARRAY => (self.asJson_::<Vec<i16>>(t, row, idx), String::new()),
            Type::INT4_ARRAY => (self.asJson_::<Vec<i32>>(t, row, idx), String::new()),
            Type::INT8_ARRAY => (self.asJson_::<Vec<i64>>(t, row, idx), String::new()),
            Type::FLOAT4_ARRAY => (self.asJson_::<Vec<f32>>(t, row, idx), String::new()),
            Type::FLOAT8_ARRAY => (self.asJson_::<Vec<f64>>(t, row, idx), String::new()),
            Type::CHAR_ARRAY 
            | Type::TEXT_ARRAY 
            | Type::VARCHAR_ARRAY => (self.asJson_::<Vec<String>>(t, row, idx), String::new()),
            _ => {
                let msg = format!("SqlQueryPostgre.asJson | Error parsing value of unknown type '{}'", t);
                warn!("{}", msg);
                // serde_json::Value::Null
                (serde_json::Value::default(), msg)
            }
        }
    }
    ///
    fn asJson_<'a, T: postgres::types::FromSql<'a> + Serialize>(&self, t: &Type, row: &'a postgres::Row, idx: &str) -> serde_json::Value {
        let dbValue = row.try_get::<_, Option<T>>(idx);
        match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => json!(v),
                    None => {
                        match self.dbConfig.replaceNullWithDefault {
                            Some(_) => Self::asJsonDefaultValue(t),
                            None => json!(()),
                        }
                    }
                }
            },
            Err(err) => {
                warn!("SqlQueryPostgre.asJson | Error parsing value of type '{:?}': {:?}\t db-err-code: {:?}", t, err, err.code());
                Self::asJsonDefaultValue(t)
            },
        }
    }   
    ///
    fn asJsonDefaultValue(t: &Type) -> serde_json::Value {
        match t.to_owned() {
            Type::BOOL => json!(false),
            Type::INT2 | Type::INT4 | Type::INT8 => json!(0),
            Type::FLOAT4 | Type::FLOAT8 => json!(0.0),
            Type::BPCHAR
            | Type::CHAR 
            | Type::TEXT 
            | Type::VARCHAR
            | Type::NAME => json!(String::new()),
            Type::TIMESTAMP => json!(NaiveDateTime::default()),
            Type::TIMESTAMPTZ => {
                let value: DateTime<Utc> = DateTime::default();
                json!(value)
            },
            Type::DATE => json!(NaiveDate::default()),
            Type::TIME => json!(NaiveTime::default()),
            Type::JSON 
            | Type::JSONB => json!({}),
            Type::BOOL_ARRAY => {
                let value: Vec<bool> = vec![];
                json!(value)
            },
            Type::INT2_ARRAY | Type::INT4_ARRAY | Type::INT8_ARRAY => {
                let value: Vec<i64> = vec![];
                json!(value)
            },
            Type::FLOAT4_ARRAY | Type::FLOAT8_ARRAY => {
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
                warn!("SqlQueryPostgre.asJson | Error parsing value of unknown type '{}'", t);
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
                                let mut parseErrors = vec![];
                                for row in rows {
                                    debug!("row: {:?}", row);
                                    let mut rowMap = HashMap::new();
                                    for column in row.columns() {
                                        let idx = column.name();
                                        let (value, err): (serde_json::Value, String) = self.asJson(column.type_(), &row, &idx);
                                        parseErrors.push(err);
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
                        let msg = format!("SqlQueryPostgre.execute | preparing sql error: {:?}", err);
                        warn!("{}", msg);
                        Err(msg)
                    },
                }
            },
            Err(err) => Err(format!("SqlQueryPostgre.execute | Database connection error: '{}'", err)),
        }
    }
}
