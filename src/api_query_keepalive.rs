#![allow(non_snake_case)]

// use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryKeepAlive {
    pub query: serde_json::Value,
}
impl ApiQueryKeepAlive {
    // pub fn fromJson(jsonString: String) -> Self {
    //     let raw: ApiQueryKeepAlive = serde_json::from_str(&jsonString).unwrap();
    //     println!("raw: {:?}", raw);
    //     raw
    // }
    // pub fn fromBytes(bytes: Vec<u8>) -> Self {
    //     let string = String::from_utf8(bytes).unwrap();
    //     let string = string.trim_matches(char::from(0));
    //     debug!("[ApiQueryKeepAlive.fromBytes] string: {:#?}", string);
    //     let query: ApiQueryKeepAlive = match serde_json::from_str(&string) {
    //         Ok(value) => {value},
    //         Err(err) => {
    //             warn!("[ApiQueryKeepAlive.fromBytes] json conversion error: {:?}", err);
    //             ApiQueryKeepAlive {
    //                 query: serde_json::Value::default(),
    //             }
    //         },
    //     };
    //     // debug!("[ApiQueryKeepAlive.fromBytes] bytes: {:?}", pobytesint);
    //     query
    // }
    ///
    pub fn srcQuery(self) -> String {
        format!("{}", self.query)
    }
}