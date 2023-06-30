#![allow(non_snake_case)]

use std::{collections::{HashMap, HashSet}};
use std::io::Write;
use std::process::{Command, Stdio};

use log::{debug, warn};
use rusqlite::{
    // Connection, Statement, 
    Error
};

type RowMap = HashMap<String, serde_json::Value>;
///
/// 
pub struct PythonQuery {
    path: String,
    sql: String,
}

impl PythonQuery {
    ///
    pub fn new(path: &str, sql: String) -> PythonQuery {
        Self {
            path: path.into(),
            sql: sql.to_string(),
        }
    }
    ///
    pub fn execute(&self) -> Result<Vec<RowMap>, String> {
        let path = self.path.clone();
        debug!("PythonQuery.execute | preparing calling script: {:?}\n\twith params: {:?}", self.path, self.sql);

        let mut child = Command::new(path).stdin(Stdio::piped())
            .stderr(Stdio::piped())
            .stdout(Stdio::piped())
            .spawn().unwrap();

        child.stdin
            .as_mut()
            .ok_or("Child process stdin has not been captured!").unwrap()
            .write_all(b"import this; copyright(); credits(); exit()").unwrap();

        let output = child.wait_with_output().unwrap();
        
        let result = if output.status.success() {
            let mut result: Vec<RowMap> = vec![];
            let raw_output = String::from_utf8(output.stdout).unwrap();
            let words = raw_output.split_whitespace()
                .map(|s| s.to_lowercase())
                .collect::<HashSet<_>>();
            debug!("PythonQuery.execute | Found {} unique words:", words.len());
            debug!("PythonQuery.execute | {:?}", words);
            Ok(result)
        } else {
            let err = String::from_utf8(output.stderr).unwrap();
            warn!("PythonQuery.execute | python script error: {:?}", err);
            Err(err)
            // error_chain::bail!("External command failed:\n {}", err);
        };

        // let result = match connection.prepare(self.sql.as_str()) {
        //     Ok(stmt) => {
        //         let mut cNames = vec![];
        //         for item in stmt.column_names() {
        //             cNames.push(item.to_string());
        //         }
        //         let mut stmt = PythonQuery::fakeStmtClone(stmt);
        //         let sqlRows = stmt.query([]);
        //         let mut result = vec![];
        //         match sqlRows {
        //             Ok(mut rows) => {
        //                 while let Some(row) = rows.next().unwrap() {
        //                     // ...
        //                     debug!("row: {:?}", row);
        //                     let mut rowMap = HashMap::new();
        //                     for cName in cNames.iter() {
        //                         let value: rusqlite::types::Value = row.get(cName.as_str()).expect(&format!("Error getting value from \"{}\" field", cName));
        //                         let value: serde_json::Value = match value {
        //                             rusqlite::types::Value::Null => serde_json::Value::Null,
        //                             rusqlite::types::Value::Integer(v) => serde_json::Value::Number(serde_json::Number::from(v)),
        //                             rusqlite::types::Value::Real(v) => serde_json::Value::Number(serde_json::Number::from_f64(v).unwrap()),
        //                             rusqlite::types::Value::Text(v) => serde_json::Value::String(v),
        //                             rusqlite::types::Value::Blob(v) => {
        //                                 let mut arr = vec![];
        //                                 for i in v {
        //                                     arr.push(
        //                                         serde_json::Value::Number(
        //                                             serde_json::Number::from(i)
        //                                         )
        //                                     )
        //                                 }
        //                                 serde_json::Value::Array(arr)
        //                             }
        //                         };
        //                         rowMap.insert(String::from(cName), value);
        //                     }
        //                     result.push(rowMap);
        //                 }
        //             },
        //             Err(err) => {
        //                 warn!("getting rows error: {:?}", err);
        //             },
        //         };
        //         Ok(result)
        //     },
        //     Err(err) => {
        //         warn!(".execute | preparing sql error: {:?}", err);
        //         Err(err)
        //     },
        // };
        result
    }    
}