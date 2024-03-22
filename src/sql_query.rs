#![allow(non_snake_case)]

use api_tools::{error::api_error::ApiError, server::api_query::row_map::RowMap};

// pub type ErrorString = String;
///
pub trait SqlQuery {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError>;
}
