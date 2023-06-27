#![allow(non_snake_case)]

use serde::{Serialize, Deserialize};

use crate::api_query_sql::ApiQuerySql;


#[derive(Debug, Clone, Serialize, Deserialize)]
pub enum ApiQueryType {
    Error,
    Sql(ApiQuerySql),
}
