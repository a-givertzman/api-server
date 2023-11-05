#![allow(non_snake_case)]

use std::collections::HashMap;

use serde::{Serialize, Deserialize};

use crate::core_::error::api_error::ApiError;

///
#[derive(Debug, Serialize, Deserialize)]
pub struct SqlReply {
    pub auth_token: String,
    pub id: String,
    pub keepAlive: bool,
    pub query: String,
    pub data: Vec<HashMap<String, serde_json::Value>>, //Vec<(String, Option<String>)>,
    pub error: ApiError,

}
impl SqlReply {
    // pub fn new(jsonString: String) -> SqlReply {
    //     let raw: SqlReply = serde_json::from_str(&jsonString).unwrap();
    //     println!("raw: {:?}", raw);
    //     raw
    // }
    // ///
    // pub fn appendData(&mut self, row: HashMap<String, serde_json::Value>) {
    //     self.data.push(row);
    // }
    // ///
    // pub fn appendError(&mut self, err: String) {
    //     self.error.push_str("|\n");
    //     self.error.push_str(err.as_str());
    // }
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
    ///
    pub fn error(
        auth_token: String,
        id: String,
        keepAlive: bool,
        query: String, 
        error: ApiError,
    ) -> Self {
        SqlReply {
            auth_token,
            id,
            keepAlive,
            query,
            data: vec![],
            error,
        }        
    }
}


// #[derive(Debug)]
// struct Value(rusqlite::types::Value);

// impl Serialize for Value {
//     fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
//     where
//         S: serde::Serializer {
//         todo!()
//     }
// }

// impl<'de> Deserialize<'_> for Value {
//     fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
//     where
//         D: serde::Deserializer<'de> {
//         todo!()
//     }

//     fn deserialize_in_place<D>(deserializer: D, place: &mut Self) -> Result<(), D::Error>
//     where
//         D: serde::Deserializer<'de>,
//     {
//         // Default implementation just delegates to `deserialize` impl.
//         *place = try!(Deserialize::deserialize(deserializer));
//         Ok(())
//     }
// }


// impl<'de> Deserialize<'de> for Value {
//     fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
//     where
//         D: Deserializer<'de>,
//     {
//         #[derive(Debug, Deserialize)]
//         struct Mapping {
//             field: i32,
//             #[serde(rename = "A")]
//             a: Option<i32>,
//             #[serde(rename = "B")]
//             b: Option<i32>,
//         }

//         let Mapping { field, a, b } = Mapping::deserialize(deserializer)?;

//         match (a, b) {
//             (Some(_), Some(_)) => 
//                 Err(D::Error::new("multiple variants specified")),
//             (Some(a), None) =>
//                 Ok(Value { field, an_enum: AnEnum::A(a) }),
//             (None, Some(b)) => 
//                 Ok(Value { field, an_enum: AnEnum::B(b) }),
//             (None, None) =>
//                 Err(D::Error::custom("no variants specified")),
//         }
//     }
// }