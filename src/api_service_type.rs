#![allow(non_snake_case)]

// use log::debug;
use serde::{
    Serialize, 
    Deserialize, 
};


#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "lowercase")]
// #[serde(tag = "type", content = "value")]
// #[serde(tag = "type")]
pub enum ApiServiceType {
    // #[serde(rename = "sqlite")]
    Sqlite,
    // #[serde(rename = "mysql")]
    MySql,
    // #[serde(rename = "postgresql")]
    PostgreSql,
    // #[serde(rename = "python")]
    Python,
    // #[serde(rename = "bin")]
    Bin,
}
// impl ApiQueryType {
//     pub fn toString(&self) -> String {
//         match self {
//             ApiQueryType::Error(apiQueryError) => apiQueryError.to_owned().toString(),
//             ApiQueryType::Sql(apiQuerySql) => apiQuerySql.to_owned().toString(),
//             ApiQueryType::Python(apiQueryPython) => apiQueryPython.to_owned().toString(),
//             ApiQueryType::Executable(apiQueryExecutable) => apiQueryExecutable.to_owned().toString(),
//             ApiQueryType::Unknown(apiQueryUnknown) => apiQueryUnknown.to_owned().toString(),
//         }
//     }
// }



// pub enum ApiQueryTypeName {
//     Sql,
//     Python,
//     Executable,
// }
// impl ApiQueryTypeName {
//     pub fn value(&self) -> &str {
//         match *self {
//             ApiQueryTypeName::Sql => "sql",
//             ApiQueryTypeName::Python => "python",
//             ApiQueryTypeName::Executable => "executable",
//         }
//     }
// }
