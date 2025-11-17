use std::{
    net::TcpStream, sync::Arc, time::{Duration, Instant}
};
use api_tools::api::{
    message::{
        fields::{FieldData, FieldId, FieldKind, FieldSize, FieldSyn},
        message::{MessageField, MessageParse}, message_kind::MessageKind, msg_kind::MsgKind,
        parse_data::ParseData, parse_id::ParseId, parse_kind::ParseKind, parse_size::ParseSize, parse_syn::ParseSyn,
    },
    socket::tcp_socket::{IsConnected, TcpMessage},
};
use sal_core::{dbg::Dbg, error::Error};
use sal_sync::{sync::{Handles, Owner}, thread_pool::Scheduler};
use tungstenite::WebSocket;
use crate::{api_server::ApiServer, config::Config};
use super::resources::Resources;
///
/// Opens a connection via TCP Socket
pub struct WebConnection {
    config: Config,
    stream: Owner<WebSocket<TcpStream>>,
    ///
    /// 
    timeout: Duration,
    ///
    /// bytes to be read from socket at once in cyclic read
    resources: Arc<Resources>,
    scheduler: Scheduler,
    handles: Handles<()>,
    dbg: Dbg,
}
//
// 
impl WebConnection {
    ///
    /// Returns WebConnection new instance
    pub fn new(parent: impl Into<String>, config: Config, stream: WebSocket<TcpStream>, resources: Arc<Resources>, scheduler: Scheduler) -> Self {
        let dbg = Dbg::new(parent, "WebConnection");
        Self {
            config,
            stream: Owner::new(stream),
            timeout: Duration::from_secs(10),
            resources,
            scheduler,
            handles: Handles::new(&dbg),
            dbg,
        }
    }
    ///
    /// Returns configured [TcpSocket]
    fn message(dbg: &Dbg, ) -> TcpMessage {
        TcpMessage::new(
            dbg,
            vec![
                MessageField::Syn(FieldSyn::default()),
                MessageField::Id(FieldId(4)),
                MessageField::Kind(FieldKind(MessageKind::Bytes)),
                MessageField::Size(FieldSize(4)),
                MessageField::Data(FieldData(vec![]))
            ],
            ParseData::new(
                dbg,
                ParseSize::new(
                    dbg,
                    FieldSize(4),
                    ParseKind::new(
                        dbg,
                        FieldKind(MessageKind::Bytes),
                        ParseId::new(
                            dbg,
                            FieldId(4),
                            ParseSyn::new(
                                dbg,
                                FieldSyn::default(),
                            ),
                        ),
                    ),
                ),
            ),
        )
    }
    ///
    /// Listening incoming messages from remote client
    pub fn run(&self) -> Result<(), Error> {
        let dbg = self.dbg.clone();
        log::debug!("{dbg}.run | Starting...");
        let mut stream = self.stream.take().unwrap();
        let timeout = self.timeout;
        let api_server = ApiServer::new(self.config.clone(), self.resources.clone());
        let mut keep_alive = true;
        let handle = self.scheduler.spawn(move || {
            let mut message = Self::message(&dbg);
            while keep_alive {
                match Self::read(&dbg, &mut stream, &mut message, timeout) {
                    Ok((id, msg)) => match msg {
                        MsgKind::Bytes(bytes) => {
                            let dbg_bytes = if bytes.len() > 16 {format!("{:?} ...", &bytes[..16])} else {format!("{:?}", bytes)};
                            log::trace!("{}.run | Received id: {:?},  bytes: {:?}", dbg, id, dbg_bytes);
                            let time = Instant::now();
                            let result = api_server.build(&bytes);
                            log::trace!("{}.run | Elapsed: {:?}", dbg, time.elapsed());
                            keep_alive = result.keep_alive;
                            match Self::send(&dbg, &mut stream, &mut message, &result.data, Some(id.0)) {
                                Ok(_) => {}
                                Err(err) => {
                                    log::warn!("{}.run | Error sending reply: {:?}", dbg, err);
                                    break;
                                }
                            }
                        }
                        _ => log::warn!("{}.run | Unexpected kind (Bytes expected) of TcpMessage: {:?}", dbg, msg),
                    }
                    Err(err) => {
                        log::warn!("{dbg}.run | Read error; {:?}", err);
                        log::info!("{dbg}.run | Connection closed");
                        break;
                    }
                }
            }
            log::info!("{}.run | Exit", dbg);
            Ok(())
        });
        match handle {
            Ok(handle) => {
                self.handles.push(handle);
                log::info!("{}.run | Starting - Ok", self.dbg);
                Ok(())
            }
            Err(err) => Err(Error::new(&self.dbg, "run").pass(err.to_string())),
        }
    }
    ///
    /// Sending a [Message] via TCP socket
    pub fn send(dbg: &Dbg, stream: &mut WebSocket<TcpStream>, message: &mut TcpMessage, bytes: &[u8], msgid: Option<u32>) -> Result<FieldId, Error> {
        let error = Error::new(dbg, "send");
        log::trace!("{}.send | bytes: {:?}", dbg, bytes);
        let msgid = msgid.unwrap_or_else(|| {
            0
            // self.msgid. = (self.msgid % u32::MAX) + 1;
            // self.msgid
        });
        let bytes = message.build(bytes, msgid);
        let result = stream.send(tungstenite::Message::binary(bytes));
        match result {
            Ok(_) => {
                return Ok(FieldId(msgid))
            }
            Err(err) => {
                if let Err(err) = stream.flush() {
                    log::warn!("{}.read | Flush stream error: {:?}", dbg, err);
                }
                return Err(error.pass_with("Write to tcp stream error", err.to_string()));
            }
        }
    }
    ///
    /// Reads a [Message] parsed from TCP socket
    /// - Returns payload bytes only (cuting header)
    pub fn read(dbg: &Dbg, stream: &mut WebSocket<TcpStream>, message: &mut TcpMessage, timeout: Duration) -> Result<(FieldId, MsgKind), Error> {
        let error = Error::new(dbg, "read");
        let time = Instant::now();
        // let mut stream = BufReader::new(stream);
        loop {
            match stream.read() {
                Ok(msg) => match msg {
                    tungstenite::Message::Binary(bytes) => {
                        let len = bytes.len();
                        log::trace!("{}.read |     read len: {:?}", dbg, len);
                        match message.parse(bytes[..len].to_vec()) {
                            Ok((id, kind, size, bytes)) => {
                                let dbg_bytes = if bytes.len() > 16 {format!("{:?} ...", &bytes[..16])} else {format!("{:?}", bytes)};
                                log::trace!("{}.read | id: {:?},  kind: {:?},  size: {:?},  bytes: {:?}", dbg, id, kind, size, dbg_bytes);
                                match kind {
                                    MessageKind::Any => return Ok((id.clone(), MsgKind::Bytes(bytes.to_owned()))),
                                    MessageKind::Empty => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::Bytes => return Ok((id.clone(), MsgKind::Bytes(bytes.to_owned()))),
                                    MessageKind::Bool => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::U16 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::U32 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::U64 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::I16 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::I32 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::I64 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::F32 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::F64 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::String => match String::from_utf8(bytes) {
                                        Ok(value) => return Ok((id.clone(), MsgKind::String(value))),
                                        Err(err) => return Err(format!("{}.read | Message::string parse error: {}", dbg, err).into()),
                                    },
                                    MessageKind::Timestamp => log::warn!("{}.read | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                    MessageKind::Duration => log::warn!("{}.read | Message of kind '{:?}' - is not implemented yet", dbg, kind),
                                }
                            }
                            Err(err) => {
                                log::warn!("{}", err);
                            }
                        };
                        if len == 0 {
                            if let Err(err) = stream.flush() {
                                log::warn!("{}.read | Flush stream error: {:?}", dbg, err);
                            }
                            // if let Err(err) = self.close() {
                            //     log::warn!("{}.read | Close tcp stream error: {:?}", dbg, err);
                            // }
                            return Err(format!("{}.read | tcp stream closed", dbg).into());
                        }
                    }
                    tungstenite::Message::Close(msg) => {
                        let msg = match msg {
                            Some(msg) => error.err(format!("Web-socket closed with: {:?}", msg)),
                            None => error.err("Web-socket closed"),
                        };
                        if let Err(err) = stream.close(None) {
                            log::warn!("{}.read | Web-socket close error: {:?}", dbg, err);
                        }
                        // if let IsConnected::Closed(_) = Self::parse_err(dbg, err) {
                        //     if let Err(err) = stream.flush() {
                        //         log::warn!("{}.read | Flush stream error: {:?}", dbg, err);
                        //     }
                        // };
                        return Err(msg);
                    }
                    tungstenite::Message::Text(_) => {
                        let msg = error.err(format!("Unsupported kind of message 'Text' Closing Web-socket closed"));
                        if let Err(err) = stream.close(None) {
                            log::warn!("{}.read | Web-socket close error: {:?}", dbg, err);
                        }
                        return Err(msg);
                    }
                    tungstenite::Message::Ping(_) => {
                        let msg = error.err(format!("Unsupported kind of message 'Ping' Closing Web-socket closed"));
                        if let Err(err) = stream.close(None) {
                            log::warn!("{}.read | Web-socket close error: {:?}", dbg, err);
                        }
                        return Err(msg);
                    }
                    tungstenite::Message::Pong(_) => {
                        let msg = error.err(format!("Unsupported kind of message 'Pong' Closing Web-socket closed"));
                        if let Err(err) = stream.close(None) {
                            log::warn!("{}.read | Web-socket close error: {:?}", dbg, err);
                        }
                        return Err(msg);
                    }
                    tungstenite::Message::Frame(_) => {
                        let msg = error.err(format!("Unsupported kind of message 'Frame' Closing Web-socket closed"));
                        if let Err(err) = stream.close(None) {
                            log::warn!("{}.read | Web-socket close error: {:?}", dbg, err);
                        }
                        return Err(msg);
                    }
                                    }
                Err(err) => {
                    let msg = error.pass_with("Web-socket closed with error", err.to_string());
                    // if let IsConnected::Closed(_) = self.parse_err(err) {
                    //     if let Err(err) = self.close() {
                    //         log::warn!("{}.read | Close tcp stream error: {:?}", self.dbg, err);
                    //     }
                    // };
                    if let Err(err) = stream.close(None) {
                        log::warn!("{}.read | Web-socket close error: {:?}", dbg, err);
                    }
                    return Err(msg);
                }
            };
            if time.elapsed() > timeout {
                return Err(
                    error.err(format!("No valid message received in specified timeout {:?}", timeout)),
                );
            }
        }
    }
    ///
    /// Returns Connection status dipending on IO Error
    fn parse_err(dbg: &Dbg, input: std::io::Error) -> IsConnected<(), Error> {
        log::warn!("{}.parse_err | error reading from socket: {:?}", dbg, input);
        log::warn!("{}.parse_err | error kind: {:?}", dbg, input.kind());
        let err = Error::new(dbg, "parse_err").pass(&input.to_string());
        match input.kind() {
            // std::io::ErrorKind::NotFound => todo!(),
            std::io::ErrorKind::PermissionDenied => IsConnected::Closed(err),
            std::io::ErrorKind::ConnectionRefused => IsConnected::Closed(err),
            std::io::ErrorKind::ConnectionReset => IsConnected::Closed(err),
            std::io::ErrorKind::HostUnreachable => IsConnected::Closed(err),
            std::io::ErrorKind::NetworkUnreachable => IsConnected::Closed(err),
            std::io::ErrorKind::ConnectionAborted => IsConnected::Closed(err),
            std::io::ErrorKind::NotConnected => IsConnected::Closed(err),
            std::io::ErrorKind::AddrInUse => IsConnected::Closed(err),
            std::io::ErrorKind::AddrNotAvailable => IsConnected::Closed(err),
            std::io::ErrorKind::NetworkDown => IsConnected::Closed(err),
            std::io::ErrorKind::BrokenPipe => IsConnected::Closed(err),
            std::io::ErrorKind::AlreadyExists => IsConnected::Closed(err),
            std::io::ErrorKind::WouldBlock => IsConnected::Closed(err),
            // std::io::ErrorKind::NotADirectory => todo!(),
            // std::io::ErrorKind::IsADirectory => todo!(),
            // std::io::ErrorKind::DirectoryNotEmpty => todo!(),
            // std::io::ErrorKind::ReadOnlyFilesystem => todo!(),
            // std::io::ErrorKind::FilesystemLoop => todo!(),
            // std::io::ErrorKind::StaleNetworkFileHandle => todo!(),
            // std::io::ErrorKind::InvalidInput => todo!(),
            // std::io::ErrorKind::InvalidData => todo!(),
            std::io::ErrorKind::TimedOut => IsConnected::Closed(err),
            // std::io::ErrorKind::WriteZero => todo!(),
            // std::io::ErrorKind::StorageFull => todo!(),
            // std::io::ErrorKind::NotSeekable => todo!(),
            // std::io::ErrorKind::FilesystemQuotaExceeded => todo!(),
            // std::io::ErrorKind::FileTooLarge => todo!(),
            // std::io::ErrorKind::ResourceBusy => todo!(),
            // std::io::ErrorKind::ExecutableFileBusy => todo!(),
            // std::io::ErrorKind::Deadlock => todo!(),
            // std::io::ErrorKind::CrossesDevices => todo!(),
            // std::io::ErrorKind::TooManyLinks => todo!(),
            // std::io::ErrorKind::InvalidFilename => todo!(),
            // std::io::ErrorKind::ArgumentListTooLong => todo!(),
            // std::io::ErrorKind::Interrupted => todo!(),
            // std::io::ErrorKind::Unsupported => todo!(),
            // std::io::ErrorKind::UnexpectedEof => todo!(),
            // std::io::ErrorKind::OutOfMemory => todo!(),
            // std::io::ErrorKind::Other => todo!(),
            _ => IsConnected::Closed(err),
        }
    }
}
