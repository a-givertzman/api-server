#![allow(non_snake_case)]

// use log::debug;
use serde::{
    Serialize, 
    Deserialize, 
};

use crate::{
    api_query_sql::ApiQuerySql, 
    api_query_python::ApiQueryPython, 
    api_query_executable::ApiQueryExecutable, 
    api_query_unknown::ApiQueryUnknown, 
    api_query_error::ApiQueryError,
};


#[derive(Debug, Clone, Serialize, Deserialize)]
// #[serde(rename_all = "lowercase")]
pub enum ApiQueryType {
    Error(ApiQueryError),
    Sql(ApiQuerySql),
    Python(ApiQueryPython),
    Executable(ApiQueryExecutable),
    Unknown(ApiQueryUnknown),
}



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
