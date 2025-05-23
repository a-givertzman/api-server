use std::{
    net::TcpStream, sync::Arc, time::Instant,
};
use api_tools::api::{
    message::{
        fields::{FieldData, FieldId, FieldKind, FieldSize, FieldSyn},
        message::MessageField, message_kind::MessageKind, msg_kind::MsgKind,
        parse_data::ParseData, parse_id::ParseId, parse_kind::ParseKind, parse_size::ParseSize, parse_syn::ParseSyn,
    },
    socket::tcp_socket::{TcpMessage, TcpSocket},
};
use sal_core::dbg::Dbg;
use crate::{api_server::ApiServer, config::Config};
use super::resources::Resources;
///
/// Opens a connection via TCP Socket
pub struct TcpConnection {
    dbgid: Dbg,
    config: Config,
    socket: TcpSocket,
    resources: Arc<Resources>
}
//
// 
impl TcpConnection {
    ///
    /// Returns TcpConnection new instance
    pub fn new(parent: impl Into<String>, config: Config, stream: TcpStream, resources: Arc<Resources>,) -> Self {
        let dbgid = Dbg::new(parent, "TcpConnection");
        let message = TcpMessage::new(
            &dbgid,
            vec![
                MessageField::Syn(FieldSyn::default()),
                MessageField::Id(FieldId(4)),
                MessageField::Kind(FieldKind(MessageKind::Bytes)),
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
                        FieldKind(MessageKind::Bytes),
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
            resources,
        }
    }
    ///
    /// Listening incoming messages from remote client
    pub fn run(&mut self) {
        log::debug!("{}.run | Start reading...", self.dbgid);
        let api_server = ApiServer::new(self.config.clone(), self.resources.clone());
        let mut keep_alive = true;
        while keep_alive {
            match self.socket.read() {
                Ok((id, msg)) => match msg {
                    MsgKind::Bytes(bytes) => {
                        let dbg_bytes = if bytes.len() > 16 {format!("{:?} ...", &bytes[..16])} else {format!("{:?}", bytes)};
                        log::debug!("{}.run | Received id: {:?},  bytes: {:?}", self.dbgid, id, dbg_bytes);
                        let time = Instant::now();
                        let result = api_server.build(&bytes);
                        log::debug!("{}.run | Elapsed: {:?}", self.dbgid, time.elapsed());
                        keep_alive = result.keep_alive;
                        match self.socket.send(&result.data,  Some(id.0)) {
                            Ok(_) => {}
                            Err(err) => {
                                log::warn!("{}.run | Error sending reply: {:?}", self.dbgid, err);
                            }
                        }
                    }
                    _ => {
                        log::warn!("{}.run | Unexpected kind (Bytes expected) of TcpMessage: {:?}", self.dbgid, msg);
                    }
                }
                Err(_) => {
                    log::info!("{}.run | Connection closed", self.dbgid);
                    break;
                }
            }
        }
        log::info!("{}.run | Exit", self.dbgid);
    }

}
