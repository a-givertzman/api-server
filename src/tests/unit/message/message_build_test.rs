#[cfg(test)]

mod message {
    use std::{sync::Once, time::Duration};
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
    /// Testing such `Message.build`
    #[test]
    fn build() {
        DebugSession::init(LogLevel::Debug, Backtrace::Short);
        init_once();
        init_each();
        log::debug!("");
        let dbgid = "test";
        log::debug!("\n{}", dbgid);
        let test_duration = TestDuration::new(dbgid, Duration::from_secs(1));
        test_duration.run().unwrap();
        let test_data = [
            (
                00, "01234",
                vec![22, MessageKind::String as u8, 00, 00, 00, 05, 48, 49, 50, 51, 52],
            ),
            (
                01, "1234 5",
                vec![22, MessageKind::String as u8, 00, 00, 00, 06, 49, 50, 51, 52, 32, 53],
            ),
            (
                02, "!@#$%^&*()_+",
                vec![22, MessageKind::String as u8, 00, 00, 00, 12, 33, 64, 35, 36, 37, 94, 38, 42, 40, 41, 95, 43],
            ),
            (
                03, r#"QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>?""#,
                vec![22, MessageKind::String as u8, 00, 00, 00, 34, 81, 87, 69, 82, 84, 89, 85, 73, 79, 80, 123, 125, 65, 83, 68, 70, 71, 72, 74, 75, 76, 58, 34, 90, 88, 67, 86, 66, 78, 77, 60, 62, 63, 34],
            ),
        ];
        let mut message = Message::new(&[
            MessageFild::Syn(FieldSyn(Message::SYN)),
            MessageFild::Kind(FieldKind(MessageKind::String)),
            MessageFild::Size(FieldSize(3)),
            MessageFild::Data(FieldData(vec![]))
        ]);
        for (step, data, target) in test_data {
            log::debug!("{} | step: {},  kind: {:?},  size: {},  data: {:?}", dbgid, step, target[1], target[6..].len(), data);
            let result = message.build(data.as_bytes());
            assert!(result == target, "step: {} \nresult: {:?}\ntarget: {:?}", step, result, target);
        }
        test_duration.exit();
    }
}
