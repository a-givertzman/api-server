#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::core_::error::api_error::ApiError;

// use crate::{api_query::ApiQuery, api_query_type::ApiQueryType, api_query_error::ApiError};

///
#[derive(Debug, Clone, Serialize, Deserialize, PartialEq)]
pub struct ApiQuerySql {
    pub database: String,
    pub sql: String,
}
impl ApiQuerySql {
    ///
    pub fn fromJson(jsonMap: serde_json::Value) -> Result<Self, ApiError> {
        let key = "database";
        if let serde_json::Value::String(database) = &jsonMap[key] {
            debug!("[ApiQuerySql.fromJson] field '{}': {:?}", &key, &database);
            let key = "sql";
            if let serde_json::Value::String(sql) = &jsonMap[key] {
                debug!("[ApiQuerySql.fromJson] field '{}': {:?}", &key, &sql);
                return Ok(ApiQuerySql {
                    database: database.to_owned(),
                    sql: sql.to_owned(),
                });
            } else {
                let details = format!("[ApiQuerySql.fromJson] field '{}' of type String not found or invalid content", key);
                warn!("{}", details);
                return Err(ApiError::new(
                    format!("API SQL Service - invalid query (near field \"{}\")", key), 
                    details,
                ));
            }
        } else {
            let details = format!("[ApiQuerySql.fromJson] field '{}' of type String not found or invalid content", key);
            warn!("{}", details);
            return Err(ApiError::new(
                format!("API SQL Service - invalid query (near field \"{}\")", key), 
                details,
            ));
        }
    }
}