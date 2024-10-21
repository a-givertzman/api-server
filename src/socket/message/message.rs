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

use super::from_bytes::FromBytes;
///
/// Kind of Message
pub enum Message {
    Any,
    Empty,
    Bytes,
    Bool,
    UInt16,
    UInt32,
    UInt64,
    Int16,
    Int32,
    Int64,
    F32,
    F64,
    String(MessageString),
    Timestamp,
    Duration,
}
//
//
impl Message {
    /// Each Message starts with
    pub const SYN: u8 = 22;
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
    fn from_bytes(bytes: &[u8]) -> Result<Self, String> {
        match str::from_utf8(bytes) {
            Ok(val) => Ok(MessageString::new(val)),
            Err(err) => Err(format!("MessageString.from_bytes | Error {:#?}", err)),
        }
    }
}