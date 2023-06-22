#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
#[derive(Debug, Serialize, Deserialize)]
pub struct SqlQuery {
    pub auth_token: String,
    pub id: String,
    pub sql: String,

}
impl SqlQuery {
    pub fn fromJson(jsonString: String) -> Self {
        let raw: SqlQuery = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let string = String::from_utf8(bytes).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[SqlQuery.fromBytes] string: {:#?}", string);
        let query: SqlQuery = match serde_json::from_str(&string) {
            Ok(value) => {value},
            Err(err) => {
                warn!("[SqlQuery.fromBytes] json conversion error: {:?}", err);
                SqlQuery {
                    auth_token: String::from("none"),
                    id: String::from("0"),
                    sql: String::new(),
                }
            },
        };
        // debug!("[DsPoint] point: {:#?}", point);
        query
    }

}