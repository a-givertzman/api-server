#![allow(non_snake_case)]

// use log::debug;
use serde::{
    Serialize, 
    Deserialize, 
};

use crate::{
    api_query::api_query_sql::ApiQuerySql,
    api_query::api_query_python::ApiQueryPython, 
    api_query::api_query_executable::ApiQueryExecutable, 
    // api_query::api_query_unknown::ApiQueryUnknown, 
    api_query::api_query_error::ApiQueryError, 
};


#[derive(Debug, Clone, Serialize, Deserialize)]
// #[serde(rename_all = "lowercase")]
pub enum ApiQueryType {
    Sql(ApiQuerySql),
    Python(ApiQueryPython),
    Executable(ApiQueryExecutable),
    Unknown,                            // Unknown(ApiQueryUnknown),
    Error(ApiQueryError),
}
// impl ApiQueryType {
//     pub fn srcQuery(&self, debug: bool) -> serde_json::Value {
//         if debug {
//             match self {
//                 ApiQueryType::Error(apiError) => apiError.to_owned().srcQuery(),
//                 ApiQueryType::Sql(apiQuerySql) => apiQuerySql.to_owned().srcQuery(),
//                 ApiQueryType::Python(apiQueryPython) => apiQueryPython.to_owned().srcQuery(),
//                 ApiQueryType::Executable(apiQueryExecutable) => apiQueryExecutable.to_owned().srcQuery(),
//                 ApiQueryType::Unknown(apiQueryUnknown) => apiQueryUnknown.to_owned().srcQuery(),
//             }
//         } else {
//             serde_json::Value::Null
//         }
//     }
// }



pub enum ApiQueryTypeName {
    Sql,
    Python,
    Executable,
}
impl ApiQueryTypeName {
    pub fn value(&self) -> &str {
        match *self {
            ApiQueryTypeName::Sql => "sql",
            ApiQueryTypeName::Python => "python",
            ApiQueryTypeName::Executable => "executable",
        }
    }
}
