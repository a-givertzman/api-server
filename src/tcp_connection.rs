use std::{
    net::TcpStream, sync::Arc 
};
use api_tools::{
    api::{
        message::{
            fields::{FieldData, FieldId, FieldKind, FieldSize, FieldSyn},
            message::MessageField, message_kind::MessageKind, parse_data::ParseData,
            parse_id::ParseId, parse_kind::ParseKind, parse_size::ParseSize, parse_syn::ParseSyn,
        },
        socket::{connection_status::IsConnected, tcp_socket::{TcpMessage, TcpSocket}},
    },
    debug::dbg_id::DbgId,
};
use crate::{api_server::ApiServer, config::Config};
///
/// Opens a connection via TCP Socket
pub struct TcpConnection {
    dbgid: DbgId,
    config: Config,
    socket: TcpSocket,
}
//
// 
impl TcpConnection {
    ///
    /// Returns TcpConnection new instance
    pub fn new(dbgid: &DbgId, config: Config, stream: TcpStream) -> Self {
        let dbgid = DbgId(format!("{}/TcpConnection", dbgid));
        let message = TcpMessage::new(
            &dbgid,
            vec![
                MessageField::Syn(FieldSyn::default()),
                MessageField::Id(FieldId(4)),
                MessageField::Kind(FieldKind(MessageKind::String)),
                MessageField::Size(FieldSize(4)),
                MessageField::Data(FieldData(vec![]))
            ],
            ParseData::new(
                &dbgid,
                ParseSize::new(
                    &dbgid,
                    FieldSize(4),
                    ParseKind::new(
                        &dbgid,
                        FieldKind(MessageKind::Any),
                        ParseId::new(
                            &dbgid,
                            FieldId(4),
                            ParseSyn::new(
                                &dbgid,
                                FieldSyn::default(),
                            ),
                        ),
                    ),
                ),
            ),
        );
        let stream = Arc::new(stream);
        Self {
            dbgid: dbgid.clone(),
            socket: TcpSocket::new(&dbgid, &config.address, message, Some(Arc::clone(&stream))),
            config,
        }
    }
    ///
    /// Listening incoming messages from remote client
    pub fn run(&mut self) {
        log::debug!("{}.run | Start reading...", self.dbgid);
        let api_server = ApiServer::new(self.config.clone());
        let mut keep_alive = true;
        // self.configureSocket(stream, threadName, Duration::from_secs(10), false);
        // let mut stream_read = BufReader::new(self.stream.try_clone().unwrap());
        // let mut message_id = 0u32;
        while keep_alive {
            match self.socket.read_message() {
                IsConnected::Active((id, bytes)) => {
                    let dbg_bytes = if bytes.len() > 16 {format!("{:?} ...", &bytes[..16])} else {format!("{:?}", bytes)};
                    log::debug!("{}.run | Received id: {:?},  bytes: {:?}", self.dbgid, id, dbg_bytes);
                    let result = api_server.build(&bytes);
                    keep_alive = result.keepAlive;
                    match self.socket.send_message(&result.data) {
                        IsConnected::Active(_) => {}
                        IsConnected::Closed(err) => {
                            log::warn!("{}.run | Error sending reply: {:?}", self.dbgid, err);
                        }
                    }
                }
                IsConnected::Closed(_) => {
                    log::debug!("{}.run | Connection closed", self.dbgid);
                    return
                }
            }
        }
        log::info!("{}.run | Exit", self.dbgid);
    }

}
