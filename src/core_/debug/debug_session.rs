use std::{env, sync::Once};

static INIT: Once = Once::new();

///
/// 
pub enum LogLevel {
    Off,
    Error,
    Warn,
    Info,
    Debug,
    Trace,
}
///
/// 
pub enum Backtrace {
    Full,
    Short,
}

///
/// Call DebugSession::init() to initialize logging
pub struct DebugSession {}

impl DebugSession {
    pub fn init(log_level: LogLevel, backtrace: Backtrace) {
        INIT.call_once(|| {
            let log_level = match log_level {
                LogLevel::Off => "off",
                LogLevel::Error => "error",
                LogLevel::Warn => "warn",
                LogLevel::Info => "info",
                LogLevel::Debug => "debug",
                LogLevel::Trace => "trace",
                // _ => "debug",
            };
            let backtrace = match backtrace {
                Backtrace::Full => "full",
                Backtrace::Short => "short",
            };
            env::set_var("RUST_LOG", log_level);  // off / error / warn / info / debug / trace
            // env::set_var("RUST_BACKTRACE", "1");
            env::set_var("RUST_BACKTRACE", backtrace);
            match env_logger::builder().is_test(true).try_init() {
                Ok(_) => {
                    println!("DebugSession.init | Ok\n")
                },
                Err(err) => {
                    println!("DebugSession.init | error: {:?}", err)
                },
            };
        })
    }
}
