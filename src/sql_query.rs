#![allow(non_snake_case)]

use std::collections::HashMap;
use crate::core_::error::api_error::ApiError;

pub type RowMap = HashMap<String, serde_json::Value>;
// pub type ErrorString = String;
///
pub trait SqlQuery {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError>;
}
