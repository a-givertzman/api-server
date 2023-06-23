#![allow(non_snake_case)]

mod api_query;
mod api_reply;
mod tcp_server;
mod sql_query;

use std::{fs, sync::{Arc, Mutex}, env, thread, time::Duration, cell::RefCell};

use log::{debug, warn};
use rusqlite::{Connection};

use crate::{api_query::ApiQuery, api_reply::SqlReply, tcp_server::TcpServer, sql_query::SqlQuery};

fn main() {
    env::set_var("RUST_LOG", "debug");
    // env::set_var("RUST_BACKTRACE", "1");
    env::set_var("RUST_BACKTRACE", "full");
    env_logger::init();

    debug!("starting api server...");
    // let path = ":memory";
    let path = "./database.sqlite";
    let connection = Connection::open(path).unwrap();
    drop(&connection);
    create(&connection);
    testSel(&connection);

    let tcpServer = Arc::new(Mutex::new(
        TcpServer::new(
            "127.0.0.1:8899", 
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


fn testSel(con: &Connection) {
    let sql = "SELECT * FROM `users`;";
    // let query = "SELECT * FROM users WHERE age > 50";
    SqlQuery::new(con, sql.to_string()).execute().unwrap();
    let sql = "SELECT * FROM `dep_objects`;";
    SqlQuery::new(con, sql.to_string()).execute().unwrap();
}

fn _testApiQuery() {
    let path = "src/qury-format.json";
    let jsonString = fs::read_to_string(&path)
        .expect(&format!("Error read file {}", path));
    println!("jsonString: {:?}", jsonString);
    ApiQuery::fromJson(jsonString);
}

fn _testApiReply() {
    let path = "src/reply-format.json";
    let jsonString = fs::read_to_string(&path)
        .expect(&format!("Error read file {}", path));
    println!("jsonString: {:?}", jsonString);
    SqlReply::new(jsonString);
}


fn executeQuery(connection: &Connection, sql: &str) {
    match connection.execute_batch(sql) {
        Ok(res) => {
            debug!("qyery result: {:?}", res)
        },
        Err(err) => {
            warn!("qyery result: {}", err)
        },
    }();
}

fn drop(connection: &Connection) {
    executeQuery(connection, "DROP TABLE IF EXISTS `users`;");
    executeQuery(connection, "DROP TABLE IF EXISTS `dep_objects`;");
}

fn create(connection: &Connection) {
    executeQuery(
        connection, 
        "CREATE TABLE IF NOT EXISTS `dep_objects` (
            name TEXT, 
            created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
        );",
    );
    executeQuery(
        connection, 
        "
            INSERT INTO dep_objects(name) VALUES ('ГПН-Восток');
            INSERT INTO dep_objects(name) VALUES ('ГПН-ННГ');
            INSERT INTO dep_objects(name) VALUES ('ГПН-Оренбург');
            INSERT INTO dep_objects(name) VALUES ('ГПН-Хантос');
            INSERT INTO dep_objects(name) VALUES ('Мессояха');
            INSERT INTO dep_objects(name) VALUES ('СН-МНГ');
        ",
    );

    executeQuery(
        connection, 
        "CREATE TABLE `users` (
            name TEXT, 
            age INTEGER, 
            created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
        );",
    );
    executeQuery(
        connection, 
        "INSERT INTO users(name, age) VALUES ('Alice', 42);",
    );
    executeQuery(
        connection, 
        "INSERT INTO users(name, age) VALUES ('Bob', 69);",
    );
    executeQuery(
        connection, 
        "
            INSERT INTO users(name, age) VALUES ('Bob1', 1);
            INSERT INTO users(name, age) VALUES ('Bob2', 2);
        ",
    );
    // connection.execute(query, ()).unwrap();

}
