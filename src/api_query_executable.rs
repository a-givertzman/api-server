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
    pub fn fromJson(jsonString: String) -> Self {
        let raw: ApiQueryExecutable = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
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