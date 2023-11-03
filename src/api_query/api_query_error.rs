#![allow(non_snake_case)]

// use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::core_::error::api_error::ApiError;

///
/// 
#[derive(Debug, Clone, Serialize, Deserialize, PartialEq)]
pub struct ApiQueryError {
    // query: serde_json::Value,
    error: ApiError,
}
///
/// 
impl ApiQueryError {
    ///
    ///
    pub fn new(error: ApiError) -> Self {
        Self {
            // query,
            error,
        }
    }
    ///
    /// 
    pub fn err(self) -> ApiError {
        self.error
    }
    // ///
    // /// 
    // pub fn srcQuery(self) -> serde_json::Value {
    //     self.query
    // }
}
