#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::{api_query_type::ApiQueryType, api_query_sql::ApiQuerySql};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuery {
    pub auth_token: String,
    pub id: String,
    pub query: ApiQueryType,

}
impl ApiQuery {
    ///
    pub fn sql(jsonMap: &serde_json::Map<String, serde_json::Value>) -> Self {
        ApiQuery {
            auth_token: jsonMap["auth_token"].to_string(),
            id: jsonMap["id"].to_string(),
            query: ApiQueryType::Sql(ApiQuerySql {
                database: jsonMap["sql"]["database"].to_string(),
                sql: jsonMap["sql"]["sql"].to_string(),
            }),
        }
    }
    ///
    pub fn fromJson(jsonString: String) -> Self {
        let raw: ApiQuery = serde_json::from_str(&jsonString).unwrap();
        println!("raw: {:?}", raw);
        raw
    }
    ///
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let string = String::from_utf8(bytes).unwrap();
        let string = string.trim_matches(char::from(0));
        debug!("[SqlQuery.fromBytes] string: {:?}", string);
        let mut json: serde_json::Value = serde_json::from_str(string).unwrap();
        let obj = json.as_object().expect(format!("[SqlQuery.fromBytes] error parsing json: {:?}", string).as_str());
        debug!("[SqlQuery.fromBytes] obj: {:?}", obj);
        if obj.contains_key("sql") {
            ApiQuery::sql(obj)
        } else {
            warn!("[SqlQuery.fromBytes] json conversion error in: {:?}", obj);
            ApiQuery {
                auth_token: String::from("none"),
                id: String::from("0"),
                query: ApiQueryType::Error,
            }
        }
        // let query: ApiQuery = match serde_json::from_str(&string) {
        //     Ok(value) => {value},
        //     Err(err) => {
        //         warn!("[SqlQuery.fromBytes] json conversion error: {:?}", err);
        //         ApiQuery {
        //             auth_token: String::from("none"),
        //             id: String::from("0"),
        //             query: ApiQueryType::Error,
        //         }
        //     },
        // };
        // debug!("[DsPoint] point: {:#?}", point);
        // query
    }

}