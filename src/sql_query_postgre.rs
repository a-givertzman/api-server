#![allow(non_snake_case)]

use chrono::{DateTime, Utc};
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

impl SqlQueryPostgre {
    ///
    pub fn new(dbConfig: ServiceConfig, sql: String, connection: Option<Client>) -> SqlQueryPostgre {
        Self {
            connection,
            dbConfig,
            sql,
        }
    }
}

impl SqlQuery for SqlQueryPostgre {
    fn execute(&self) -> Result<Vec<RowMap>, ErrorString> {
        let connection = match self.connection {
            Some(connection) => {
                Ok(connection)
            },
            None => {
                let path = if !self.dbConfig.user.is_empty() && !self.dbConfig.pass.is_empty() {
                    format!("postgresql://{}:{}@{}", self.dbConfig.user, self.dbConfig.pass, self.dbConfig.path)    // postgresql://user:secret@localhost
                } else {
                    format!("postgresql://{}", self.dbConfig.path)                                                  // postgresql://localhost
                };
                Client::connect(
                    &path, 
                    NoTls,
                )
            },
        };
        match connection {
            Ok(mut connection) => {
                debug!("SqlQuery.execute | preparing sql: {:?}", self.sql);
                match connection.prepare(self.sql.as_str()) {
                    Ok(stmt) => {
                        let mut cNames = vec![];
                        for column in stmt.columns() {
                            cNames.push(column.name().to_string());
                        }
                        let sqlRows = connection.query(&stmt, &[]);
                        let mut result = vec![];
                        match sqlRows {
                            Ok(mut rows) => {
                                for row in rows {
                                    // ...
                                    debug!("row: {:?}", row);
                                    let mut rowMap = HashMap::new();
                                    for column in row.columns() {
                                        let idx = column.name();
                                        let value: serde_json::Value = match column.type_().to_owned() {
                                            Type::BOOL => json!(row.get::<_, bool>(idx)),
                                            Type::INT2 => json!(row.get::<_, i16>(idx)),
                                            Type::INT4 => json!(row.get::<_, i32>(idx)),
                                            Type::INT8 => json!(row.get::<_, i64>(idx)),
                                            Type::FLOAT4 => json!(row.get::<_, f32>(idx)),
                                            Type::FLOAT8 => json!(row.get::<_, f64>(idx)),
                                            Type::CHAR | Type::TEXT | Type::VARCHAR => json!(row.get::<_, String>(idx)),
                                            Type::TIMESTAMP => {
                                                let dt: chrono::NaiveDateTime = row.get(idx);
                                                json!(dt)
                                            },
                                            Type::TIMESTAMPTZ => {
                                                // let dt: DateTime<Utc> = row.get::<_, DateTime<Utc>>(idx);
                                                json!(row.get::<_, DateTime<Utc>>(idx))
                                            },
                                            Type::DATE => {
                                                // let dt: chrono::NaiveDate = row.get(idx);
                                                json!(row.get::<_, chrono::NaiveDate>(idx))
                                            },
                                            Type::TIME => {
                                                // let dt: chrono::NaiveTime = row.get(idx);
                                                json!(row.get::<_, chrono::NaiveTime>(idx))
                                            },
                                            Type::JSON | Type::JSONB => {
                                                let v: serde_json::Value = row.get(idx);
                                                json!(v)
                                            },
                                            Type::BOOL_ARRAY => json!(row.get::<_, Vec<bool>>(idx)),
                                            Type::INT2_ARRAY => json!(row.get::<_, Vec<i16>>(idx)),
                                            Type::INT4_ARRAY => json!(row.get::<_, Vec<i32>>(idx)),
                                            Type::INT8_ARRAY => json!(row.get::<_, Vec<i64>>(idx)),
                                            Type::FLOAT4_ARRAY => json!(row.get::<_, Vec<f32>>(idx)),
                                            Type::FLOAT8_ARRAY => json!(row.get::<_, Vec<f64>>(idx)),
                                            Type::CHAR_ARRAY | Type::TEXT_ARRAY | Type::VARCHAR_ARRAY => json!(row.get::<_, Vec<String>>(idx)),
                                             
                                            _ => serde_json::Value::String(format!("Type {} is not implemented yet", column.type_()))
                                        };
                                        rowMap.insert(String::from(idx), value);
                                    }
                                    result.push(rowMap);
                                }
                            },
                            Err(err) => {
                                warn!("getting rows error: {:?}", err);
                            },
                        }
                        Ok(result)
                    },
                    Err(err) => {
                        warn!(".execute | preparing sql error: {:?}", err);
                        Err(err.to_string())
                    },
                }
            },
            Err(err) => Err(format!("SqlQuery.execute | Database connection error: '{}' can't be found", err)),
        }
    }
}
