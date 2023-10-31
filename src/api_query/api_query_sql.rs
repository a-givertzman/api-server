#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::core_::error::api_error::ApiError;

// use crate::{api_query::ApiQuery, api_query_type::ApiQueryType, api_query_error::ApiError};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuerySql {
    pub database: String,
    pub sql: String,
    src: serde_json::Value,
}
impl ApiQuerySql {
    ///
    pub fn fromJson(jsonMap: serde_json::Value, debug: bool) -> Result<Self, ApiError> {
        let key = "database";
        if let serde_json::Value::String(database) = &jsonMap[key] {
            debug!("[ApiQuerySql.fromJson] field '{}': {:?}", &key, &database);
            let key = "sql";
            if let serde_json::Value::String(sql) = &jsonMap[key] {
                debug!("[ApiQuerySql.fromJson] field '{}': {:?}", &key, &sql);
                return Ok(ApiQuerySql {
                    database: database.to_owned(),
                    sql: sql.to_owned(),
                    src: jsonMap,
                });
            } else {
                let msg = format!("[ApiQuerySql.fromJson] field '{}' of type String not found or invalid content", key);
                warn!("{}", msg);
                return Err(ApiError::new(msg, None));
            }
        } else {
            let msg = format!("[ApiQuerySql.fromJson] field '{}' of type String not found or invalid content", key);
            warn!("{}", msg);
            return Err(ApiError::new(msg, None));
        }
    }
    ///
    /// 
    pub fn srcQuery(self) -> serde_json::Value {
        self.src
    }
}