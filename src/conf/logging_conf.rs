use debugging::session::debug_session::LogLevel;
use serde::{Deserialize, Deserializer};

///
/// Configuration for logging
/// - `level` - logging level: info/debug/trace
#[derive(Debug, Clone, Deserialize)]
pub struct LoggingConf {
    #[serde(deserialize_with = "logging_conf")]
    #[serde(default = "logging_default")]
    pub level: LogLevel,
}
///
/// Returns [LogLevel] from string
fn logging_conf<'de, D>(deserializer: D) -> Result<LogLevel, D::Error>
where
    D: Deserializer<'de>,
{
    let s: String = String::deserialize(deserializer)?;
    match s.as_str() {
        "info" => Ok(LogLevel::Info),
        "debug" => Ok(LogLevel::Debug),
        "trace" => Ok(LogLevel::Trace),
        _ => Err(serde::de::Error::custom(format!("Unknown LogLevel variant '{s}'")))
    }
}
fn logging_default() -> LogLevel {
    LogLevel::Info
}
