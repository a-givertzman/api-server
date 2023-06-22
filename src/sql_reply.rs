#![allow(non_snake_case)]

use serde::{Serialize, Deserialize};

///
#[derive(Debug, Serialize, Deserialize)]
pub struct SqlReply {
    pub auth_token: String,
    pub id: String,
    pub sql: String,
    pub data: Vec<(String, Option<String>)>,
    pub errors: Vec<String>,

}
impl SqlReply {
    pub fn new(jsonString: String) -> SqlReply {
        let raw: SqlReply = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
    ///
    pub fn appendData(&mut self, rec: (String, Option<String>)) {
        self.data.push(rec);
    }
    ///
    pub fn appendError(&mut self, err: String) {
        self.errors.push(err);
    }
    ///
    pub fn asBytes(&self) -> Vec<u8> {
        let result = serde_json::to_string(&self);
        match result {
            Ok(jsonString) => {
                jsonString.clone().as_bytes().to_owned()
            },
            Err(_) => todo!(),
        }
    }
}