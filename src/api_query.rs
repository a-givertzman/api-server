#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::{
    api_query_type::{ApiQueryType, ApiQueryTypeName}, 
    api_query_sql::ApiQuerySql, 
    api_query_python::ApiQueryPython, 
    api_query_executable::ApiQueryExecutable, 
    api_query_unknown::ApiQueryUnknown, api_query_error::ApiQueryError, api_query_keepalive::ApiQueryKeepAlive, sql_query::ErrorString,
};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuery {
    pub auth_token: String,
    pub id: String,
    pub query: ApiQueryType,
    pub keepAlive: bool,
}
impl ApiQuery {
    fn parseApiQuerySql(json: serde_json::Value, auth_token: String, id: String, keepAlive: bool) -> ApiQuery {
        debug!("[ApiQuery.parseApiQuerySql] detected: {}", ApiQueryTypeName::Sql.value());
        match ApiQuerySql::fromJson(json[ApiQueryTypeName::Sql.value()].clone()) {
            Ok(apiQuerySql) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Sql( apiQuerySql ),
                    keepAlive: keepAlive,
                }
            },
            Err(err) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Error(ApiQueryError{
                        query: json.to_string(),
                        err: err,
                    }),
                    keepAlive: keepAlive,
                }
            },
        }
    }
    ///
    fn parseApiQueryPython(json: serde_json::Value, auth_token: String, id: String, keepAlive: bool) -> ApiQuery {
        debug!("[ApiQuery.fromBytes] detected: {}", ApiQueryTypeName::Python.value());
        match ApiQueryPython::fromJson(json[ApiQueryTypeName::Python.value()].clone()) {
            Ok(apiQueryPython) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Python( apiQueryPython ),
                    keepAlive: keepAlive,
                }
            },
            Err(err) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Error(ApiQueryError{
                        query: json.to_string(),
                        err: err,
                    }),
                    keepAlive: keepAlive,
                }
            },
        }
    }
    ///
    fn parseApiQueryExecutable(json: serde_json::Value, auth_token: String, id: String, keepAlive: bool) -> ApiQuery {
        debug!("[ApiQuery.fromBytes] detected: {}", ApiQueryTypeName::Executable.value());
        match ApiQueryExecutable::fromJson(json[ApiQueryTypeName::Executable.value()].clone()) {
            Ok(apiQueryExecutable) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Executable( apiQueryExecutable ),
                    keepAlive: keepAlive,
                }
            },
            Err(err) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Error(ApiQueryError{
                        query: json.to_string(),
                        err: err,
                    }),
                    keepAlive: keepAlive,
                }
            },
        }
    }
    ///
    /// builds ApiQuery from bytes
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let mut auth_token = "Unknown".to_string();
        let mut id = "Unknown".to_string();
        let mut keepAlive = false;
        let refBytes = &bytes;
        match String::from_utf8(refBytes.to_owned()) {
            Ok(string) => {
                let string = string.trim_matches(char::from(0));
                debug!("[ApiQuery.fromBytes] string: {:?}", string);
                match serde_json::from_str::<serde_json::Value>(string) {
                    Ok(json) => {
                        match json.as_object() {
                            Some(obj) => {
                                let mut errors = vec![];
                                match obj.getValue("auth_token") {
                                    Ok(value) => auth_token = value,
                                    Err(err) => errors.push(err.to_string()),
                                };
                                match obj.getValue("id") {
                                    Ok(value) => id = value,
                                    Err(err) => errors.push(err.to_string()),
                                };
                                match obj.getValue("keep-alive") {
                                    Ok(value) => keepAlive = value,
                                    Err(err) => errors.push(err.to_string()),
                                };
                                if errors.is_empty() {
                                    debug!("[ApiQuery.fromBytes] obj: {:?}", obj);
                                    if obj.contains_key(ApiQueryTypeName::Sql.value()) {
                                        Self::parseApiQuerySql(json, auth_token, id, keepAlive)
                                    } else if obj.contains_key(ApiQueryTypeName::Python.value()) {
                                        Self::parseApiQueryPython(json, auth_token, id, keepAlive)
                                    } else if obj.contains_key(ApiQueryTypeName::Executable.value()) {
                                        Self::parseApiQueryExecutable(json, auth_token, id, keepAlive)
                                    } else {
                                        warn!("[ApiQuery.fromBytes] unknown tupe of query: {:?}", obj);
                                        ApiQuery {
                                            auth_token,
                                            id,
                                            query: ApiQueryType::Unknown(ApiQueryUnknown {
                                                query: json,
                                            }),
                                            keepAlive,
                                        }
                                    }
                                } else {
                                    ApiQuery {
                                        auth_token,
                                        id,
                                        query: ApiQueryType::Error(ApiQueryError{
                                            query: json.to_string(),
                                            err: format!("{}", errors.join("\n")),
                                        }),
                                        keepAlive,
                                    }
                                }
                            },
                            None => {
                                let msg = format!("[ApiQuery.fromBytes] json parsing error: type Map not found in json: {:?}", string);
                                warn!("{}", msg);
                                ApiQuery {
                                    auth_token,
                                    id,
                                    query: ApiQueryType::Error(ApiQueryError{
                                        query: string.into(),
                                        err: msg,
                                    }),
                                    keepAlive,
                                }
                            },
                        }
                    },
                    Err(err) => {
                        let msg = format!("[ApiQuery.fromBytes] json parsing error: {:?}, \n\t json: {:?}", err, string);
                        warn!("{}", msg);
                        ApiQuery {
                            auth_token,
                            id,
                            query: ApiQueryType::Error(ApiQueryError{
                                query: string.into(),
                                err: err.to_string(),
                            }),
                            keepAlive,
                        }
                    },
                }
            },
            Err(err) => {
                let msg = format!("[ApiQuery.fromBytes] bytes parsing error: {:?}", err);
                // let msg = format!("[ApiQuery.fromBytes] bytes parsing error: {:?}, \n\t bytes: {:?}", err, refBytes);
                warn!("{}", msg);
                let collected: Vec<String> = refBytes.iter().map(|a| a.to_string()).collect();
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Error(ApiQueryError{
                        query: collected.join(","),
                        err: err.to_string()
                    }),
                    keepAlive,
                }
            },
        }
    }
}


trait GetJsonObjValue<T> {
    fn getValue(&self, key: &str) -> Result<T, ErrorString>;
}

impl GetJsonObjValue<String> for serde_json::map::Map<String, serde_json::Value> {
    fn getValue(&self, key: &str) -> Result<String, ErrorString> {
        let msg = format!("[ApiQuery.fromBytes] field '{}' of type {:?} not found or invalid content", &key, "String");
        match self.get(key) {
            Some(jsonValue) => {
                if let serde_json::Value::String(value) = jsonValue {
                    Ok(value.to_string())
                } else {
                    Err(msg)
                }
            },
            None => {
                Err(msg)
            },
        }
    }
}

impl GetJsonObjValue<bool> for serde_json::map::Map<String, serde_json::Value> {
    fn getValue(&self, key: &str) -> Result<bool, ErrorString> {
        let msg = format!("[ApiQuery.fromBytes] field '{}' of type {:?} not found or invalid content", &key, "String");
        match self.get(key) {
            Some(jsonValue) => {
                if let serde_json::Value::Bool(value) = jsonValue {
                    Ok(*value)
                } else {
                    Err(msg)
                }
            },
            None => {
                Err(msg)
            },
        }
    }
}

