#![allow(non_snake_case)]

// use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryUnknown {
    pub query: serde_json::Value,
}
impl ApiQueryUnknown {
    // pub fn fromJson(jsonString: String) -> Self {
    //     let raw: ApiQueryUnknown = serde_json::from_str(&jsonString).unwrap();
    //     println!("raw: {:?}", raw);
    //     raw
    // }
    // pub fn fromBytes(bytes: Vec<u8>) -> Self {
    //     let string = String::from_utf8(bytes).unwrap();
    //     let string = string.trim_matches(char::from(0));
    //     debug!("[ApiQueryUnknown.fromBytes] string: {:#?}", string);
    //     let query: ApiQueryUnknown = match serde_json::from_str(&string) {
    //         Ok(value) => {value},
    //         Err(err) => {
    //             warn!("[ApiQueryUnknown.fromBytes] json conversion error: {:?}", err);
    //             ApiQueryUnknown {
    //                 query: serde_json::Value::default(),
    //             }
    //         },
    //     };
    //     // debug!("[ApiQueryUnknown.fromBytes] bytes: {:?}", pobytesint);
    //     query
    // }
    ///
    pub fn srcQuery(self) -> String {
        format!("{}", self.query)
    }
}