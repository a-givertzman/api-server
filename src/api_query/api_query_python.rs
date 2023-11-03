#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::core_::error::api_error::ApiError;

///
#[derive(Debug, Clone, Serialize, Deserialize, PartialEq)]
pub struct ApiQueryPython {
    pub script: String,
    pub params: serde_json::Map<String, serde_json::Value>,
}
impl ApiQueryPython {
    ///
    pub fn fromJson(jsonMap: serde_json::Value) -> Result<Self, ApiError> {
        let key = "script";
        if let serde_json::Value::String(script) = &jsonMap[key] {
            debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &script);
            let key = "params";
            if let serde_json::Value::Object(params) = &jsonMap[key] {
                debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &params);
                return Ok(ApiQueryPython {
                    script: script.to_owned(), 
                    params: params.to_owned(), 
                });
            } else {
                let details = format!("[ApiQueryPython.fromJson] field '{}' of type Map not found or invalid content", key);
                warn!("{}", details);
                return Err(ApiError::new(
                    format!("API Python Script Service - invalid query (near field \"{}\")", key), 
                    details,
                ));
            }
        } else {
            let details = format!("[ApiQueryPython.fromJson] field '{}' of type String not found or invalid content", key);
            warn!("{}", details);
            return Err(ApiError::new(
                format!("API Python Script Service - invalid query (near field \"{}\")", key), 
                details,
            ));
        }
    }
}