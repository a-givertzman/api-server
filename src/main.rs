#![allow(non_snake_case)]

extern crate postgres;

mod config;
mod api_server;
mod api_query_type;
mod api_query_sql;
mod api_query_python;
mod api_query_executable;
mod api_query_unknown;
mod api_query_error;
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
    // println!("tcpServer.isConnected: {:?}", tcpServer.lock().unwrap().isConnected);
    // thread::sleep(Duration::from_secs_f64(10.0));
    // println!("tcpServer.isConnected: {:?}", tcpServer.lock().unwrap().isConnected);
    // while tcpServer.lock().unwrap().isConnected {
    //     thread::sleep(Duration::from_secs_f64(1.0));
    // }
}
