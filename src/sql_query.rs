#![allow(non_snake_case)]

use crate::{core_::error::api_error::ApiError, api_query::row_map::RowMap};

// pub type ErrorString = String;
///
pub trait SqlQuery {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError>;
}
