#[cfg(test)]

extern crate postgres;

mod tests;
mod domain;
mod config;
mod api_server;
mod server;
mod python_query;
mod executable_query;
mod api_service_type;
mod sql_query;
mod sql_query_sqlite;
mod sql_query_postgre;
mod sql_query_mysql;

use std::path::{Path, PathBuf};
use clap::Parser;
use debugging::session::debug_session::{Backtrace, DebugSession, LogLevel};
use log::debug;
use crate::{
    config::Config, domain::cli::cli::Cli, server::tcp_server::TcpServer
};

fn main() {
    DebugSession::init(LogLevel::Debug, Backtrace::Short);
    let cli = Cli::parse();
    debug!("starting api server...");
    let path = cli.config.map_or_else(
        || PathBuf::from("config.yaml"),        // || std::env::current_dir().unwrap().join("config.yaml"),
        PathBuf::from
    );
    let path = Path::new(&path);
    debug!("reading config file: {}", path.to_str().unwrap());
    let config = Config::new(path);
    let tcp_server = TcpServer::new(
        &config.address.clone(),
        config,
    );
    tcp_server.run().unwrap();
}
