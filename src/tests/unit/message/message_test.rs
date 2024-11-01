#[cfg(test)]

mod message {
    use std::{sync::Once, time::{Duration, Instant}};
    use testing::stuff::max_test_duration::TestDuration;
    use debugging::session::debug_session::{DebugSession, LogLevel, Backtrace};

    use crate::socket::message::{fields::{FieldData, FieldKind, FieldSize, FieldSyn}, message::{Message, MessageFild}, message_kind::MessageKind};
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
    fn test_task_cycle() {
        DebugSession::init(LogLevel::Info, Backtrace::Short);
        init_once();
        init_each();
        log::debug!("");
        let dbgid = "test";
        log::debug!("\n{}", dbgid);
        let test_duration = TestDuration::new(dbgid, Duration::from_secs(1));
        test_duration.run().unwrap();
        fn to_bytes(data: &str) -> Vec<u8> {
            let data = data.as_bytes();
            let size = data.len() as u32;
            [
                Message::SYN.to_be_bytes().as_slice(),
                MessageKind::String.to_bytes(),
                size.to_be_bytes().as_slice(),
                data,
            ].concat()
        }
        let test_data = [
            (01, to_bytes("123"), [MessageFild::Kind(FieldKind(MessageKind::String)), MessageFild::Size(FieldSize(3)), MessageFild::Data(FieldData("123".as_bytes().to_vec()))])
        ];
        let message = Message::new(&[
            MessageFild::Syn(FieldSyn(Message::SYN)),
            MessageFild::Kind(FieldKind(MessageKind::String)),
            MessageFild::Size(FieldSize(3)),
            MessageFild::Data(FieldData(vec![]))
        ]);
        for (step, bytes, target) in test_data {
            match message.parse(&bytes) {
                Ok(parsed) => match parsed.as_slice() {
                    [ MessageFild::Syn(FieldSyn(Message::SYN)), MessageFild::Kind(kind), MessageFild::Size(FieldSize(size)), MessageFild::Data(FieldData(data)) ] => {
                        log::debug!("step: {},  kind: {:?},  size: {},  data: {:?}", step, kind, size, data);
                    }
                    [..] => {
                        panic!("Unknown message kind");
                    }
                }
                // assert!(result == target, "step {} \nresult: {:?}\ntarget: {:?}", step, result, target);
                Err(err) => {
                    panic!("{}", err);
                }
            }
        }
        test_duration.exit();
    }
}
