#[cfg(test)]

extern crate postgres;

mod tests;
mod domain;
mod conf;
mod api_server;
mod server;
mod python_query;
mod executable_query;
mod api_service_type;
mod sql_query;

use std::path::{Path, PathBuf};
use clap::Parser;
use debugging::session::debug_session::{DebugSession, LogLevel};
use sal_core::dbg::Dbg;
use sal_sync::thread_pool::ThreadPool;
use crate::{conf::Config, domain::Cli, server::{TcpServer, WebServer}};

fn main() {
    let dbg = Dbg::own("main");
    let cli = Cli::parse();
    std::process::Command::new("clear").status().unwrap();
    log::debug!("Starting api server...");
    let path = cli.config.map_or_else(
        || PathBuf::from("config.yaml"),        // || std::env::current_dir().unwrap().join("config.yaml"),
        PathBuf::from
    );
    let path = Path::new(&path);
    log::debug!("Reading config file: {}", path.to_str().unwrap());
    let conf = Config::new(path);
    DebugSession::new()
        .filter(conf.logging.level)
        .module("tokio_postgres", LogLevel::Info)
        .module("sal_sync::thread_pool", LogLevel::Info)
        .module("tungstenite", LogLevel::Info)
        .init();
    log::debug!("{dbg} | Log level: {:?}", conf.logging.level);
    log::debug!("{dbg} | services: {:#?}", conf.services);
    let tp = ThreadPool::new(&dbg, Some(conf.treads));
    let tcp_server = TcpServer::new(
        &conf.address.clone(),
        conf.clone(),
        tp.scheduler(),
    );
    if let Err(err) = tcp_server.run() {
        log::error!("{dbg} | TcpServer can't start: {:?}", err)
    }
    if let Some(address) = conf.web_address.clone() {
        let web_server = WebServer::new(
            &address,
            conf,
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
