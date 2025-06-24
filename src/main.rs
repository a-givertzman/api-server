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
use sal_core::dbg::Dbg;
use sal_sync::thread_pool::ThreadPool;
use crate::{
    config::Config, domain::Cli, server::{TcpServer, WebServer}
};

fn main() {
    DebugSession::init(LogLevel::Debug, Backtrace::Short);
    let dbg = Dbg::own("main");
    let cli = Cli::parse();
    debug!("starting api server...");
    let path = cli.config.map_or_else(
        || PathBuf::from("config.yaml"),        // || std::env::current_dir().unwrap().join("config.yaml"),
        PathBuf::from
    );
    let path = Path::new(&path);
    debug!("reading config file: {}", path.to_str().unwrap());
    let config = Config::new(path);
    let tp = ThreadPool::new(&dbg, Some(config.treads));
    let tcp_server = TcpServer::new(
        &config.address.clone(),
        config.clone(),
        tp.scheduler(),
    );
    if let Err(err) = tcp_server.run() {
        log::error!("{dbg} | TcpServer can't start: {:?}", err)
    }
    if let Some(address) = config.web_address.clone() {
        let web_server = WebServer::new(
            &address,
            config,
            tp.scheduler(),
        );
        if let Err(err) = web_server.run() {
            log::error!("{dbg} | TcpServer can't start: {:?}", err)
        }
        if let Err(err) = web_server.wait() {
            log::error!("{dbg} | TcpServer error: {:?}", err)
        }
    }
    if let Err(err) = tcp_server.wait() {
        log::error!("{dbg} | TcpServer error: {:?}", err)
    }
    log::debug!("{dbg} | Shutting down...");
    tp.shutdown().unwrap()
}
