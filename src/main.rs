#[cfg(test)]

extern crate postgres;

mod tests;
mod core_;
mod config;
mod api_server;
mod tcp_server;
mod python_query;
mod executable_query;
mod api_service_type;
mod sql_query;
mod sql_query_sqlite;
mod sql_query_postgre;
mod sql_query_mysql;
mod tcp_connection;

use std::{path::{Path, PathBuf}, sync::{Arc, Mutex}};
use clap::Parser;
use log::debug;
use crate::{
    config::Config, core_::{cli::cli::Cli, debug::debug_session::{Backtrace, DebugSession, LogLevel}}, tcp_server::TcpServer
};

fn main() {
    DebugSession::init(LogLevel::Debug, Backtrace::Short);
    let cli = Cli::parse();
    debug!("starting api server...");
    let path = cli.config.map_or_else(
        || PathBuf::from("config.yaml"),        // || std::env::current_dir().unwrap().join("config.yaml"),
        PathBuf::from
    );
    debug!("reading config file: {}", path.to_str().unwrap());
    let config = Config::new(path);
    let tcp_server = Arc::new(Mutex::new(
        TcpServer::new(
            &config.address.clone(),
            config,
        ),
    ));
    TcpServer::run(tcp_server.clone()).unwrap();
}
