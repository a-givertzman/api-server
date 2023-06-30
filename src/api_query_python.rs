#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryPython {
    pub script: String,
    pub params: String,

}
impl ApiQueryPython {
    pub fn fromJson(jsonString: String) -> Self {
        let raw: ApiQueryPython = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
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
                    params: String::new(),
                }
            },
        };
        // debug!("[ApiQueryPython.fromBytes] bytes: {:?}", pobytesint);
        query
    }

}