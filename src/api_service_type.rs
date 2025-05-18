use serde::{
    Serialize, 
    Deserialize, 
};
///
/// The kind of Api Service
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "lowercase")]
// #[serde(tag = "type", content = "value")]
// #[serde(tag = "type")]
pub enum ApiServiceType {
    // #[serde(rename = "sqlite")]
    Sqlite,
    // #[serde(rename = "mysql")]
    MySql,
    #[serde(rename = "postgres")]
    PostgreSql,
    // #[serde(rename = "python")]
    Python,
    // #[serde(rename = "bin")]
    Bin,
}
