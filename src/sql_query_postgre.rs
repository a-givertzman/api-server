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
    fn asJson(t: Type, row: &postgres::Row, idx: &str) -> serde_json::Value 
            where Self: Sized 
    {
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
                debug!("SqlQueryPostgre.asJson | Error parsing value of type '{:?}': {:?}    code: {:?}", t, err, err.as_db_error());
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
                                        // let value: serde_json::Value = match column.type_().to_owned() {
                                            // Type::BOOL => Self::asJson::<Type::BOOL>(row.try_get::<_, Option<bool>>(idx)),// .asget::<_, Option<bool>>(idx)),
                                            // Type::INT2 => row.asJson(row.try_get::<_, Option<i16>>(idx)),
                                            // Type::INT4 => row.asJson(row.try_get::<_, Option<i32>>(idx)),
                                            // Type::INT8 => row.asJson(row.try_get::<_, Option<i64>>(idx)),
                                            // Type::FLOAT4 => row.asJson(row.try_get::<_, Option<f32>>(idx)),
                                            // Type::FLOAT8 => row.asJson(row.try_get::<_, Option<f64>>(idx)),
                                            // Type::BPCHAR => row.asJson(row.try_get::<_, Option<String>>(idx)),
                                            // Type::CHAR 
                                            // | Type::TEXT | Type::VARCHAR => row.asJson(row.try_get::<_, Option<String>>(idx)),
                                            // Type::NAME => row.asJson(row.try_get::<_, Option<String>>(idx)),
                                            // Type::TIMESTAMP => row.asJson(row.try_get::<_, Option<chrono::NaiveDateTime>>(idx)),
                                            // Type::TIMESTAMPTZ => row.asJson(row.try_get::<_, Option<DateTime<Utc>>>(idx)),
                                            // Type::DATE => row.asJson(row.try_get::<_, Option<chrono::NaiveDate>>(idx)),
                                            // Type::TIME => row.asJson(row.try_get::<_, Option<chrono::NaiveTime>>(idx)),
                                            // Type::JSON 
                                            // | Type::JSONB => row.asJson(row.try_get::<_, Option<serde_json::Value>>(idx)),
                                            // Type::BOOL_ARRAY => row.asJson(row.try_get::<_, Option<Vec<bool>>>(idx)),
                                            // Type::INT2_ARRAY => row.asJson(row.try_get::<_, Option<Vec<i16>>>(idx)),
                                            // Type::INT4_ARRAY => row.asJson(row.try_get::<_, Option<Vec<i32>>>(idx)),
                                            // Type::INT8_ARRAY => row.asJson(row.try_get::<_, Option<Vec<i64>>>(idx)),
                                            // Type::FLOAT4_ARRAY => row.asJson(row.try_get::<_, Option<Vec<f32>>>(idx)),
                                            // Type::FLOAT8_ARRAY => row.asJson(row.try_get::<_, Option<Vec<f64>>>(idx)),
                                            // Type::CHAR_ARRAY 
                                            // | Type::TEXT_ARRAY 
                                            // | Type::VARCHAR_ARRAY => row.asJson(row.try_get::<_, Option<Vec<String>>>(idx)),
                                            // _ => serde_json::Value::String(format!("SqlQueryPostgre.execute | Type '{}' is not implemented yet", column.type_()))
                                        // };
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


trait ParsePostgresType<T> {
    // fn asJson(&self, idx: &str) -> serde_json::Value
    fn asJson(&self, row:  Result<Option<T>, postgres::error::Error>) -> serde_json::Value
        where Self: Sized;
}

impl ParsePostgresType<bool> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<bool>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => false,
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                false
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<i16> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<i16>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => 0,
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                0
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<i32> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<i32>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => 0,
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                0
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<i64> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<i64>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => 0,
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                0
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<f32> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<f32>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => 0.0,
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                0.0
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<f64> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<f64>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => 0.0,
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                0.0
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<chrono::NaiveDateTime> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<chrono::NaiveDateTime>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => chrono::NaiveDateTime::default(),
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                chrono::NaiveDateTime::default()
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<DateTime<Utc>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<DateTime<Utc>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => DateTime::default(),
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                DateTime::default()
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<chrono::NaiveDate> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<chrono::NaiveDate>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => chrono::NaiveDate::default(),
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                chrono::NaiveDate::default()
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<chrono::NaiveTime> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<chrono::NaiveTime>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => chrono::NaiveTime::default(),
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type BOOL: {:?}    code: {:?}", err, err.as_db_error());
                chrono::NaiveTime::default()
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<serde_json::Value> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<serde_json::Value>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => serde_json::Value::Null,
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                serde_json::Value::Null
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<String> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<String>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => String::new(),
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                String::new()
            },
        };
        json!(dbValue)
    }
}

impl ParsePostgresType<Vec<bool>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<Vec<bool>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => vec![],
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                vec![]
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<Vec<i16>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<Vec<i16>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => vec![],
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                vec![]
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<Vec<i32>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<Vec<i32>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => vec![],
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                vec![]
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<Vec<i64>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<Vec<i64>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => vec![],
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                vec![]
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<Vec<f32>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<Vec<f32>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => vec![],
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                vec![]
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<Vec<f64>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<Vec<f64>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => vec![],
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                vec![]
            },
        };
        json!(dbValue)
    }
}
impl ParsePostgresType<Vec<String>> for postgres::row::Row {
    fn asJson(&self, dbValue: Result<Option<Vec<String>>, postgres::error::Error>) -> serde_json::Value 
            where Self: Sized {
        let dbValue = match dbValue {
            Ok(value) => {
                match value {
                    Some(v) => v,
                    None => vec![],
                }
            },
            Err(err) => {
                debug!("SqlQueryPostgre.execute | Error parsing value of type CHAR | TEXT | VARCHAR: {:?}    code: {:?}", err, err.as_db_error());
                vec![]
            },
        };
        json!(dbValue)
    }
}
