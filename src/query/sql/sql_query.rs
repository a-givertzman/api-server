use api_tools::{error::api_error::ApiError, server::api_query::row_map::RowMap};
///
/// API Query interface
pub trait SqlQuery {
    fn execute(&mut self) -> Result<Vec<RowMap>, ApiError>;
}
