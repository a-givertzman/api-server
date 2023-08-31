#![allow(non_snake_case)]

use std::collections::HashMap;
use std::io::Write;
use std::process::{Command, Stdio};

use log::{debug, warn};

type RowMap = HashMap<String, serde_json::Value>;
///
/// 
pub struct ExecutableQuery {
    path: String,
    params: serde_json::Map<std::string::String, serde_json::Value>,
}

impl ExecutableQuery {
    ///
    pub fn new(path: &str, params: serde_json::Map<std::string::String, serde_json::Value>) -> ExecutableQuery {
        Self {
            path: path.into(),
            params: params,
        }
    }
    ///
    pub fn execute(&self) -> Result<Vec<RowMap>, String> {
        let program = self.path.clone();
        debug!("ExecutableQuery.execute | executing: {:?}\n\twith params: {:?}", self.path, self.params);
        debug!("ExecutableQuery.execute | executing command: {:?}", program);
        match serde_json::to_string(&(self.params)) {
            Ok(params) => {
                match Command::new(program)
                    // .arg(path)
                    .stdin(Stdio::piped())
                    .stderr(Stdio::piped())
                    .stdout(Stdio::piped())
                    .spawn() {
                    Ok(mut child) => {
                        debug!("ExecutableQuery.execute | command child: {:?}", &child);
                        debug!("ExecutableQuery.execute | sending stdin data...");
                        child.stdin
                            .as_mut()
                            .ok_or("Child process stdin has not been captured!").unwrap()
                            .write_all(params.as_bytes()).unwrap();
                        let output = child.wait_with_output().unwrap();
                        debug!("ExecutableQuery.execute | command output: {:?}", output);
                        if output.status.success() {
                            let mut result: Vec<RowMap> = vec![];
                            let rawOutput = String::from_utf8(output.stdout).unwrap();
                            debug!("ExecutableQuery.execute | rawOutput: {:?}", rawOutput);
                            match serde_json::from_str(rawOutput.as_str()) {
                                Ok(row) => {
                                    result.push(row);
                                    Ok(result)        
                                },
                                Err(err) => {
                                    let message = format!("ExecutableQuery.execute | executable result json parsing error: {:?}", err);
                                    warn!("{}", message);
                                    Err(message)        
                                },
                            }
                        } else {
                            let err = String::from_utf8(output.stderr).unwrap();
                            let message = format!("ExecutableQuery.execute | executable error: {:?}", err);
                            warn!("{}", message);
                            Err(message)
                        }
                    },
                    Err(err) => {
                        let message = format!("ExecutableQuery.execute | executable error: {:?}", err);
                        warn!("{}", message);
                        Err(message)
                    },
                }
            },
            Err(err) => {
                let message = format!("PythonQuery.execute | executable params parsing error: {:?}", err);
                warn!("{}", message);
                Err(message)
            },
        }
    }    
}