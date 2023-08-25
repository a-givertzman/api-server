#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryPython {
    pub script: String,
    pub params: serde_json::Map<String, serde_json::Value>,

}
impl ApiQueryPython {
    ///
    pub fn fromJson(jsonMap: serde_json::Value) -> Result<Self, String> {
        let key = "database";
        if let serde_json::Value::String(script) = jsonMap[key] {
            debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &script);
            let key = "sql";
            if let serde_json::Value::Object(params) = jsonMap[key] {
                debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &params);
                return Ok(ApiQueryPython {
                    script, 
                    params, 
                });
            } else {
                let msg = format!("[ApiQueryPython.fromJson] field '{}' not found", key);
                warn!("{}", msg);
                return Err(msg);
            }
        } else {
            let msg = format!("[ApiQueryPython.fromJson] field '{}' not found", key);
            warn!("{}", msg);
            return Err(msg);
        }
    }
    ///
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let string = String::from_utf8(bytes).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[ApiQueryPython.fromBytes] string: {:#?}", string);
        let query: ApiQueryPython = match serde_json::from_str(&string) {
            Ok(value) => {value},
            Err(err) => {
                warn!("[ApiQueryPython.fromBytes] json conversion error: {:?}", err);
                ApiQueryPython {
                    script: String::from("none"),
                    params: serde_json::Map::new(),
                }
            },
        };
        // debug!("[ApiQueryPython.fromBytes] bytes: {:?}", pobytesint);
        query
    }

}