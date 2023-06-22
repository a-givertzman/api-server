#![allow(non_snake_case)]

mod sql_query;
mod sql_reply;
mod tcp_server;

use std::{fs, sync::{Arc, Mutex}, env, thread, time::Duration, collections::HashMap};

use log::{debug, warn};
use rusqlite::Connection;
use serde::{Serialize, Deserialize};

use crate::{sql_query::SqlQuery, sql_reply::SqlReply, tcp_server::TcpServer};

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
    sel(&connection);

    let path = "src/qury-format.json";
    let jsonString = fs::read_to_string(&path)
        .expect(&format!("Error read file {}", path));
    println!("jsonString: {:?}", jsonString);
    SqlQuery::fromJson(jsonString);

    let path = "src/reply-format.json";
    let jsonString = fs::read_to_string(&path)
        .expect(&format!("Error read file {}", path));
    println!("jsonString: {:?}", jsonString);
    SqlReply::new(jsonString);

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

fn executeQuery(connection: &Connection, sql: &str) {
    match connection.execute(sql, ()) {
        Ok(res) => {
            debug!("qyery result: {}", res)
        },
        Err(err) => {
            warn!("qyery result: {}", err)
        },
    }();
}

fn drop(connection: &Connection) {
    executeQuery(connection, "DROP TABLE IF EXISTS `users`;");
    // let query = "DROP TABLE IF EXISTS `users`;";
}

fn create(connection: &Connection) {
    executeQuery(
        connection, 
        "CREATE TABLE `users` (
                    name TEXT, 
                    age INTEGER, 
                    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
                );
            ",
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
        "INSERT INTO users(name, age) VALUES ('Bob1', 1);
        INSERT INTO users(name, age) VALUES ('Bob2', 2);",
    );
    // connection.execute(query, ()).unwrap();

}

fn sel(connection: &Connection) {
    let query = "SELECT * FROM `users`;";
    // let query = "SELECT * FROM users WHERE age > 50";
    match connection.prepare(query) {
        Ok(mut stmt) => {
            let rowIter = stmt.query_map([], |row| {
                debug!("row: {:?}", row);
                // for &(name, value) in row.iter() {
                //     println!("{} = {}", name, value.unwrap());
                // }
                let mut hm = HashMap::new();
                // row.
                let name: String = row.get(0)?;
                let age: String = row.get(0)?;
                let created: String = row.get(0)?;
                hm.insert("name", name);
                hm.insert("age", age);
                hm.insert("created", created);
                Ok(hm)
            }).unwrap();
            //  {
            //     Ok(_) => {},
            //     Err(err) => {
            //         warn!("query_map error: {:?}", err)
            //     },
            // };
            for item in rowIter {
                debug!("row: {:?}", item.unwrap());
            }
        },
        Err(err) => {
            warn!("prepare error: {:?}", err)
        },
    };
}



// enum Value {
//     Null,
//     Bool(bool),
//     Number(Number),
//     String(String),
//     Array(Vec<Value>),
//     Object(Map<String, Value>),
// }