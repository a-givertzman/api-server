use std::{net::TcpStream, sync::Arc};
use api_tools::api::{
    message::{
        fields::{FieldData, FieldId, FieldKind, FieldSize, FieldSyn},
        message::MessageField, message_kind::MessageKind, msg_kind::MsgKind,
        parse_data::ParseData, parse_id::ParseId, parse_kind::ParseKind, parse_size::ParseSize, parse_syn::ParseSyn,
    },
    socket::tcp_socket::{TcpMessage, TcpSocket},
};
use sal_core::{dbg::Dbg, error::Error};
use sal_sync::{sync::{Handles, Owner}, thread_pool::Scheduler};
use crate::{api_server::ApiServer, conf::Config};
use super::resources::Resources;
///
/// Opens a connection via TCP Socket
pub struct TcpConnection {
    config: Config,
    // socket: TcpSocket,
    stream: Owner<TcpStream>,
    resources: Arc<Resources>,
    scheduler: Scheduler,
    handles: Handles<()>,
    dbg: Dbg,
}
//
// 
impl TcpConnection {
    ///
    /// Returns TcpConnection new instance
    pub fn new(parent: impl Into<String>, config: Config, stream: TcpStream, resources: Arc<Resources>, scheduler: Scheduler) -> Self {
        let dbg = Dbg::new(parent, "TcpConnection");
        Self {
            config,
            stream: Owner::new(stream),
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
    pub fn run(self) -> Result<(), Error> {
        let dbg = self.dbg.clone();
        log::debug!("{dbg}.run | Starting...");
        let stream = Arc::new(self.stream.take().unwrap());
        let api_server = ApiServer::new(self.config.clone(), self.resources.clone());
        let mut keep_alive = true;
        let handle = self.scheduler.spawn(move || {
            let message = Self::message(&dbg);
            let mut socket = TcpSocket::new(&dbg, &self.config.address, message, Some(Arc::clone(&stream)));
            while keep_alive {
                match socket.read() {
                    Ok((id, msg)) => match msg {
                        MsgKind::Bytes(bytes) => {
                            // let dbg_bytes = if bytes.len() > 16 {format!("{:?} ...", &bytes[..16])} else {format!("{:?}", bytes)};
                            // log::trace!("{}.run | Received id: {:?},  bytes: {:?}", dbg, id, dbg_bytes);
                            // let time = Instant::now();
                            let result = api_server.build(&bytes);
                            // log::trace!("{}.run | Elapsed: {:?}", dbg, time.elapsed());
                            keep_alive = result.keep_alive;
                            match socket.send(&result.data,  Some(id.0)) {
                                Ok(_) => {}
                                Err(err) => {
                                    log::warn!("{}.run | Error sending reply: {:?}", dbg, err);
                                }
                            }
                        }
                        _ => {
                            log::warn!("{}.run | Unexpected kind (Bytes expected) of TcpMessage: {:?}", dbg, msg);
                        }
                    }
                    Err(_) => {
                        log::debug!("{}.run | Connection closed", dbg);
                        break;
                    }
                }
            }
            log::debug!("{}.run | Exit", dbg);
            Ok(())
        });
        match handle {
            Ok(handle) => {
                self.handles.push(handle);
                log::debug!("{}.run | Starting - Ok", self.dbg);
                Ok(())
            }
            Err(err) => Err(Error::new(&self.dbg, "run").pass(err.to_string())),
        }
    }

}
