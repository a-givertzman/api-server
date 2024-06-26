use log::{debug, info, warn};
use std::{
    error::Error, io::{
        Read, Write,
    }, net::TcpStream, thread, time::Duration 
};
use crate::{api_server::ApiServer, config::Config};
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
    /// writing bytes to the TcpStream
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
        while keep_alive {
            match Self::read_all(&self.id, &mut self.stream) {
                ConnectionStatus::Active(bytes) => {
                    // debug!("{}.run | received bytes: {:?}", threadName, &bytes);
                    debug!("{}.run | Received string: {:?}", self.id, String::from_utf8(bytes.clone()));                
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
    const BUF_LEN: usize = 1024 * 4;
    ///
    /// reads all avalible data from the TspStream
    /// - returns Active: if read bytes non zero length without errors
    /// - returns Closed:
    ///    - if read 0 bytes
    ///    - if on error
    fn read_all(self_id: &str, stream: &mut TcpStream) -> ConnectionStatus {
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

enum ConnectionStatus {
    Active(Vec<u8>),
    Closed,
}
