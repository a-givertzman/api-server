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
use std::iter::Peekable;
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
    state: Peekable<Box<dyn Iterator<Item = MessageFild>>>,
    result: Vec<MessageFild>, 
    start: usize,
    end: usize,
    size: Option<u32>,
    buffer: Vec<u8>,
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
        // let state = ;
        Self {
            fields: fields.to_owned(),
            state: (Box::new(fields.to_owned().into_iter().cycle()) as Box<dyn Iterator<Item = MessageFild>>).peekable(),
            result: vec![],
            start: 0,
            end: 0,
            size: None,
            buffer: vec![],
        }
    }
    ///
    /// 
    pub fn restart(&mut self) {
        self.state = (Box::new(self.fields.to_owned().into_iter().cycle()) as Box<dyn Iterator<Item = MessageFild>>).peekable();
    }
    ///
    /// Returns message (by fields) read and parsed from socket 
    /// - Parse done by fields specified in the constructor, 
    pub fn parse(&mut self, bytes: &[u8]) -> Result<Vec<MessageFild>, StrErr> {
        let bytes = [&std::mem::take(&mut self.buffer), bytes].concat();
        log::debug!("Message.parse | Input bytes: {:?}", bytes);
        loop {
            match self.state.peek() {
                Some(state) => {
                    match state {
                        MessageFild::Syn(field) => {
                            log::debug!("Message.parse | Fild::Syn");
                            self.start = match bytes.iter().position(|b| *b == field.0) {
                                Some(pos) => pos,
                                None => {
                                    return Err(format!("Message.parse | Syn not found in the message: {:?}...", if bytes.len() > 16 { &bytes[..16] } else { &bytes } ).into());
                                }
                            };
                            self.end = self.start + field.len();
                            self.state.next().unwrap();
                            self.start = self.end;
                            log::debug!("Message.parse | Fild::Syn pos: {}..{}", self.start, self.end);
                            // log::debug!("Message.parse | Fild::Syn bytes: {:?}", &bytes[self.start..self.end]);
                        }
                        MessageFild::Kind(field) => {
                            self.end = self.start + field.len();
                            log::debug!("Message.parse | Fild::Kind pos: {}..{}", self.start, self.end);
                            // log::debug!("Message.parse | Fild::Kind bytes: {:?}", &bytes[self.start..self.end]);
                            match bytes.get(self.start..self.end) {
                                Some(bytes) => match bytes.try_into() {
                                    Ok(bytes) => match MessageKind::from_bytes(bytes) {
                                        Ok(kind) => {
                                            self.result.push(MessageFild::Kind(FieldKind(kind)));
                                            self.state.next().unwrap();
                                            self.start = self.end;
                                        },
                                        Err(err) => {
                                            self.restart();
                                            return Err(format!("Message.parse | Filed 'Kind' parse error: {:#?}", err).into())
                                        }
                                    }
                                    Err(err) => {
                                        self.buffer = bytes.into();
                                        return Err(format!("Message.parse | Filed 'Kind' take error: {:#?}", err).into())
                                    }
                                }
                                None => {
                                    self.buffer = bytes.into();
                                    return Err(format!("Message.parse | Filed 'Kind' take error").into())
                                }
                            }
                        }
                        MessageFild::Size(field) => {
                            self.end = self.start + field.len();
                            log::debug!("Message.parse | Fild::Size pos: {}..{}", self.start, self.end);
                            // log::debug!("Message.parse | Fild::Size bytes: {:?}", &bytes[self.start..self.end]);
                            match bytes.get(self.start..self.end) {
                                Some(bytes) => {
                                    log::debug!("Message.parse | Fild::Size bytes: {:?}", bytes);
                                    match bytes.try_into() {
                                        Ok(size_bytes) => {
                                            log::debug!("Message.parse | Fild::Size bytes: {:?}", bytes);
                                            let s= u32::from_be_bytes(size_bytes);
                                            self.size = Some(s);
                                            self.result.push(MessageFild::Size(FieldSize(s)));
                                            self.state.next().unwrap();
                                            self.start = self.end;
                                        },
                                        Err(err) => {
                                            self.buffer = bytes.into();
                                            return Err(format!("Message.parse | Filed 'Size' take error: {:#?}", err).into());
                                        }
                                    }
                                }
                                None => {
                                    self.buffer = bytes.into();
                                    return Err(format!("Message.parse | Filed 'Size' take error").into());
                                }
                            }
                        }
                        MessageFild::Data(_) => {
                            // log::debug!("Message.parse | Fild::Data");
                            match self.size {
                                Some(size) => {
                                    self.end = self.start + (size as usize);
                                    log::debug!("Message.parse | Fild::Data pos: {}..{}", self.start, self.end);
                                    // log::debug!("Message.parse | Fild::Data bytes: {:?}", &bytes[self.start..self.end]);
                                    match bytes.get(self.start..self.end) {
                                        Some(bytes) => match bytes.try_into() {
                                            Ok(data) => {
                                                self.result.push(MessageFild::Data(FieldData(data)));
                                                self.state.next().unwrap();
                                                return Ok(std::mem::take(&mut self.result));
                                            },
                                            Err(err) => {
                                                self.buffer = bytes.into();
                                                return Err(format!("Message.parse | Filed 'Data' take error: {:#?}", err).into());
                                            }
                                        }
                                        None => {
                                            self.buffer = bytes.into();
                                            return Err(format!("Message.parse | Filed 'Data' take error").into());
                                        }
                                    }
                                }
                                None => {
                                    self.restart();
                                    return Err(format!("Message.parse | Field 'Data' can't be read because Filed 'Size' is not ready").into());
                                }
                            }
                        }
                    }
                }
                None => {
                    self.restart();
                    return Err(format!("Message.parse | State error").into());
                }
            }
        }
    }
    ///
    /// Returns message built according to specified fields and passed `bytes`
    pub fn build(&mut self, bytes: &[u8]) -> Vec<u8> {
        let mut message = vec![];
        for field in &mut self.fields {
            match field {
                MessageFild::Syn(field_syn) => message.push(field_syn.0),
                MessageFild::Kind(field_kind) => message.extend(field_kind.to_bytes()),
                MessageFild::Size(field_size) => message.extend(field_size.to_be_bytes(bytes.len() as u32)),
                MessageFild::Data(_) => {
                    message = [&message, bytes].concat();
                }
            }
        }
        message
    }

}
