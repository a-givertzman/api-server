#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::core_::error::api_error::ApiError;

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryPython {
    pub script: String,
    pub params: serde_json::Map<String, serde_json::Value>,
    src: serde_json::Value,
}
impl ApiQueryPython {
    ///
    pub fn fromJson(jsonMap: serde_json::Value, debug: bool) -> Result<Self, ApiError> {
        let key = "script";
        if let serde_json::Value::String(script) = &jsonMap[key] {
            debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &script);
            let key = "params";
            if let serde_json::Value::Object(params) = &jsonMap[key] {
                debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &params);
                return Ok(ApiQueryPython {
                    script: script.to_owned(), 
                    params: params.to_owned(), 
                    src: jsonMap,
                });
            } else {
                let msg = format!("[ApiQueryPython.fromJson] field '{}' of type Map not found or invalid content", key);
                warn!("{}", msg);
                return Err(ApiError::new(msg, None));
            }
        } else {
            let msg = format!("[ApiQueryPython.fromJson] field '{}' of type String not found or invalid content", key);
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