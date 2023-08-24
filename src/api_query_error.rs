#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryError {
    pub query: serde_json::Value,
    pub err: String,
}
impl ApiQueryError {
    pub fn fromJson(jsonString: String) -> Self {
        let raw: ApiQueryError = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let string = String::from_utf8(bytes).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[ApiQueryError.fromBytes] string: {:#?}", string);
        let query: ApiQueryError = match serde_json::from_str(&string) {
            Ok(value) => {value},
            Err(err) => {
                let msg = format!("[ApiQueryError.fromBytes] json conversion error: {:?}", err);
                warn!("{}", msg);
                ApiQueryError {
                    query: serde_json::Value::default(),
                    err: msg,
                }
            },
        };
        // debug!("[ApiQueryError.fromBytes] bytes: {:?}", pobytesint);
        query
    }

}