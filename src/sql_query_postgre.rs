#![allow(non_snake_case)]

use api_tools::{error::api_error::ApiError, server::api_query::row_map::RowMap};
use chrono::{DateTime, Utc, NaiveTime, NaiveDate, NaiveDateTime};
use indexmap::IndexMap;
use rust_decimal::Decimal;
use bytes::BytesMut;
use postgres::{Client, NoTls, types::{Type, to_sql_checked, FromSql, self, Kind}};
use serde::Serialize;
use serde_json::json;


use log::{debug, warn, trace, LevelFilter};

use crate::{sql_query::SqlQuery, config::ServiceConfig};


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
            Type::NUMERIC => (self.asJson_::<Decimal>(t, row, idx), String::new()),
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
            Type::BPCHAR_ARRAY => (self.asJson_::<Vec<String>>(t, row, idx), String::new()),
            Type::CHAR_ARRAY 
            | Type::TEXT_ARRAY 
            | Type::VARCHAR_ARRAY => (self.asJson_::<Vec<String>>(t, row, idx), String::new()),
            _ => {
                return match t.to_owned().kind() {
                    Kind::Enum(_) => {
                        (self.asJson_::<GenericEnum>(t, row, idx), String::new())
                    },
                    _ => {
                        let msg = format!("SqlQueryPostgre.asJson | Error parsing value of unknown type '{:?}'", t.to_owned());
                        warn!("{}", msg);
                        (serde_json::Value::default(), msg)
                    },
                }
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
                        match self.dbConfig.replace_null_with_default {
                            Some(_) => Self::asJsonDefaultValue(t),
                            None => json!(()),
                        }
                    }
                }
            },
            Err(err) => {
                warn!("SqlQueryPostgre.asJson_ | Error parsing value of type '{:?}': {:?}\t db-err-code: {:?}", t, err, err.code());
                Self::asJsonDefaultValue(t)
            },
        }
    }   
    ///
    fn asJsonDefaultValue(t: &Type) -> serde_json::Value {
        match t.to_owned() {
            Type::BOOL => json!(false),
            Type::INT2 | Type::INT4 | Type::INT8 => json!(0),
            Type::FLOAT4 | Type::FLOAT8 | Type::NUMERIC => json!(0.0),
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
                warn!("SqlQueryPostgre.asJsonDefaultValue | Error parsing value of unknown type '{}'", t);
                serde_json::Value::Null
            }
        }
    } 
}
///
impl SqlQuery for SqlQueryPostgre {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError> {
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
                        let details = format!("SqlQueryPostgre.execute | connection error: {:?}", &err);
                        warn!("{:?}", details);
                        Err(ApiError::new(
                            "Postgres database - connection error",
                            details,
                        ))
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
                        let mut result = vec![];
                        match connection.query(&stmt, &[]) {
                            Ok(rows) => {
                                let mut parseErrors = vec![];
                                for row in rows {
                                    trace!("SqlQueryPostgre.execute | row: {:?}", row);
                                    let mut rowMap = IndexMap::new();
                                    for column in row.columns() {
                                        let idx = column.name();
                                        let (value, err): (serde_json::Value, String) = self.asJson(column.type_(), &row, &idx);
                                        if !err.is_empty() {
                                            parseErrors.push(err);
                                        }
                                        rowMap.insert(String::from(idx), value);
                                    }
                                    result.push(rowMap);
                                }
                                if log::max_level() == LevelFilter::Trace {
                                    trace!("SqlQueryPostgre.execute | result: {:?}", result);
                                } else {
                                    debug!("SqlQueryPostgre.execute | result: {:?} rows fetched", result.len());
                                    debug!("SqlQueryPostgre.execute | result: {:?}", result);
                                }
                                if parseErrors.is_empty() {
                                    Ok(result)
                                } else {
                                    let details = format!("SqlQueryPostgre.execute | rows parsing errors: {:?}", parseErrors.join("\n"));
                                    warn!("{}", details);
                                    Err(ApiError::new(
                                        "Postgres database - rows parsing errors", 
                                        details,
                                    ))
                                }
                            },
                            Err(err) => {
                                let details = format!("SqlQueryPostgre.execute | sql query error: {:?}", err);
                                warn!("{}", details);
                                Err(ApiError::new(
                                    "Postgres database - sql query error", 
                                    details, 
                                ))
                            },
                        }
                    },
                    Err(err) => {
                        let details = format!("SqlQueryPostgre.execute | sql preparing error: {}", err);
                        warn!("{}", details);
                        Err(ApiError::new(
                            "Postgres database - sql preparing error",
                            details, 
                        ))
                    },
                }
            },
            Err(err) => Err(err),
        }
    }
}



#[derive(Debug, Serialize)]
struct GenericEnum(String);

impl postgres::types::ToSql for GenericEnum {
    ///
    fn to_sql(&self, _ty: &types::Type, out: &mut BytesMut) -> Result<types::IsNull, Box<dyn std::error::Error + Sync + Send>> {
        if self.0.is_empty() {
            Ok(types::IsNull::Yes)
        } else {
            out.extend_from_slice(self.0.as_bytes());
            Ok(types::IsNull::No)
        }
    }
    ///
    fn accepts(_ty: &types::Type) -> bool { true }
    //
    to_sql_checked!();
}

impl FromSql<'_> for GenericEnum {
    ///
    fn from_sql(
        _sql_type: &Type, 
        value: &[u8]
    ) -> Result<Self, Box<dyn std::error::Error + Sync + Send>> {
        match value {
            // b"variant_a" => Ok(MyEnum::VariantA),
            // b"variant_b" => Ok(MyEnum::VariantB),
            _ => {
                let strValue = String::from_utf8(value.into()).unwrap();
                Ok(GenericEnum {0: strValue})
            },
        }
    }
    ///
    fn accepts(ty: &Type) -> bool {
        ty.name().contains("enum")
    }
}















// #[derive(Debug)]
// // #[derive(ToSql, FromSql, Debug, PartialEq, Serialize, Deserialize)]
// // #[postgres(name = "process_status")]
// pub enum tag_type_enum {
//     Bool,
//     Int,
//     UInt,
//     DInt,
//     Word,
//     LInt,
//     Real,
//     Time,
//     Date_And_Time,
// }

// impl ToSql for tag_type_enum {
//     fn to_sql(&self, _ty: &Type, out: &mut BytesMut) -> Result<IsNull, Box<dyn std::error::Error + Send + Sync>> {
//         match *self {
//             tag_type_enum::Bool => out.extend_from_slice(b"Bool"),
//             tag_type_enum::Int => out.extend_from_slice(b"Int"),
//             tag_type_enum::UInt => out.extend_from_slice(b"UInt"),
//             tag_type_enum::DInt => out.extend_from_slice(b"DInt"),
//             tag_type_enum::Word => out.extend_from_slice(b"Word"),
//             tag_type_enum::LInt => out.extend_from_slice(b"LInt"),
//             tag_type_enum::Real => out.extend_from_slice(b"Real"),
//             tag_type_enum::Time => out.extend_from_slice(b"Time"),
//             tag_type_enum::Date_And_Time => out.extend_from_slice(b"Date_And_Time"),
//             // tag_type_enum::Hello => 
//             //     out.extend_from_slice(b"HELLO"),
//             // Website::World => 
//             //     out.extend_from_slice(b"WORLD"),
//         };
//         Ok(IsNull::No)
//     }

//     fn accepts(ty: &Type) -> bool {
//         ty.name() == "website"
//     }

//     to_sql_checked!();
// }

// impl FromSql for tag_type_enum {
//     fn from_sql<R: Read>(ty: &Type, raw: &mut R, ctx: &SessionInfo) -> Result<Self> {
//         let mut buf = vec!();
//         try!(raw.read_to_end(&mut buf));
//         buf.pop(); // drop the null terminator
//         match &*buf {
//             b"sad" => Ok(Mood::Sad),
//             b"ok" => Ok(Mood::Ok),
//             b"happy" => Ok(Mood::Happy),
//             _ => Err(Error::Conversion("unknown `mood` variant".into()))
//         }
//     }

//     fn accepts(ty: &Type) -> bool {
//         ty.name() == "mood"
//     }
// }