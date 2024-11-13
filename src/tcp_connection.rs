use std::{
    error::Error, io::{
        BufReader, Read, Write
    }, net::TcpStream, sync::Arc, thread, time::Duration 
};
use api_tools::{
    api::{
        message::{fields::{FieldData, FieldId, FieldKind, FieldSize, FieldSyn}, message::{Message, MessageField}, message_kind::MessageKind},
        socket::{connection_status::IsConnected, tcp_socket::TcpSocket},
    },
    debug::dbg_id::DbgId,
};
use crate::{api_server::ApiServer, config::Config};
///
/// Opens a connection via TCP Socket
pub struct TcpConnection {
    id: String,
    stream: Arc<TcpStream>,
    config: Config,
}
//
// 
impl TcpConnection {
    ///
    /// Returns TcpConnection new instance
    pub fn new(dbgid: impl Into<String>, config: Config, stream: TcpStream) -> Self {
        Self {
            id: format!("{}/TcpConnection", dbgid.into()),
            stream: Arc::new(stream),
            config,
        }
    }
    ///
    /// Writing bytes to the TcpStream
    fn write(self_id: &str, stream: &mut TcpStream, bytes: &[u8]) -> Result<(), Box<dyn Error>> {
        match stream.write_all(bytes) {
            Ok(_) => Ok(()),
            Err(err) => {
                log::warn!("{}.write | Error, data: {:?},\n\tdetales: {:?}", self_id, bytes, err);
                Err(Box::new(err))
            },
        }
    }
    ///
    /// Listening incoming messages from remote client
    pub fn run(&mut self) {
        log::debug!("{}.run | Start reading...", self.id);
        let api_server = ApiServer::new(self.config.clone());
        let mut keep_alive = true;
        // self.configureSocket(stream, threadName, Duration::from_secs(10), false);
        // let mut stream_read = BufReader::new(self.stream.try_clone().unwrap());
        // let mut message_id = 0u32;
        let message = Message::new(&[
            MessageField::Syn(FieldSyn(Message::SYN)),
            MessageField::Id(FieldId(4)),
            MessageField::Kind(FieldKind(MessageKind::String)),
            MessageField::Size(FieldSize(4)),
            MessageField::Data(FieldData(vec![]))
        ]);
        let mut socket = TcpSocket::new(
            &DbgId(self.id.clone()),
            self.config.address.clone(),
            message,
            Some(Arc::clone(&self.stream)),
        );
        while keep_alive {
            match socket.read_message() {
                IsConnected::Active((id, bytes)) => {
                    let dbg_bytes = if bytes.len() > 16 {format!("{:?} ...", &bytes[..16])} else {format!("{:?}", bytes)};
                    log::debug!("{}.run | Received id: {:?},  bytes: {:?}", self.id, id, dbg_bytes);
                    let result = api_server.build(&bytes);
                    keep_alive = result.keepAlive;
                    match socket.send_message(&result.data) {
                        IsConnected::Active(_) => {}
                        IsConnected::Closed(err) => {
                            log::warn!("{}.run | Error sending reply: {:?}", self.id, err);
                        }
                    }
                }
                IsConnected::Closed(_) => {
                    log::debug!("{}.run | Connection closed", self.id);
                    return
                }
            }
        }
        // while keep_alive {
        //     match self.read_message(&mut stream_read, &mut message) {
        //         ConnectionStatus::Active((id, bytes)) => {
        //             // debug!("{}.run | received bytes: {:?}", threadName, &bytes);
        //             let dbg_bytes = if bytes.len() > 16 {format!("{:?} ...", &bytes[..16])} else {format!("{:?}", bytes)};
        //             log::debug!("{}.run | Received bytes: {:?}", self.id, dbg_bytes);
        //             let result = api_server.build(&bytes);
        //             keep_alive = result.keepAlive;
        //             message_id = (message_id % u32::MAX) + 1;
        //             let reply = message.build(&result.data, id.0);
        //             match Self::write(&self.id, &mut self.stream, &reply) {
        //                 Ok(_) => {},
        //                 Err(err) => {
        //                     log::warn!("{}.run | Error sending reply: {:?}", self.id, err);
        //                     // cancel = true;
        //                 },
        //             };
        //         },
        //         ConnectionStatus::Closed => {
        //             log::debug!("{}.run | Connection closed", self.id);
        //             return
        //         },
        //     }
        //     thread::sleep(Duration::from_millis(100))
        // }
        log::info!("{}.run | Exit", self.id);
    }
    ///
    /// bytes to be read from socket at once
    const BUF_LEN: usize = 1024 * 1;
    ///
    /// Reads all available data from the TspStream until `Message` parsed successfully
    /// - Returns payload bytes only (cuting header) wraped into `ConnectionStatus`
    /// - Returns `ConnectionStatus::Active`: if read bytes non zero length without errors
    /// - Returns `ConnectionStatus::Closed`:
    ///    - if read 0 bytes
    ///    - if on error
    fn read_message(&mut self, mut stream: impl Read, message: &mut Message) -> ConnectionStatus<(FieldId, Vec<u8>)> {
        let mut buf = [0; Self::BUF_LEN];
        loop {
            match stream.read(&mut buf) {
                Ok(len) => {
                    log::trace!("{}.read_all |     read len: {:?}", self.id, len);
                    match message.parse(&buf[..len]) {
                        Ok(parsed) => match parsed.as_slice() {
                            [ MessageField::Id(id), MessageField::Kind(kind), MessageField::Size(FieldSize(size)), MessageField::Data(FieldData(data)) ] => {
                                log::debug!("{}.read_message | kind: {:?},  size: {},  data: {:?}", self.id, kind, size, data);
                                match kind.0 {
                                    MessageKind::Any => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::Empty => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::Bytes => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::Bool => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::U16 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::U32 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::U64 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::I16 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::I32 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::I64 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::F32 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::F64 => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::String => return ConnectionStatus::Active((id.clone(), data.to_owned())),
                                    MessageKind::Timestamp => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                    MessageKind::Duration => log::warn!("{} | Message of kind '{:?}' - is not implemented yet", self.id, kind),
                                }
                            }
                            v if v.is_empty() => {}
                            [..] => {
                                let err = format!("{} | Unknown message kind {:?}", self.id, parsed);
                                log::warn!("{}", err);
                                // return Err(err.into())
                            }
                        }
                        Err(err) => {
                            log::warn!("{}", err);
                            // return Err(err.into())
                        }
                    };
                    if len < Self::BUF_LEN {
                        if len == 0 {
                            return ConnectionStatus::Closed;
                        }
                    }
                },
                Err(err) => {
                    _ = self.parse_err(err);
                }
            };
        }
    }
    // ///
    // /// reads all avalible data from the TspStream
    // /// - returns Active: if read bytes non zero length without errors
    // /// - returns Closed:
    // ///    - if read 0 bytes
    // ///    - if on error
    // fn read_all(&self, mut stream: impl Read) -> ConnectionStatus {
    //     let mut buf = [0; Self::BUF_LEN];
    //     let mut result = vec![];
    //     loop {
    //         match stream.read(&mut buf) {
    //             Ok(len) => {
    //                 log::debug!("{}.read_all |     read len: {:?}", self.id, len);
    //                 result.append(& mut buf[..len].into());
    //                 if len < Self::BUF_LEN {
    //                     if len == 0 {
    //                         return ConnectionStatus::Closed;
    //                     } else {
    //                         return ConnectionStatus::Active(result)
    //                     }
    //                 }
    //             },
    //             Err(err) => return self.parse_err(err),
    //         };
    //     }
    // }
    ///
    /// Returns Connection status dipending on IO Error
    fn parse_err(&self, err: std::io::Error) -> ConnectionStatus<()> {
        log::warn!("{}.read_all | error reading from socket: {:?}", self.id, err);
        log::warn!("{}.read_all | error kind: {:?}", self.id, err.kind());
        match err.kind() {
            // std::io::ErrorKind::NotFound => todo!(),
            std::io::ErrorKind::PermissionDenied => ConnectionStatus::Closed,
            std::io::ErrorKind::ConnectionRefused => ConnectionStatus::Closed,
            std::io::ErrorKind::ConnectionReset => ConnectionStatus::Closed,
            // std::io::ErrorKind::HostUnreachable => ConnectionStatus::Closed,
            // std::io::ErrorKind::NetworkUnreachable => ConnectionStatus::Closed,
            std::io::ErrorKind::ConnectionAborted => ConnectionStatus::Closed,
            std::io::ErrorKind::NotConnected => ConnectionStatus::Closed,
            std::io::ErrorKind::AddrInUse => ConnectionStatus::Closed,
            std::io::ErrorKind::AddrNotAvailable => ConnectionStatus::Closed,
            // std::io::ErrorKind::NetworkDown => ConnectionStatus::Closed,
            std::io::ErrorKind::BrokenPipe => ConnectionStatus::Closed,
            std::io::ErrorKind::AlreadyExists => todo!(),
            std::io::ErrorKind::WouldBlock => ConnectionStatus::Closed,
            // std::io::ErrorKind::NotADirectory => todo!(),
            // std::io::ErrorKind::IsADirectory => todo!(),
            // std::io::ErrorKind::DirectoryNotEmpty => todo!(),
            // std::io::ErrorKind::ReadOnlyFilesystem => todo!(),
            // std::io::ErrorKind::FilesystemLoop => todo!(),
            // std::io::ErrorKind::StaleNetworkFileHandle => todo!(),
            std::io::ErrorKind::InvalidInput => todo!(),
            std::io::ErrorKind::InvalidData => todo!(),
            std::io::ErrorKind::TimedOut => todo!(),
            std::io::ErrorKind::WriteZero => todo!(),
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
            std::io::ErrorKind::Interrupted => todo!(),
            std::io::ErrorKind::Unsupported => todo!(),
            std::io::ErrorKind::UnexpectedEof => todo!(),
            std::io::ErrorKind::OutOfMemory => todo!(),
            std::io::ErrorKind::Other => todo!(),
            _ => ConnectionStatus::Closed,
        }
    }
}

///
/// Connection status
enum ConnectionStatus<T> {
    Active(T),
    Closed,
}
