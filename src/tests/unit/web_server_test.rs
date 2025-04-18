#[cfg(test)]

mod web_serwer {
    use core::str;
    use std::{io::Read, net::TcpListener, sync::Once, time::Duration};
    use api_tools::api::{message::{fields::{FieldData, FieldId, FieldKind, FieldSize, FieldSyn}, message::MessageField, message_kind::MessageKind, parse_data::ParseData, parse_id::ParseId, parse_kind::ParseKind, parse_size::ParseSize, parse_syn::ParseSyn}, socket::tcp_socket::TcpMessage};
    use sal_core::dbg::Dbg;
    use testing::stuff::max_test_duration::TestDuration;
    use debugging::session::debug_session::{DebugSession, LogLevel, Backtrace};
    ///
    ///
    static INIT: Once = Once::new();
    ///
    /// once called initialisation
    fn init_once() {
        INIT.call_once(|| {
            // implement your initialisation code to be called only once for current test file
        })
    }
    ///
    /// returns:
    ///  - ...
    fn init_each() -> () {}
    ///
    /// Testing such functionality / behavior
    #[test]
    fn bind() {
        DebugSession::init(LogLevel::Debug, Backtrace::Short);
        init_once();
        init_each();
        log::debug!("");
        let dbgid = Dbg::own("web_serwer::bind");
        log::debug!("\n{}", dbgid);
        let test_duration = TestDuration::new(&dbgid, Duration::from_secs(120));
        test_duration.run().unwrap();
        let addr = "0.0.0.0:8080";
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
        loop {
            match TcpListener::bind(addr) {
                Ok(listener) => {
                    log::info!("WebServer.run | opened on: {:?}\n", addr);
                    for stream in listener.incoming() {
                        match stream {
                            Ok(mut stream) => {
                                log::info!("WebServer.run | Incoming: {:?}\n", stream.peer_addr());
                                let mut buf = vec![0u8; 1024 * 12];
                                'read: loop {
                                    match stream.read(&mut buf) {
                                        Ok(len) => {
                                            if len > 0 {
                                                match buf.get(..len) {
                                                    Some(bytes) => {
                                                        log::debug!("WebServer.run | bytes({}): {:?}", len, bytes);
                                                        // match message.parse(bytes.to_vec()) {
                                                        //     Ok((id, kind, _, bytes)) => {
                                                        //         log::debug!("WebServer.run | Received id: {:?},  kind: {:?},  bytes: {:?}", id, kind, bytes);
                                                        //     }
                                                        //     Err(err) => {
                                                        //         log::warn!("WebServer.run | Parse error: {:#?}", err);
                                                        //     }
                                                        // }
                                                        match str::from_utf8(bytes) {
                                                            Ok(json_str) => {
                                                                log::debug!("WebServer.run | json_str: {:#?}", json_str);
                                                            }
                                                            Err(err) => {
                                                                log::warn!("WebServer.run | Parse error: {:#?}", err);
                                                            }
                                                        }
                                                    }
                                                    None => {
                                                        log::debug!("WebServer.run | Empty bytes: {}", len);
                                                    }
                                                }
                                            } else {
                                                break 'read;
                                            }
                                        },
                                        Err(err) => {
                                            log::warn!("WebServer.run | Read error: {:#?}", err);
                                        },
                                    }
                                }
                            }
                            Err(err) => {
                                log::warn!("WebServer.run | Incoming error: {:#?}", err);
                            }
                        }
                    }
                },
                Err(err) => {
                    log::debug!("WebServer.run | Bind error on: {:?}\n\tdetailes: {:?}", addr, err);
                    std::thread::sleep(Duration::from_secs(2));
                },
            }
        }
        // assert!(result == target, "step {} \nresult: {:?}\ntarget: {:?}", step, result, target);
        test_duration.exit();
    }
}
