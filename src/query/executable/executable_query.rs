#![allow(non_snake_case)]

use std::io::Write;
use std::process::{Command, Stdio};

use api_tools::{
    error::api_error::ApiError,
    server::api_query::row_map::RowMap,
};
use log::{debug, warn};

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
            params,
        }
    }
    ///
    pub fn execute(&self) -> Result<Vec<RowMap>, ApiError> {
        let program = self.path.clone();
        debug!("ExecutableQuery.execute | executing: {:?}\n\twith params: {:?}", self.path, self.params);
        debug!("ExecutableQuery.execute | executing command: {:?}", program);
        match serde_json::to_string(&(self.params)) {
            Ok(params) => {
                match Command::new(program.clone())
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
                                    let details = format!("ExecutableQuery.execute | result json parsing error: {:?}", err);
                                    warn!("{}", details);
                                    Err(ApiError::new(
                                        format!("Executable service - result json parsing error in \"{}\"", program), 
                                        details,
                                    ))
                                },
                            }
                        } else {
                            let err = String::from_utf8(output.stderr).unwrap();
                            let details = format!("ExecutableQuery.execute | executable error: {:?}", err);
                            warn!("{}", details);
                            Err(ApiError::new(
                                format!("Executable service - error in the executable \"{}\"", program), 
                                details,
                            ))
                        }
                    },
                    Err(err) => {
                        let details = format!("ExecutableQuery.execute | executable error: {:?}", err);
                        warn!("{}", details);
                        Err(ApiError::new(
                            format!("Executable service - error in the executable \"{}\"", program), 
                            details,
                        ))
                    },
                }
            },
            Err(err) => {
                let details = format!("ExecutableQuery.execute | params parsing error: {:?}", err);
                warn!("{}", details);
                Err(ApiError::new(
                    format!("Executable service - params parsing error in \"{}\"", program), 
                    details,
                ))
            },
        }
    }    
}