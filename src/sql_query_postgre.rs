use std::sync::{Arc, Mutex};

use api_tools::{error::api_error::ApiError, server::api_query::row_map::RowMap};
use chrono::{DateTime, Utc, NaiveTime, NaiveDate, NaiveDateTime};
use indexmap::IndexMap;
use rust_decimal::Decimal;
use bytes::BytesMut;
use postgres::{Client, NoTls, types::{Type, to_sql_checked, FromSql, self, Kind}};
use serde::Serialize;
use serde_json::json;
use log::LevelFilter;
use crate::{config::ServiceConfig, server::{resource::Resource, resource_kind::ResourceKind, resources::Resources}, sql_query::SqlQuery};
///
/// 
pub struct SqlQueryPostgre {
    db_config: ServiceConfig,
    resources: Arc<Mutex<Resources>>,
    sql: String,
}
//
//
impl SqlQueryPostgre {
    ///
    /// Returns SqlQueryPostgre new instance
    pub fn new(db_config: ServiceConfig, sql: String, resources: Arc<Mutex<Resources>>,) -> SqlQueryPostgre {
        Self {
            db_config,
            resources,
            sql,
        }
    }
    ///
    fn as_json(&self, t: &Type, row: &postgres::Row, idx: &str) -> (serde_json::Value, String) {
        match t.to_owned() {
            Type::BOOL => (self.as_json_::<bool>(t, row, idx), String::new()),
            Type::INT2 => (self.as_json_::<i16>(t, row, idx), String::new()),
            Type::INT4 => (self.as_json_::<i32>(t, row, idx), String::new()),
            Type::INT8 => (self.as_json_::<i64>(t, row, idx), String::new()),
            Type::FLOAT4 => (self.as_json_::<f32>(t, row, idx), String::new()),
            Type::FLOAT8 => (self.as_json_::<f64>(t, row, idx), String::new()),
            Type::NUMERIC => (self.as_json_::<Decimal>(t, row, idx), String::new()),
            Type::BPCHAR => (self.as_json_::<String>(t, row, idx), String::new()),
            Type::CHAR 
            | Type::TEXT | Type::VARCHAR => (self.as_json_::<String>(t, row, idx), String::new()),
            Type::NAME => (self.as_json_::<String>(t, row, idx), String::new()),
            Type::TIMESTAMP => (self.as_json_::<NaiveDateTime>(t, row, idx), String::new()),
            Type::TIMESTAMPTZ => (self.as_json_::<DateTime<Utc>>(t, row, idx), String::new()),
            Type::DATE => (self.as_json_::<NaiveDate>(t, row, idx), String::new()),
            Type::TIME => (self.as_json_::<NaiveTime>(t, row, idx), String::new()),
            Type::JSON 
            | Type::JSONB => (self.as_json_::<serde_json::Value>(t, row, idx), String::new()),
            Type::BOOL_ARRAY => (self.as_json_::<Vec<bool>>(t, row, idx), String::new()),
            Type::INT2_ARRAY => (self.as_json_::<Vec<i16>>(t, row, idx), String::new()),
            Type::INT4_ARRAY => (self.as_json_::<Vec<i32>>(t, row, idx), String::new()),
            Type::INT8_ARRAY => (self.as_json_::<Vec<i64>>(t, row, idx), String::new()),
            Type::FLOAT4_ARRAY => (self.as_json_::<Vec<f32>>(t, row, idx), String::new()),
            Type::FLOAT8_ARRAY => (self.as_json_::<Vec<f64>>(t, row, idx), String::new()),
            Type::BPCHAR_ARRAY => (self.as_json_::<Vec<String>>(t, row, idx), String::new()),
            Type::CHAR_ARRAY 
            | Type::TEXT_ARRAY 
            | Type::VARCHAR_ARRAY => (self.as_json_::<Vec<String>>(t, row, idx), String::new()),
            _ => {
                return match t.to_owned().kind() {
                    Kind::Enum(_) => {
                        (self.as_json_::<GenericEnum>(t, row, idx), String::new())
                    },
                    _ => {
                        let msg = format!("SqlQueryPostgre.asJson | Error parsing value of unknown type '{:?}'", t.to_owned());
                        log::warn!("{}", msg);
                        (serde_json::Value::default(), msg)
                    },
                }
            }
        }
    }
    ///
    fn as_json_<'a, T: postgres::types::FromSql<'a> + Serialize>(&self, t: &Type, row: &'a postgres::Row, idx: &str) -> serde_json::Value {
        let db_value = row.try_get::<_, Option<T>>(idx);
        match db_value {
            Ok(value) => {
                match value {
                    Some(v) => json!(v),
                    None => {
                        match self.db_config.replace_null_with_default {
                            Some(_) => Self::as_json_default_value(t),
                            None => json!(()),
                        }
                    }
                }
            },
            Err(err) => {
                log::warn!("SqlQueryPostgre.asJson_ | Error parsing value of type '{:?}': {:?}\t db-err-code: {:?}", t, err, err.code());
                Self::as_json_default_value(t)
            },
        }
    }   
    ///
    fn as_json_default_value(t: &Type) -> serde_json::Value {
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
                log::warn!("SqlQueryPostgre.asJsonDefaultValue | Error parsing value of unknown type '{}'", t);
                serde_json::Value::Null
            }
        }
    } 
}
///
impl SqlQuery for SqlQueryPostgre {
    //
    //
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError> {
        let connection = self.resources
            .lock()
            .map_or(None, |mut resources| {
                resources.pop(ResourceKind::Postgres).map(|r| r.as_postgres())
            })
            .map_or_else(
                || {
                    let path = if !self.db_config.user.is_empty() && !self.db_config.pass.is_empty() {
                        format!("postgresql://{}:{}@{}/{}", self.db_config.user, self.db_config.pass, self.db_config.path, self.db_config.name)    // postgresql://user:secret@localhost
                    } else {
                        format!("postgresql://{}/{}", self.db_config.path, self.db_config.name)                                                  // postgresql://localhost
                    };
                    log::debug!("SqlQueryPostgre.execute | connecting with params: {:?}", &path);
                    match Client::connect(&path, NoTls) {
                        Ok(conn) => Ok(conn),
                        Err(err) => {
                            let details = format!("SqlQueryPostgre.execute | connection error: {:?}", &err);
                            log::warn!("{:?}", details);
                            Err(ApiError::new(
                                "Postgres database - connection error",
                                details,
                            ))
                        }
                    }
                },
                |client| Ok(client),
            );
        match connection {
            Ok(mut connection) => {
                log::debug!("SqlQueryPostgre.execute | preparing sql: {:?}", self.sql);
                match connection.prepare(self.sql.as_str()) {
                    Ok(stmt) => {
                        let mut c_names = vec![];
                        for column in stmt.columns() {
                            c_names.push(column.name().to_string());
                        }
                        let mut result = vec![];
                        let result = match connection.query(&stmt, &[]) {
                            Ok(rows) => {
                                let mut parse_errors = vec![];
                                for row in rows {
                                    log::trace!("SqlQueryPostgre.execute | row: {:?}", row);
                                    let mut row_map = IndexMap::new();
                                    for column in row.columns() {
                                        let idx = column.name();
                                        let (value, err): (serde_json::Value, String) = self.as_json(column.type_(), &row, &idx);
                                        if !err.is_empty() {
                                            parse_errors.push(err);
                                        }
                                        row_map.insert(String::from(idx), value);
                                    }
                                    result.push(row_map);
                                }
                                if log::max_level() == LevelFilter::Trace {
                                    log::trace!("SqlQueryPostgre.execute | result: {:?}", result);
                                } else {
                                    log::debug!("SqlQueryPostgre.execute | result: {:?} rows fetched", result.len());
                                    log::trace!("SqlQueryPostgre.execute | result: {:?}", result);
                                }
                                if parse_errors.is_empty() {
                                    Ok(result)
                                } else {
                                    let details = format!("SqlQueryPostgre.execute | rows parsing errors: {:?}", parse_errors.join("\n"));
                                    log::warn!("{}", details);
                                    Err(ApiError::new(
                                        "Postgres database - rows parsing errors", 
                                        details,
                                    ))
                                }
                            },
                            Err(err) => {
                                let details = format!("SqlQueryPostgre.execute | sql query error: {:?}", err);
                                log::warn!("{}", details);
                                Err(ApiError::new(
                                    "Postgres database - sql query error", 
                                    details, 
                                ))
                            },
                        };
                        match self.resources.lock() {
                            Ok(mut r) => r.push(Resource::Postgres(connection)),
                            Err(err) => log::warn!("SqlQueryPostgre.execute | Error push back resource: {:#?}", err),
                        }
                        result
                    },
                    Err(err) => {
                        let details = format!("SqlQueryPostgre.execute | sql preparing error: {}", err);
                        log::warn!("{}", details);
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


///
/// 
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
//
//
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
                let str_value = String::from_utf8(value.into()).unwrap();
                Ok(GenericEnum {0: str_value})
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