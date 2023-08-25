#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryPython {
    pub script: String,
    pub params: serde_json::Map<String, serde_json::Value>,
    src: String,
}
impl ApiQueryPython {
    ///
    pub fn fromJson(jsonMap: serde_json::Value) -> Result<Self, String> {
        let key = "script";
        if let serde_json::Value::String(script) = &jsonMap[key] {
            debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &script);
            let key = "params";
            if let serde_json::Value::Object(params) = &jsonMap[key] {
                debug!("[ApiQueryPython.fromJson] field '{}': {:?}", &key, &params);
                return Ok(ApiQueryPython {
                    script: script.to_owned(), 
                    params: params.to_owned(), 
                    src: jsonMap.to_string(),
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
    // pub fn fromBytes(bytes: Vec<u8>) -> Self {
    //     let refBytes = &bytes;
    //     let string = String::from_utf8(refBytes.to_owned()).unwrap();
    //     let string = string.trim_matches(char::from(0));
    //     debug!("[ApiQueryPython.fromBytes] string: {:#?}", string);
    //     let query: ApiQueryPython = match serde_json::from_str(&string) {
    //         Ok(value) => {value},
    //         Err(err) => {
    //             warn!("[ApiQueryPython.fromBytes] json conversion error: {:?}", err);
    //             let collected: Vec<String> = bytes.iter().map(|a| a.to_string()).collect();
    //             ApiQueryPython {
    //                 script: String::from("none"),
    //                 params: serde_json::Map::new(),
    //                 src: collected.join(", "),
    //             }
    //         },
    //     };
    //     // debug!("[ApiQueryPython.fromBytes] bytes: {:?}", pobytesint);
    //     query
    // }
    ///
    pub fn toString(self) -> String {
        self.src
    }
}