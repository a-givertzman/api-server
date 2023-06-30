#![allow(non_snake_case)]

use log::debug;
use serde::{Serialize, Deserialize, Serializer, ser::SerializeStruct};

use crate::api_query_sql::ApiQuerySql;


#[derive(Debug, Clone, Serialize, Deserialize)]
pub enum ApiQueryType {
    Error,
    Sql(ApiQuerySql),
    Py(ApiQueryPy)
}

// impl Serialize for ApiQueryType {
//     fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
//     where
//         S: Serializer, {
//         // serializer.is_human_readable()
//         // 3 is the number of fields in the struct.
//         // debug!("ApiQueryType.serialize | state: {:?}", serializer);
//         let mut state = serializer.serialize_struct("ApiQuerySql", 2)?;
//         state.serialize_field("database", &self.database)?;
//         // state.serialize_field("g", &self.g)?;
//         // state.serialize_field("b", &self.b)?;
//         state.end()
//     }    
// }