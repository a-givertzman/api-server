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
    /// Testing such `Message.parse`
    #[test]
    fn parse() {
        DebugSession::init(LogLevel::Debug, Backtrace::Short);
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
        let field_kind = MessageFild::Kind(FieldKind(MessageKind::String));
        fn field_size(size: u32) -> MessageFild { MessageFild::Size(FieldSize(size)) }
        let test_data = [
            (
                00, vec![
                    to_bytes("123"),
                ],
                (field_kind.clone(), field_size(3), MessageFild::Data(FieldData("123".as_bytes().to_vec()))),
            ),
            (
                01, vec![
                    [10, 11, 12, 13].to_vec(),
                    to_bytes("12345")[..1].to_vec(),
                    to_bytes("12345")[1..].to_vec(),
                ],
                (field_kind.clone(), field_size(5), MessageFild::Data(FieldData("12345".as_bytes().to_vec()))),
            ),
            (
                02, vec![
                    to_bytes("2345")[..2].to_vec(),
                    to_bytes("2345")[2..].to_vec(),
                    [20, 21, 23, 24].to_vec(),
                ],
                (field_kind.clone(), field_size(4), MessageFild::Data(FieldData("2345".as_bytes().to_vec()))),
            ),
            (
                03, vec![
                    [31, 32, 33, 34].to_vec(),
                    to_bytes("3456")[..3].to_vec(),
                    to_bytes("3456")[3..].to_vec(),
                    [35, 36, 37, 38].to_vec(),
                ],
                (field_kind.clone(), field_size(4), MessageFild::Data(FieldData("3456".as_bytes().to_vec()))),
            ),
            (
                04, vec![
                    to_bytes("456")[..4].to_vec(),
                    to_bytes("456")[4..].to_vec(),
                ],
                (field_kind.clone(), field_size(3), MessageFild::Data(FieldData("456".as_bytes().to_vec()))),
            ),
            (
                05, vec![
                    to_bytes("56789")[..5].to_vec(),
                    to_bytes("56789")[5..].to_vec(),
                ],
                (field_kind.clone(), field_size(5), MessageFild::Data(FieldData("56789".as_bytes().to_vec()))),
            ),
            (
                06, vec![
                    to_bytes("67890")[..6].to_vec(),
                    to_bytes("67890")[6..].to_vec(),
                ],
                (field_kind.clone(), field_size(5), MessageFild::Data(FieldData("67890".as_bytes().to_vec()))),
            ),
            (
                07, vec![
                    to_bytes("78901")[..7].to_vec(),
                    to_bytes("78901")[7..].to_vec(),
                ],
                (field_kind.clone(), field_size(5), MessageFild::Data(FieldData("78901".as_bytes().to_vec()))),
            ),
            (
                08, vec![
                    [80, 81, 82, 83].to_vec(),
                    to_bytes("1234567890")[ ..2].to_vec(),
                    to_bytes("1234567890")[2..5].to_vec(),
                    to_bytes("1234567890")[5..7].to_vec(),
                    to_bytes("1234567890")[7..9].to_vec(),
                    to_bytes("1234567890")[9.. ].to_vec(),
                ],
                (field_kind.clone(), field_size(10), MessageFild::Data(FieldData("1234567890".as_bytes().to_vec()))),
            ),
            (
                09, vec![
                    [[34, 36].into(), to_bytes("123N"), [78, 22].into()].concat(),
                ],
                (field_kind.clone(), field_size(4), MessageFild::Data(FieldData("123N".as_bytes().to_vec()))),
            ),
        ];
        let mut message = Message::new(&[
            MessageFild::Syn(FieldSyn(Message::SYN)),
            MessageFild::Kind(FieldKind(MessageKind::String)),
            MessageFild::Size(FieldSize(3)),
            MessageFild::Data(FieldData(vec![]))
        ]);
        for (step, messages, target) in test_data {
            let mut result_data = None;
            for bytes in messages {
                match message.parse(&bytes) {
                    Ok(parsed) => match parsed.as_slice() {
                        [ MessageFild::Kind(kind), MessageFild::Size(FieldSize(size)), MessageFild::Data(FieldData(data)) ] => {
                            log::debug!("{} | step: {},  kind: {:?},  size: {},  data: {:?}", dbgid, step, kind, size, data);
                            let result = MessageFild::Kind(kind.to_owned());
                            assert!(result == target.0, "step: {} \nresult: {:?}\ntarget: {:?}", step, result, target.0);
                            let result = MessageFild::Size(FieldSize(*size));
                            assert!(result == target.1, "step: {} \nresult: {:?}\ntarget: {:?}", step, result, target.1);
                            let result = MessageFild::Data(FieldData(data.clone()));
                            assert!(result == target.2, "step: {} \nresult: {:?}\ntarget: {:?}", step, result, target.2);
                            result_data = Some(result);
                        }
                        [..] => {
                            panic!("{} | Unknown message kind {:?}", dbgid, parsed);
                        }
                    }
                    Err(err) => {
                        log::debug!("{} | {}",dbgid, err);
                    }
                }
            }
            assert!(result_data == Some(target.2.clone()), "step: {} \nresult: {:?}\ntarget: {:?}", step, result_data, Some(target.2));
        }
        test_duration.exit();
    }
}
