#![allow(non_snake_case)]
#[cfg(test)]

extern crate postgres;

mod tests;
mod core_;
mod config;
mod api_server;
mod api_query;
mod api_reply;
mod tcp_server;
mod python_query;
mod executable_query;
mod api_service_type;
mod sql_query;
mod sql_query_sqlite;
mod sql_query_postgre;
mod sql_query_mysql;

use std::{
    sync::{Arc, Mutex}, 
    env, 
};

use log::debug;

use crate::{
    config::Config, 
    tcp_server::TcpServer, 
    api_server::ApiServer, core_::debug::debug_session::{DebugSession, LogLevel, Backtrace},
};

fn main() {
    DebugSession::init(LogLevel::Debug, Backtrace::Short);
    debug!("starting api server...");
    let dir = std::env::current_dir().unwrap();
    let path: &str = &format!("{}/config.yaml", dir.to_str().unwrap());
    debug!("reading config file: {}", path);
    let config = Config::new(path);
    let tcpServer = Arc::new(Mutex::new(
        TcpServer::new(
            config.address.as_str(),
            ApiServer::new(config.clone()),
        ),
    ));
    TcpServer::run(tcpServer.clone()).unwrap();
}
