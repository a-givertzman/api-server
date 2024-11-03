use log::{debug, info, warn};
use std::{
    error::Error, io::{
        BufReader, Read, Write
    }, net::TcpStream, thread, time::Duration 
};
use crate::{api_server::ApiServer, config::Config, socket::message::{fields::{FieldData, FieldKind, FieldSize, FieldSyn}, message::{Message, MessageFild}, message_kind::MessageKind}};
///
/// 
pub struct TcpConnection {
    id: String,
    stream: TcpStream,
    config: Config,
}
///
/// 
impl TcpConnection {
    ///
    /// 
    pub fn new(parent_id: impl Into<String>, config: Config, stream: TcpStream) -> Self {
        Self {
            id: format!("{}/TcpConnection",parent_id.into()),
            stream,
            config,
        }
    }
    ///
    /// Writing bytes to the TcpStream
    fn write(self_id: &str, stream: &mut TcpStream, bytes: &[u8]) -> Result<(), Box<dyn Error>> {
        match stream.write_all(bytes) {
            Ok(_) => Ok(()),
            Err(err) => {
                warn!("{}.write | Error, data: {:?},\n\tdetales: {:?}", self_id, bytes, err);
                Err(Box::new(err))
            },
        }
    }
    ///
    /// Listening incoming messages from remote client
    pub fn run(&mut self) {
        debug!("{}.run | Start reading...", self.id);
        let api_server = ApiServer::new(self.config.clone());
        let mut keep_alive = true;
        // self.configureSocket(stream, threadName, Duration::from_secs(10), false);
        let mut stream_read = BufReader::new(self.stream.try_clone().unwrap());
        let mut message = Message::new(&[
            MessageFild::Syn(FieldSyn(Message::SYN)),
            MessageFild::Kind(FieldKind(MessageKind::String)),
            MessageFild::Size(FieldSize(3)),
            MessageFild::Data(FieldData(vec![]))
        ]);
        while keep_alive {
            match Self::read_all(&self.id, &mut stream_read) {
                ConnectionStatus::Active(bytes) => {
                    // debug!("{}.run | received bytes: {:?}", threadName, &bytes);
                    debug!("{}.run | Received string: {:?}", self.id, String::from_utf8(bytes.clone()));
                    match message.parse(&bytes) {
                        Ok(parsed) => match parsed.as_slice() {
                            [ MessageFild::Kind(kind), MessageFild::Size(FieldSize(size)), MessageFild::Data(FieldData(bytes)) ] => {
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
                                    MessageKind::String => {
                                        let result = api_server.build(bytes);
                                        keep_alive = result.keepAlive;
                                        let reply = result.data;
                                        match Self::write(&self.id, &mut self.stream, &reply) {
                                            Ok(_) => {},
                                            Err(err) => {
                                                warn!("{}.run | Error sending reply: {:?}", self.id, err);
                                                // cancel = true;
                                            },
                                        };
                                    }
                                    MessageKind::Timestamp => todo!(),
                                    MessageKind::Duration => todo!(),
                                }
                            }
                            [..] => {
                                log::warn!("{} | Unknown message format {:?}", self.id, parsed);
                            }
                        }
                        Err(err) => {
                            log::debug!("{} | {}", self.id, err);
                        }
                    }
                },
                ConnectionStatus::Closed => {
                    debug!("{}.run | Connection closed", self.id);
                    return
                },
            }
            thread::sleep(Duration::from_millis(100))
        }
        info!("{}.run | Exit", self.id);
    }
    ///
    /// bytes to be read from socket at once
    const BUF_LEN: usize = 1024 * 1;
    ///
    /// reads all avalible data from the TspStream
    /// - returns Active: if read bytes non zero length without errors
    /// - returns Closed:
    ///    - if read 0 bytes
    ///    - if on error
    fn read_all(self_id: &str, mut stream: impl Read) -> ConnectionStatus {
        let mut buf = [0; Self::BUF_LEN];
        let mut result = vec![];
        loop {
            match stream.read(&mut buf) {
                Ok(len) => {
                    debug!("{}.read_all |     read len: {:?}", self_id, len);
                    result.append(& mut buf[..len].into());
                    if len < Self::BUF_LEN {
                        if len == 0 {
                            return ConnectionStatus::Closed;
                        } else {
                            return ConnectionStatus::Active(result)
                        }
                    }
                },
                Err(err) => {
                    warn!("{}.read_all | error reading from socket: {:?}", self_id, err);
                    warn!("{}.read_all | error kind: {:?}", self_id, err.kind());
                    return match err.kind() {
                        std::io::ErrorKind::NotFound => todo!(),
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
                    // return ConnectionStatus::Closed;
                },
            };
        }
    }
}
///
/// Returns ConnectionStatus depending on Socket ErrorKind
fn parse_socket_error(self_id: &str, err: std::io::Error) -> ConnectionStatus {
    warn!("{}.read_all | error kind: {:?}", self_id, err.kind());
    match err.kind() {
        std::io::ErrorKind::NotFound => todo!(),
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
enum ConnectionStatus {
    Active(Vec<u8>),
    Closed,
}
