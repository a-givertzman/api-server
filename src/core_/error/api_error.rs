#![allow(non_snake_case)]

use std::collections::HashMap;

// use log::{debug, warn};
use serde::{Serialize, Deserialize};
use serde_json::json;

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiError {
    message: String,
    details: Option<serde_json::Value>,
    debug: bool,
}
impl ApiError {
    ///
    /// 
    pub fn new(message: impl Into<String>, detils: Option<serde_json::Value>) -> Self {
        Self {
            message: message.into(),
            details: detils,
            debug: false,
        }        
    }
    ///
    /// 
    pub fn empty() -> Self {
        Self {
            message: "No errors".to_string(),
            details: None,
            debug: false,
        }
    }
    ///
    /// 
    pub fn debug(mut self, debug: bool) -> Self {
        self.debug = debug;
        self
    }
    ///
    /// appends error details
    pub fn append(&mut self, err: impl Serialize) {
        self.details = Some(            
            match &self.details {
                Some(details) => {
                    json!(HashMap::from([
                        ("curr", json!(err)),
                        ("prev", details.to_owned()),
                    ]))
                },
                None => json!(err),
            }
        )
    }
    ///
    /// returns json representation of the accomulated errors
    /// - deppending on "debug" option:
    ///     - false - only short error message will be included
    ///     - true - short error message, original query, detiled errors info will bi included
    pub fn asJason(&self, debug: bool) -> serde_json::Value {
        match debug {
            false => {
                let result = serde_json::to_value(
                    HashMap::from([
                        ("message", self.message.clone()),
                    ])
                );
                match result {
                    Ok(value) => value,
                    Err(err) => {
                        json!(
                            HashMap::from([
                                ("message", err.to_string()),
                            ])
                        )
                    },
                }
            },
            true => {
                let result = serde_json::to_value(
                    HashMap::from([
                        ("message", MsgType::String(self.message.clone())),
                        ("details", MsgType::Value(self.details().to_owned())),
                    ])
                );
                match result {
                    Ok(value) => value,
                    Err(err) => {
                        json!(
                            HashMap::from([
                                ("message", err.to_string()),
                            ])
                        )
                    },
                }

            }
        }
    }
    ///
    /// 
    fn details(&self) -> &serde_json::Value {
        match &self.details {
            Some(details) => details,
            None => &serde_json::Value::Null,
        }
    }
    ///
    /// 
    pub fn toString(self) -> String {
        format!("ApiError: {:?}\nerror: {:?}", self.message, self.details)
    }
    // ///
    // /// Returns originally received query
    // pub fn srcQuery(self) -> serde_json::Value {
    //     self.query()
    // }
}


#[derive(Debug, Clone, Serialize, Deserialize)]
enum MsgType {
    Value(serde_json::Value),
    String(String),
}
















    // pub fn fromJson(jsonString: String) -> Self {
    //     let raw: ApiError = serde_json::from_str(&jsonString).unwrap();
    //     println!("raw: {:?}", raw);
    //     raw
    // }
    // pub fn fromBytes(bytes: Vec<u8>) -> Self {
    //     let string = String::from_utf8(bytes).unwrap();
    //     let string = string.trim_matches(char::from(0));
    //     debug!("[ApiError.fromBytes] string: {:#?}", string);
    //     let query: ApiError = match serde_json::from_str(&string) {
    //         Ok(value) => {value},
    //         Err(err) => {
    //             let msg = format!("[ApiError.fromBytes] json conversion error: {:?}", err);
    //             warn!("{}", msg);
    //             ApiError {
    //                 // query: serde_json::Value::default(),
    //                 query: String::new(),
    //                 err: msg,
    //             }
    //         },
    //     };
    //     // debug!("[ApiError.fromBytes] bytes: {:?}", pobytesint);
    //     query
    // }