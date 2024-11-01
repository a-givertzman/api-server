//!
//! # Messages transmitted over socket.
//! 
//! - Data can be encoded using varius data `Kind`, `Size` and payload Data
//! 
//! - Message format
//!     Field name | Start | Kind |  Size  | Data |
//!     ---       |  ---  | ---  |  ---   | ---  |
//!     Data type |  u8   | u8   | u32    | [u8; Size] |
//!     Value     |  22   | StringValue | xxx    | [..., ...]  |
//!     
//!     - Start - Each message starts with SYN (22)
//!     - Kind - The `Kind` of the data stored in the `Data` field, refer to
//!     - Size - The length of the `Data` field in bytes
//!     - Data - Data structured depending on it `Kind`
//! 
//! - `Kind` of data
//!     - 00, Any
//!     - 01, Empty
//!     - 02, Bytes
//!     - 08, Bool
//!     - 16, UInt16
//!     - 17, UInt32
//!     - 18, UInt64
//!     - 24, Int16
//!     - 25, Int32
//!     - 26, Int64
//!     - 32, F32
//!     - 33, F64
//!     - 40, String
//!     - 48, Timestamp
//!     - 49, Duration
//!     - .., ...
//! 
use core::str;
use crate::domain::error::error::StrErr;

use super::{fields::{FieldData, FieldKind, FieldSize, FieldSyn}, from_bytes::FromBytes, message_kind::MessageKind};
/// 
/// 
#[derive(Debug, Clone, PartialEq)]
pub enum MessageFild {
    Syn(FieldSyn),
    Kind(FieldKind),
    Size(FieldSize),
    Data(FieldData),
}
///
/// Socket Message
pub struct Message {
    fields: Vec<MessageFild>,
}
//
//
impl Message {
    /// Each Message starts with
    pub const SYN: u8 = 22;
    ///
    /// Returns `Message` new instance 
    pub fn new(
        fields: &[MessageFild]
    ) -> Self {
        Self {
            fields: fields.to_owned(),
        }
    }
    ///
    /// 
    pub fn parse(&self, bytes: &[u8]) -> Result<Vec<MessageFild>, StrErr> {
        let mut result = vec![];
        // let mut bytes = bytes.into_iter();
        let mut pos = 0;
        for field in &self.fields {
            match field {
                MessageFild::Syn(field_syn) => {
                    pos = match bytes.iter().position(|b| *b != field_syn.0) {
                        Some(pos) => pos,
                        None => return Err(StrErr(format!("Message.parse | Syn not found in the message: {:?}...", &bytes[..24]))),
                    }
                },
                MessageFild::Kind(field_kind) => {
                    let kind_pos = pos;
                    pos = kind_pos + field_kind.len();
                    match bytes[kind_pos..pos].try_into() {
                        Ok(bytes) => match MessageKind::from_bytes(bytes) {
                            Ok(kind) => {
                                result.push(MessageFild::Kind(FieldKind(kind)));
                            },
                            Err(_) => todo!(),
                        }
                        Err(_) => todo!(),
                    }                    
                },
                MessageFild::Size(field_size) => {
                    let size_pos = pos;
                    pos = size_pos + field_size.len();
                    match bytes[size_pos..pos].try_into() {
                        Ok(size) => {
                            result.push(MessageFild::Size(FieldSize(u32::from_be_bytes(size))));
                        },
                        Err(_) => todo!(),
                    }
                }
                MessageFild::Data(field_data) => {
                    let data_pos = pos;
                    pos = data_pos + field_data.len();
                    match bytes[data_pos..pos].try_into() {
                        Ok(data) => {
                            result.push(MessageFild::Data(FieldData(data)));
                        },
                        Err(_) => todo!(),
                    }
                }
            }
        }
        Ok(result)
    }
}
///
/// String Message
pub struct MessageString {
    value: String,
}
//
//
impl MessageString {
    ///
    /// Returns `MessageString` new instance
    pub fn new(val: impl Into<String>) -> Self {
        
        Self {
            value: val.into(),
        }
    }
}
//
//
impl FromBytes for MessageString {
    fn from_bytes(bytes: &[u8]) -> Result<Self, StrErr> {
        match str::from_utf8(bytes) {
            Ok(val) => Ok(MessageString::new(val)),
            Err(err) => Err(StrErr(format!("MessageString.from_bytes | Error {:#?}", err))),
        }
    }
}