#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::{api_query_type::ApiQueryType, api_query_sql::ApiQuerySql, python_query::PythonQuery, api_query_python::ApiQueryPython};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuery {
    pub auth_token: String,
    pub id: String,
    pub query: ApiQueryType,

}
impl ApiQuery {
    fn parseJsonString(value: &serde_json::Value, name: &str) -> String {
        if let serde_json::Value::String(sql) = &value[name] {
            sql.clone()
        } else {
            String::new()
        }
    }
    ///
    pub fn python(jsonMap: &serde_json::Value) -> Self {
        let sql = &jsonMap["python"];
        ApiQuery {
            auth_token: ApiQuery::parseJsonString(&jsonMap, "auth_token"),
            id: ApiQuery::parseJsonString(&jsonMap, "id"),
            query: ApiQueryType::Python(ApiQueryPython {
                script: ApiQuery::parseJsonString(&sql, "script"),
                params: ApiQuery::parseJsonString(&sql, "params"),
            }),
        }
    }
    ///
    pub fn sql(jsonMap: &serde_json::Value) -> Self {
        let sql = &jsonMap["sql"];
        ApiQuery {
            auth_token: ApiQuery::parseJsonString(&jsonMap, "auth_token"),
            id: ApiQuery::parseJsonString(&jsonMap, "id"),
            query: ApiQueryType::Sql(ApiQuerySql {
                database: ApiQuery::parseJsonString(&sql, "database"),
                sql: ApiQuery::parseJsonString(&sql, "sql"),
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
        let json: serde_json::Value = serde_json::from_str(string).unwrap();
        let obj = json.as_object().expect(format!("[SqlQuery.fromBytes] error parsing json: {:?}", string).as_str());
        debug!("[SqlQuery.fromBytes] obj: {:?}", obj);
        if obj.contains_key("sql") {
            ApiQuery::sql(&json)
        } else if obj.contains_key("python") {
            ApiQuery::python(&json)
        } else {
            warn!("[SqlQuery.fromBytes] json conversion error in: {:?}", obj);
            ApiQuery {
                auth_token: String::from("none"),
                id: String::from("0"),
                query: ApiQueryType::Error,
            }
        }
    }

}