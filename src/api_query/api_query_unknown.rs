#![allow(non_snake_case)]

// use log::{debug, warn};
use serde::{Serialize, Deserialize};

///
/// 
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQueryUnknown {
    pub query: serde_json::Value,
}
///
/// 
impl ApiQueryUnknown {
    ///
    /// 
    pub fn srcQuery(self) -> serde_json::Value {
        self.query
    }
}
