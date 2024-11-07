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
use crate::domain::error::error::StrErr;

use super::from_bytes::FromBytes;
///
/// Kind of Message
#[derive(Debug, Clone, PartialEq)]
pub enum MessageKind {
    Any = Self::ANY as isize,
    Empty = Self::EMPTY as isize,
    Bytes = Self::BYTES as isize,
    Bool = Self::BOOL as isize,
    U16 = Self::UINT16 as isize,
    U32 = Self::UINT32 as isize,
    U64 = Self::UINT64 as isize,
    I16 = Self::INT16 as isize,
    I32 = Self::INT32 as isize,
    I64 = Self::INT64 as isize,
    F32 = Self::FLOAT32 as isize,
    F64 = Self::FLOAT64 as isize,
    String = Self::STRING as isize,
    Timestamp = Self::TIMESTAMP as isize,
    Duration = Self::DURATION as isize,
}
//
//
impl MessageKind {
    const ANY: u8 = 00;
    const EMPTY: u8 = 01;
    const BYTES: u8 = 02;
    const BOOL: u8 = 08;
    const UINT16: u8 = 16;
    const UINT32: u8 = 17;
    const UINT64: u8 = 18;
    const INT16: u8 = 24;
    const INT32: u8 = 25;
    const INT64: u8 = 26;
    const FLOAT32: u8 = 32;
    const FLOAT64: u8 = 33;
    const STRING: u8 = 40;
    const TIMESTAMP: u8 = 48;
    const DURATION: u8 = 49;
    ///
    /// Returns bytes of the `MessageKund` variant    
    pub fn to_bytes(&self) -> &[u8] {
        match self {
            MessageKind::Any => &[Self::ANY],
            MessageKind::Empty => &[Self::EMPTY],
            MessageKind::Bytes => &[Self::BYTES],
            MessageKind::Bool => &[Self::BOOL],
            MessageKind::U16 => &[Self::UINT16],
            MessageKind::U32 => &[Self::UINT32],
            MessageKind::U64 => &[Self::UINT64],
            MessageKind::I16 => &[Self::INT16],
            MessageKind::I32 => &[Self::INT32],
            MessageKind::I64 => &[Self::INT64],
            MessageKind::F32 => &[Self::FLOAT32],
            MessageKind::F64 => &[Self::FLOAT64],
            MessageKind::String => &[Self::STRING],
            MessageKind::Timestamp => &[Self::TIMESTAMP],
            MessageKind::Duration => &[Self::DURATION],
        }
    }
}
impl FromBytes for MessageKind {
    fn from_bytes(bytes: &[u8]) -> Result<Self, StrErr> {
        match bytes {
            [Self::ANY] => Ok(MessageKind::Any),
            [Self::EMPTY] => Ok(MessageKind::Empty),
            [Self::BYTES] => Ok(MessageKind::Bytes),
            [Self::BOOL] => Ok(MessageKind::Bool),
            [Self::UINT16] => Ok(MessageKind::U16),
            [Self::UINT32] => Ok(MessageKind::U32),
            [Self::UINT64] => Ok(MessageKind::U64),
            [Self::INT16] => Ok(MessageKind::I16),
            [Self::INT32] => Ok(MessageKind::I32),
            [Self::INT64] => Ok(MessageKind::I64),
            [Self::FLOAT32] => Ok(MessageKind::F32),
            [Self::FLOAT64] => Ok(MessageKind::F64),
            [Self::STRING] => Ok(MessageKind::String),
            [Self::TIMESTAMP] => Ok(MessageKind::Timestamp),
            [Self::DURATION] => Ok(MessageKind::Duration),
            [..] => Err(StrErr(format!("MessageKind.from_bytes | Wrong or Empty input: {:?}", &bytes[..16]))),
        }
    }
}
