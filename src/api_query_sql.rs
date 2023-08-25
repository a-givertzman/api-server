#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

// use crate::{api_query::ApiQuery, api_query_type::ApiQueryType, api_query_error::ApiQueryError};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuerySql {
    pub database: String,
    pub sql: String,
    src: String,
}
impl ApiQuerySql {
    ///
    pub fn fromJson(jsonMap: serde_json::Value) -> Result<Self, String> {
        let key = "database";
        if let serde_json::Value::String(database) = &jsonMap[key] {
            debug!("[ApiQuerySql.fromJson] field '{}': {:?}", &key, &database);
            let key = "sql";
            if let serde_json::Value::String(sql) = &jsonMap[key] {
                debug!("[ApiQuerySql.fromJson] field '{}': {:?}", &key, &sql);
                return Ok(ApiQuerySql {
                    database: database.to_owned(),
                    sql: sql.to_owned(),
                    src: jsonMap.to_string(),
                });
            } else {
                let msg = format!("[ApiQuerySql.fromJson] field '{}' not found", key);
                warn!("{}", msg);
                return Err(msg);
            }
        } else {
            let msg = format!("[ApiQuerySql.fromJson] field '{}' not found", key);
            warn!("{}", msg);
            return Err(msg);
        }
    }
    ///
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let refBytes = &bytes;
        let string = String::from_utf8(refBytes.to_owned()).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[ApiQuerySql.fromBytes] string: {:#?}", string);
        let query: ApiQuerySql = match serde_json::from_str(&string) {
            Ok(value) => {value},
            Err(err) => {
                warn!("[ApiQuerySql.fromBytes] json conversion error: {:?}", err);
                let collected: Vec<String> = bytes.iter().map(|a| a.to_string()).collect();
                ApiQuerySql {
                    database: String::from("none"),
                    sql: String::new(),
                    src: collected.join(", "),
                }
            },
        };
        // debug!("[ApiQuerySql.fromBytes] bytes: {:?}", bytes);
        query
    }
    ///
    pub fn toString(self) -> String {
        self.src
    }
}