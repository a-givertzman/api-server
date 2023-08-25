#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryExecutable {
    pub name: String,
    pub params: serde_json::Map<String, serde_json::Value>,

}
impl ApiQueryExecutable {
    ///
    pub fn fromJson(jsonMap: serde_json::Value) -> Result<Self, String> {
        let key = "database";
        if let serde_json::Value::String(name) = jsonMap[key] {
            debug!("[ApiQueryExecutable.fromJson] field '{}': {:?}", &key, &name);
            let key = "sql";
            if let serde_json::Value::Object(params) = jsonMap[key] {
                debug!("[ApiQueryExecutable.fromJson] field '{}': {:?}", &key, &params);
                return Ok(ApiQueryExecutable {
                    name, 
                    params, 
                });
            } else {
                let msg = format!("[ApiQueryExecutable.fromJson] field '{}' not found", key);
                warn!("{}", msg);
                return Err(msg);
            }
        } else {
            let msg = format!("[ApiQueryExecutable.fromJson] field '{}' not found", key);
            warn!("{}", msg);
            return Err(msg);
        }
    }
    ///
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let string = String::from_utf8(bytes).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[ApiQueryExecutable.fromBytes] string: {:#?}", string);
        let query: ApiQueryExecutable = match serde_json::from_str(&string) {
            Ok(value) => {value},
            Err(err) => {
                warn!("[ApiQueryExecutable.fromBytes] json conversion error: {:?}", err);
                ApiQueryExecutable {
                    name: String::from("none"),
                    params: serde_json::Map::new(),
                }
            },
        };
        // debug!("[ApiQueryExecutable.fromBytes] bytes: {:?}", pobytesint);
        query
    }
}