#![allow(non_snake_case)]

use std::io::Write;
use std::process::{Command, Stdio};

use api_tools::{error::api_error::ApiError, server::api_query::row_map::RowMap};
use log::{debug, warn};

///
/// 
pub struct PythonQuery {
    path: String,
    params: serde_json::Map<String, serde_json::Value>,
}

impl PythonQuery {
    ///
    pub fn new(path: &str, params: serde_json::Map<String, serde_json::Value>) -> PythonQuery {
        Self {
            path: path.into(),
            params: params,
        }
    }
    ///
    pub fn execute(&self) -> Result<Vec<RowMap>, ApiError> {
        let path = self.path.clone();
        debug!("PythonQuery.execute | script: {:?}\n\twith params: {:?}", self.path, self.params);
        let program = "python3";
        debug!("PythonQuery.execute | executing command: {:?}", program);
        match serde_json::to_string(&(self.params)) {
            Ok(params) => {
                match Command::new(program)
                    .arg(&path)
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
                            .write_all(params.as_bytes()).unwrap();
                        let output = child.wait_with_output().unwrap();
                        debug!("PythonQuery.execute | command output: {:?}", output);
                        if output.status.success() {
                            let mut result: Vec<RowMap> = vec![];
                            let rawOutput = String::from_utf8(output.stdout).unwrap();
                            debug!("PythonQuery.execute | rawOutput: {:?}", rawOutput);
                            match serde_json::from_str(rawOutput.as_str()) {
                                Ok(row) => {
                                    result.push(row);
                                    Ok(result)        
                                },
                                Err(err) => {
                                    let details = format!("PythonQuery.execute | python script result json parsing error: {:?}", err);
                                    warn!("{}", details);
                                    Err(ApiError::new(
                                        format!("Python script - script result json parsing error in \"{}\"", path),
                                        details,
                                    ))
                                },
                            }
                        } else {
                            let err = String::from_utf8(output.stderr).unwrap();
                            let details = format!("PythonQuery.execute | python script error: {:?}", err);
                            warn!("{}", details);
                            Err(ApiError::new(
                                format!("Python script - error in \"{}\"", path),
                                details,
                            ))
                        }
                    },
                    Err(err) => {
                        let details = format!("PythonQuery.execute | python script error: {:?}", err);
                        warn!("{}", details);
                        Err(ApiError::new(
                            format!("Python script - error in \"{}\"", path),
                            details,
                        ))
                    },
                }
            },
            Err(err) => {
                let details = format!("PythonQuery.execute | python script params parsing error: {:?}", err);
                warn!("{}", details);
                Err(ApiError::new(
                    format!("Python script - params parsing error in \"{}\"", path),
                    details,
                ))
            },
        }
    }    
}