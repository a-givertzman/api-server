#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::core_::error::api_error::ApiError;

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryExecutable {
    pub name: String,
    pub params: serde_json::Map<String, serde_json::Value>,
    src: serde_json::Value,
}
impl ApiQueryExecutable {
    ///
    pub fn fromJson(jsonMap: serde_json::Value, debug: bool) -> Result<Self, ApiError> {
        let key = "name";
        if let serde_json::Value::String(name) = &jsonMap[key] {
            debug!("[ApiQueryExecutable.fromJson] field '{}': {:?}", &key, &name);
            let key = "params";
            if let serde_json::Value::Object(params) = &jsonMap[key] {
                debug!("[ApiQueryExecutable.fromJson] field '{}': {:?}", &key, &params);
                return Ok(ApiQueryExecutable {
                    name: name.to_owned(), 
                    params: params.to_owned(), 
                    src: jsonMap,
                });
            } else {
                let details = format!("[ApiQueryExecutable.fromJson] field '{}' of type Map not found or invalid content", key);
                warn!("{}", details);
                return Err(ApiError::new(format!("Executable service - invalid query (near field \"{}\")", key), details));
            }
        } else {
            let details = format!("[ApiQueryExecutable.fromJson] field '{}' of type String not found or invalid content", key);
            warn!("{}", details);
            return Err(ApiError::new(format!("Executable service - invalid query (near field \"{}\")", key), details));
        }
    }
    ///
    // pub fn fromBytes(bytes: Vec<u8>) -> Self {
    //     let refBytes = &bytes;
    //     let string = String::from_utf8(refBytes.to_owned()).unwrap();
    //     let string = string.trim_matches(char::from(0));
    //     debug!("[ApiQueryExecutable.fromBytes] string: {:#?}", string);
    //     let query: ApiQueryExecutable = match serde_json::from_str(&string) {
    //         Ok(value) => {value},
    //         Err(err) => {
    //             warn!("[ApiQueryExecutable.fromBytes] json conversion error: {:?}", err);
    //             let collected: Vec<String> = bytes.iter().map(|a| a.to_string()).collect();
    //             ApiQueryExecutable {
    //                 name: String::from("none"),
    //                 params: serde_json::Map::new(),
    //                 src: collected.join(", "),
    //             }
    //         },
    //     };
    //     // debug!("[ApiQueryExecutable.fromBytes] bytes: {:?}", pobytesint);
    //     query
    // }
    ///
    pub fn srcQuery(self) -> serde_json::Value {
        self.src
    }
}