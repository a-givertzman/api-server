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
};


#[derive(Debug, Clone, Serialize, Deserialize)]
pub enum ApiQueryType {
    Error,
    Sql(ApiQuerySql),
    Python(ApiQueryPython),
    Executable(ApiQueryExecutable)
}
