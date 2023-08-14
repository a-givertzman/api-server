#![allow(non_snake_case)]

mod config;
mod api_server;
mod api_query_type;
mod api_query_sql;
mod api_query_python;
mod api_query;
mod api_reply;
mod tcp_server;
mod sql_query;
mod python_query;

use std::{fs, sync::{Arc, Mutex}, env, thread, time::Duration, cell::RefCell, collections::HashMap};

use log::{debug, warn};
use rusqlite::{Connection};

use crate::{
    api_query::ApiQuery, 
    api_reply::SqlReply, 
    tcp_server::TcpServer, 
    sql_query::SqlQuery, 
    config::Config, 
    api_server::ApiServer,
};

fn main() {
    env::set_var("RUST_LOG", "debug");
    // env::set_var("RUST_BACKTRACE", "1");
    env::set_var("RUST_BACKTRACE", "full");
    env_logger::init();

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
    println!("tcpServer.isConnected: {:?}", tcpServer.lock().unwrap().isConnected);
    thread::sleep(Duration::from_secs_f64(10.0));
    println!("tcpServer.isConnected: {:?}", tcpServer.lock().unwrap().isConnected);
    while tcpServer.lock().unwrap().isConnected {
        thread::sleep(Duration::from_secs_f64(1.0));
    }
}
