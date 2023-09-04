#![allow(non_snake_case)]

use log::{debug, warn};
use serde::{Serialize, Deserialize};

use crate::{
    api_query_type::{ApiQueryType, ApiQueryTypeName}, 
    api_query_sql::ApiQuerySql, 
    api_query_python::ApiQueryPython, 
    api_query_executable::ApiQueryExecutable, 
    api_query_unknown::ApiQueryUnknown, api_query_error::ApiQueryError,
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
    fn parseJsonString(jsonString: &serde_json::Value, key: &str) -> Result<String, String> {
        if let serde_json::Value::String(value) = &jsonString[key] {
            debug!("[ApiQuery.parseJsonString] key: {} | value: {:?}", &key, &value);
            Result::Ok(
                value.clone(),
            )
        } else {
            let msg = format!("[ApiQuery.parseJsonString] field '{}' of type String not found or invalid content", &key);
            warn!("{}", msg);
            Err(
                msg.into(),
            )
        }
    }
    // ///
    // fn parseJsonObject(jsonString: &serde_json::Value, key: &str) -> Result<serde_json::Map<String, serde_json::Value>, String> {
    //     if let serde_json::Value::Object(value) = &jsonString[key] {
    //         debug!("[ApiQuery.parseJsonObject] key: {} | value: {:?}", &key, &value);
    //         Result::Ok(
    //             value.clone(),
    //         )
    //     } else {
    //         let msg = format!("[ApiQuery.parseJsonObject] key '{}' of type String not found or invalid content", &key);
    //         warn!("{}", msg);
    //         Err(
    //             msg.into(),
    //         )
    //     }
    // }
    // ///
    ///
    fn parseApiQuerySql(json: serde_json::Value, auth_token: String, id: String) -> ApiQuery {
        debug!("[ApiQuery.parseApiQuerySql] detected: {}", ApiQueryTypeName::Sql.value());
        match ApiQuerySql::fromJson(json[ApiQueryTypeName::Sql.value()].clone()) {
            Ok(apiQuerySql) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Sql( apiQuerySql ),
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
                }            
            },
        }
    }
    ///
    fn parseApiQueryPython(json: serde_json::Value, auth_token: String, id: String) -> ApiQuery {
        debug!("[ApiQuery.fromBytes] detected: {}", ApiQueryTypeName::Python.value());
        match ApiQueryPython::fromJson(json[ApiQueryTypeName::Python.value()].clone()) {
            Ok(apiQueryPython) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Python( apiQueryPython ),
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
                }            
            },
        }
    }
    ///
    fn parseApiQueryExecutable(json: serde_json::Value, auth_token: String, id: String) -> ApiQuery {
        debug!("[ApiQuery.fromBytes] detected: {}", ApiQueryTypeName::Executable.value());
        match ApiQueryExecutable::fromJson(json[ApiQueryTypeName::Executable.value()].clone()) {
            Ok(apiQueryExecutable) => {
                ApiQuery {
                    auth_token,
                    id,
                    query: ApiQueryType::Executable( apiQueryExecutable ),
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
                }            
            },
        }
    }
    ///
    pub fn fromBytes(bytes: Vec<u8>) -> Self {
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
                                let mut auth_token = "Unknown".to_string();
                                let mut id = "Unknown".to_string();
                                let key = "auth_token";
                                let keyType = "String";
                                if let serde_json::Value::String(value) = &obj[key] {
                                    auth_token = value.into();
                                } else {
                                    let msg = format!("[ApiQuery.fromBytes] field '{}' of type {} not found or invalid content", &key, &keyType);
                                    errors.push(msg)
                                }
                                let key = "id";
                                if let serde_json::Value::String(value) = &obj[key] {
                                    id = value.into();
                                } else {
                                    let msg = format!("[ApiQuery.fromBytes] field '{}' of type {} not found or invalid content", &key, &keyType);
                                    errors.push(msg)
                                }
                                if errors.is_empty() {
                                    debug!("[ApiQuery.fromBytes] obj: {:?}", obj);
                                    if obj.contains_key(ApiQueryTypeName::Sql.value()) {
                                        Self::parseApiQuerySql(json, auth_token, id)
                                    } else if obj.contains_key(ApiQueryTypeName::Python.value()) {
                                        Self::parseApiQueryPython(json, auth_token, id)
                                    } else if obj.contains_key(ApiQueryTypeName::Executable.value()) {
                                        Self::parseApiQueryExecutable(json, auth_token, id)
                                    } else {
                                        warn!("[ApiQuery.fromBytes] unknown tupe of query: {:?}", obj);
                                        ApiQuery {
                                            auth_token,
                                            id,
                                            query: ApiQueryType::Unknown(ApiQueryUnknown {
                                                query: json,
                                            }),
                                        }                                            
                                    }
                                } else {
                                    ApiQuery {
                                        auth_token: auth_token,
                                        id: id,
                                        query: ApiQueryType::Error(ApiQueryError{
                                            query: json.to_string(),
                                            err: format!("{}", errors.join("\n")),
                                        }),
                                    }
                                }
                                // match ApiQuery::parseJsonString(&json, "auth_token") {
                                //     Ok(auth_token) => {
                                //         match ApiQuery::parseJsonString(&json, "id") {
                                //             Ok(id) => {
                                //                 match json.as_object() {
                                //                     Some(obj) => {
                                //                         debug!("[ApiQuery.fromBytes] obj: {:?}", obj);
                                //                         if obj.contains_key(ApiQueryTypeName::Sql.value()) {
                                //                             Self::parseApiQuerySql(json, auth_token, id)
                                //                         } else if obj.contains_key(ApiQueryTypeName::Python.value()) {
                                //                             Self::parseApiQueryPython(json, auth_token, id)
                                //                         } else if obj.contains_key(ApiQueryTypeName::Executable.value()) {
                                //                             Self::parseApiQueryExecutable(json, auth_token, id)
                                //                         } else {
                                //                             warn!("[ApiQuery.fromBytes] unknown tupe of query: {:?}", obj);
                                //                             ApiQuery {
                                //                                 auth_token,
                                //                                 id,
                                //                                 query: ApiQueryType::Unknown(ApiQueryUnknown {
                                //                                     query: json,
                                //                                 }),
                                //                             }                                            
                                //                         }
                                //                     },
                                //                     None => {
                                //                         let msg = format!("[ApiQuery.fromBytes] unknown tupe of query: {:?}", string).into();
                                //                         warn!("{}", msg);
                                //                         ApiQuery {
                                //                             auth_token,
                                //                             id,
                                //                             query: ApiQueryType::Error(ApiQueryError{
                                //                                 query: json.to_string(),
                                //                                 err: msg,
                                //                             }),
                                //                         }
                                //                     },
                                //                 }                                        
                                //             },
                                //             Err(err) => {
                                //                 ApiQuery {
                                //                     auth_token: "Unknown".into(),
                                //                     id: "Unknown".into(),
                                //                     query: ApiQueryType::Error(ApiQueryError{
                                //                         query: json.to_string(),
                                //                         err
                                //                     }),
                                //                 }                                                
                                //             },
                                //         }
                                //     },
                                //     Err(err) => {
                                //         ApiQuery {
                                //             auth_token: "Unknown".into(),
                                //             id: "Unknown".into(),
                                //             query: ApiQueryType::Error(ApiQueryError{
                                //                 query: json.to_string(),
                                //                 err,
                                //             }),
                                //         }
                                //     },
                                // }                                

                            },
                            None => {
                                let msg = format!("[ApiQuery.fromBytes] json parsing error: type Map not found in json: {:?}", string);
                                warn!("{}", msg);
                                ApiQuery {
                                    auth_token: "Unknown".into(),
                                    id: "Unknown".into(),
                                    query: ApiQueryType::Error(ApiQueryError{
                                        query: string.into(),
                                        err: msg,
                                    }),
                                }        
                            },
                        }
                    },
                    Err(err) => {
                        let msg = format!("[ApiQuery.fromBytes] json parsing error: {:?}, \n\t json: {:?}", err, string);
                        warn!("{}", msg);
                        ApiQuery {
                            auth_token: "Unknown".into(),
                            id: "Unknown".into(),
                            query: ApiQueryType::Error(ApiQueryError{
                                query: string.into(),
                                err: err.to_string(),
                            }),
                        }
                    },
                }
            },
            Err(err) => {
                let msg = format!("[ApiQuery.fromBytes] bytes parsing error: {:?}, \n\t bytes: {:?}", err, refBytes);
                warn!("{}", msg);
                let collected: Vec<String> = refBytes.iter().map(|a| a.to_string()).collect();
                ApiQuery {
                    auth_token: "Unknown".into(),
                    id: "Unknown".into(),
                    query: ApiQueryType::Error(ApiQueryError{
                        query: collected.join(","),
                        err: err.to_string()
                    }),
                }
            },
        }
    }
}