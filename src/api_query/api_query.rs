#![allow(non_snake_case)]

use log::{debug, warn, trace};
use serde::{Serialize, Deserialize};
use serde_json::json;

use crate::{
    core_::error::api_error::ApiError, 
    api_query::{api_query_type::{ApiQueryType, ApiQueryTypeName}, api_query_error::ApiQueryError}, 
    api_query::api_query_sql::ApiQuerySql, 
    api_query::api_query_python::ApiQueryPython, 
    api_query::api_query_executable::ApiQueryExecutable, 
    api_query::api_query_unknown::ApiQueryUnknown, 
};

///
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ApiQuery {
    pub auth_token: String,
    pub id: String,
    pub query: ApiQueryType,
    pub keepAlive: bool,
    pub debug: bool,
}
impl ApiQuery {
    ///
    /// 
    pub fn new(auth_token: String, id: String, query: ApiQueryType, keepAlive: bool, debug: bool) -> Self {
        Self { 
            auth_token, 
            id, 
            query, 
            keepAlive, 
            debug,
        }
    }
    ///
    fn parseApiQuerySql(json: serde_json::Value, auth_token: String, id: String, keepAlive: bool, debug: bool) -> ApiQuery {
        debug!("[ApiQuery.parseApiQuerySql] detected: {}", ApiQueryTypeName::Sql.value());
        match ApiQuerySql::fromJson(json[ApiQueryTypeName::Sql.value()].clone(), debug) {
            Ok(apiQuerySql) => {
                ApiQuery::new(
                    auth_token,
                    id,
                    ApiQueryType::Sql( apiQuerySql ),
                    keepAlive,
                    debug,
                )
            },
            Err(err) => {
                ApiQuery::new(
                    auth_token,
                    id,
                    ApiQueryType::Error( ApiQueryError::new(json, err) ),
                    keepAlive,
                    debug,
                )
            },
        }
    }
    ///
    fn parseApiQueryPython(json: serde_json::Value, auth_token: String, id: String, keepAlive: bool, debug: bool) -> ApiQuery {
        debug!("ApiQuery.fromBytes | detected: {}", ApiQueryTypeName::Python.value());
        match ApiQueryPython::fromJson(json[ApiQueryTypeName::Python.value()].clone(), debug) {
            Ok(apiQueryPython) => {
                ApiQuery::new(
                    auth_token,
                    id,
                     ApiQueryType::Python( apiQueryPython ),
                    keepAlive,
                    debug,
                )
            },
            Err(err) => {
                ApiQuery::new(
                    auth_token,
                    id,
                    ApiQueryType::Error( ApiQueryError::new(json, err) ),
                    keepAlive,
                    debug,
                )
            },
        }
    }
    ///
    fn parseApiQueryExecutable(json: serde_json::Value, auth_token: String, id: String, keepAlive: bool, debug: bool) -> ApiQuery {
        debug!("ApiQuery.fromBytes | detected: {}", ApiQueryTypeName::Executable.value());
        match ApiQueryExecutable::fromJson(json[ApiQueryTypeName::Executable.value()].clone(), debug) {
            Ok(apiQueryExecutable) => {
                ApiQuery::new(
                    auth_token,
                    id,
                    ApiQueryType::Executable( apiQueryExecutable ),
                    keepAlive,
                    debug,
                )
            },
            Err(err) => {
                ApiQuery::new(
                    auth_token,
                    id,
                    ApiQueryType::Error( ApiQueryError::new(json, err) ),
                    keepAlive,
                    debug,
                )
            },
        }
    }
    ///
    /// builds ApiQuery from bytes
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
        let mut auth_token = "Unknown".to_string();
        let mut id = "Unknown".to_string();
        let mut keepAlive = false;
        let mut debug = false;
        let refBytes = &bytes;
        match String::from_utf8(refBytes.to_owned()) {
            Ok(queryString) => {
                let queryString = queryString.trim_matches(char::from(0));
                trace!("ApiQuery.fromBytes | queryString: {:?}", queryString);
                match serde_json::from_str::<serde_json::Value>(queryString) {
                    Ok(json) => {
                        match &json.as_object() {
                            Some(obj) => {
                                let mut errors = vec![];
                                match obj.getValue("auth_token") {
                                    Ok(value) => auth_token = value,
                                    Err(err) => errors.push(err),
                                };
                                match obj.getValue("id") {
                                    Ok(value) => id = value,
                                    Err(err) => errors.push(err),
                                };
                                match obj.getValue("keep-alive") {
                                    Ok(value) => {
                                        debug!("ApiQuery.fromBytes | keep-alive detected");
                                        keepAlive = value;
                                    },
                                    Err(_) => {},
                                };
                                match obj.getValue("debug") {
                                    Ok(value) => {
                                        debug!("ApiQuery.fromBytes | debug detected");
                                        debug = value;
                                    },
                                    Err(_) => {},
                                };
                                match errors.get(0) {
                                    Some(details) => {
                                        ApiQuery {
                                            auth_token,
                                            id,
                                            query: ApiQueryType::Error( ApiQueryError::new(
                                                json.clone(),
                                                ApiError::new(
                                                    format!("API Service - invalid query: {:?}", json), 
                                                    format!("ApiQuery.fromBytes | errors: {:?}", details), 
                                                ),
                                            )),
                                            keepAlive,
                                            debug,
                                        }
                                    },
                                    None => {
                                        debug!("ApiQuery.fromBytes | obj: {:?}", obj);
                                        if obj.contains_key(ApiQueryTypeName::Sql.value()) {
                                            Self::parseApiQuerySql(json, auth_token, id, keepAlive, debug)
                                        } else if obj.contains_key(ApiQueryTypeName::Python.value()) {
                                            Self::parseApiQueryPython(json, auth_token, id, keepAlive, debug)
                                        } else if obj.contains_key(ApiQueryTypeName::Executable.value()) {
                                            Self::parseApiQueryExecutable(json, auth_token, id, keepAlive, debug)
                                        } else {
                                            warn!("ApiQuery.fromBytes | unknown tupe of query: {:?}", obj);
                                            ApiQuery {
                                                auth_token,
                                                id,
                                                query: ApiQueryType::Unknown(ApiQueryUnknown {
                                                    query: json,
                                                }),
                                                keepAlive,
                                                debug,
                                            }
                                        }    
                                    },
                                }
                            },
                            None => {
                                let details = format!("ApiQuery.fromBytes | json parsing error: type Map not found in json: {:?}", queryString);
                                warn!("{}", details);
                                ApiQuery {
                                    auth_token,
                                    id,
                                    query: ApiQueryType::Error( ApiQueryError::new(
                                        json.clone(), 
                                        ApiError::new(
                                            format!("API Service - invalid query: {:?}", json), 
                                            details,
                                        ),
                                    )),
                                    keepAlive,
                                    debug,
                                }
                            },
                        }
                    },
                    Err(err) => {
                        let details = format!("ApiQuery.fromBytes | json parsing error: {:?}", err);
                        warn!("{} \n\tin query: {}", details, queryString);
                        ApiQuery {
                            auth_token,
                            id,
                            query: ApiQueryType::Error( ApiQueryError::new(
                                json!(queryString), 
                                ApiError::new(
                                    format!("API Service - invalid query: {:?}", queryString), 
                                    details,
                                )
                            )),
                            keepAlive,
                            debug,
                        }
                    },
                }
            },
            Err(err) => {
                let details = format!("ApiQuery.fromBytes | bytes parsing error: {:?}", err);
                warn!("{} \n\tin query: {:?}", details, refBytes);
                let collected: Vec<String> = refBytes.iter().map(|a| a.to_string()).collect();
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Error( ApiQueryError::new(
                        json!(collected), 
                        ApiError::new(
                            format!("API Service - invalid query: {:?}", refBytes), 
                            details,
                        )
                    )),
                    keepAlive,
                    debug,
                }
            },
        }
    }
}


trait GetJsonObjValue<T> {
    fn getValue(&self, key: &str) -> Result<T, String>;
}

impl GetJsonObjValue<String> for serde_json::map::Map<String, serde_json::Value> {
    fn getValue(&self, key: &str) -> Result<String, String> {
        let msg = format!("ApiQuery.fromBytes | field '{}' of type {:?} not found or invalid content", &key, "String");
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
    fn getValue(&self, key: &str) -> Result<bool, String> {
        let msg = format!("ApiQuery.fromBytes | field '{}' of type {:?} not found or invalid content", &key, "String");
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

