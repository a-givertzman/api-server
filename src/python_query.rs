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
    params: String,
}

impl PythonQuery {
    ///
    pub fn new(path: &str, sql: String) -> PythonQuery {
        Self {
            path: path.into(),
            params: sql.to_string(),
        }
    }
    ///
    pub fn execute(&self) -> Result<Vec<RowMap>, String> {
        let path = self.path.clone();
        debug!("PythonQuery.execute | script: {:?}\n\twith params: {:?}", self.path, self.params);
        let program = "python3";
        debug!("PythonQuery.execute | executing command: {:?}", program);

        match Command::new(program)
            .arg(path)
            .stdin(Stdio::piped())
            .stderr(Stdio::piped())
            .stdout(Stdio::piped())
            .spawn() {
            Ok(mut child) => {
                debug!("PythonQuery.execute | command child: {:?}", &child);
                debug!("PythonQuery.execute | sending stdin data...");
                child.stdin
                    .as_mut()
                    .ok_or("Child process stdin has not been captured!").unwrap()
                    .write_all(self.params.as_bytes()).unwrap();
                let output = child.wait_with_output().unwrap();
                debug!("PythonQuery.execute | command output: {:?}", output);
                if output.status.success() {
                    let mut result: Vec<RowMap> = vec![];
                    let row: RowMap = HashMap::new();
                    let rawOutput = String::from_utf8(output.stdout).unwrap();
                    debug!("PythonQuery.execute | rawOutput: {:?}", rawOutput);
                    match serde_json::from_str(rawOutput.as_str()) {
                        Ok(row) => {
                            result.push(row);
                            Ok(result)        
                        },
                        Err(err) => {
                            warn!("PythonQuery.execute | python script result json parsing error: {:?}", err);
                            Err(err.to_string())        
                        },
                    }
                } else {
                    let err = String::from_utf8(output.stderr).unwrap();
                    warn!("PythonQuery.execute | python script error: {:?}", err);
                    Err(err)
                }
            },
            Err(err) => {
                warn!("PythonQuery.execute | python script error: {:?}", err);
                Err(err.to_string())
            },
        }
    }    
}