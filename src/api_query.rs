#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::{
    api_query_type::ApiQueryType, 
    api_query_sql::ApiQuerySql, 
    api_query_python::ApiQueryPython, 
    api_query_executable::ApiQueryExecutable
};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuery {
    pub auth_token: String,
    pub id: String,
    pub query: ApiQueryType,

}
impl ApiQuery {
    ///
    fn parseJsonString(jsonString: &serde_json::Value, key: &str) -> String {
        if let serde_json::Value::String(value) = &jsonString[key] {
            debug!("[ApiQuery.parseJsonString] key: {} | value: {:?}", &key, &value);
            value.clone()
        } else {
            warn!("[ApiQuery.parseJsonString] key not found: \"{}\"", &key);
            String::new()
        }
    }
    ///
    fn parseJsonObject(jsonString: &serde_json::Value, key: &str) -> serde_json::Map<String, serde_json::Value> {
        if let serde_json::Value::Object(value) = &jsonString[key] {
            debug!("[ApiQuery.parseJsonObject] key: {} | value: {:?}", &key, &value);
            value.clone()
        } else {
            warn!("[ApiQuery.parseJsonObject] key not found: \"{}\"", &key);
            serde_json::Map::new()
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
    pub fn python(jsonMap: &serde_json::Value) -> Self {
        let py = &jsonMap["python"];
        ApiQuery {
            auth_token: ApiQuery::parseJsonString(&jsonMap, "auth_token"),
            id: ApiQuery::parseJsonString(&jsonMap, "id"),
            query: ApiQueryType::Python(ApiQueryPython {
                script: ApiQuery::parseJsonString(&py, "script"),
                params: ApiQuery::parseJsonObject(&py, "params"),
            }),
        }
    }
    ///
    pub fn executable(jsonMap: &serde_json::Value) -> Self {
        debug!("[ApiQuery.executable] jsonMap: {:?}", &jsonMap);
        let ex = &jsonMap["executable"];
        debug!("[ApiQuery.executable] ex: {:?}", &ex);
        ApiQuery {
            auth_token: ApiQuery::parseJsonString(&jsonMap, "auth_token"),
            id: ApiQuery::parseJsonString(&jsonMap, "id"),
            query: ApiQueryType::Executable(ApiQueryExecutable {
                name: ApiQuery::parseJsonString(&ex, "name"),
                params: ApiQuery::parseJsonObject(&ex, "params"),
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
    pub fn fromBytes(bytes: Vec<u8>) -> Result<Self, Box<dyn std::error::Error>> {
        match String::from_utf8(bytes) {
            Ok(string) => {
                let string = string.trim_matches(char::from(0));
                debug!("[ApiQuery.fromBytes] string: {:?}", string);
                match serde_json::from_str::<serde_json::Value>(string) {
                    Ok(json) => {
                        match json.as_object() {
                            Some(obj) => {
                                debug!("[ApiQuery.fromBytes] obj: {:?}", obj);
                                Ok(                                    
                                    if obj.contains_key("sql") {
                                        ApiQuery::sql(&json)
                                    } else if obj.contains_key("python") {
                                        ApiQuery::python(&json)
                                    } else if obj.contains_key("executable") {
                                        ApiQuery::executable(&json)
                                    } else {
                                        warn!("[ApiQuery.fromBytes] json conversion error in: {:?}", obj);
                                        ApiQuery {
                                            auth_token: String::from("none"),
                                            id: String::from("0"),
                                            query: ApiQueryType::Error,
                                        }
                                    }
                                )
                            },
                            None => {
                                Err(format!("[ApiQuery.fromBytes] error parsing json: {:?}", string).into())
                            },
                        }
                    },
                    Err(err) => {
                        Err(Box::new(err))
                    },
                }
            },
            Err(err) => {
                Err(Box::new(err))
            },
        }
    }
}