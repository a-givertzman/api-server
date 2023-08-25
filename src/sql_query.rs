#![allow(non_snake_case)]

use std::collections::HashMap;
pub type RowMap = HashMap<String, serde_json::Value>;
pub type ErrorString = String;
///
pub trait SqlQuery {
    fn execute(&self) -> Result<Vec<RowMap>, ErrorString>;
}
