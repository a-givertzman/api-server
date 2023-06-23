#![allow(non_snake_case)]

mod sql_query;
mod sql_reply;
mod tcp_server;

use std::{fs, sync::{Arc, Mutex}, env, thread, time::Duration, collections::HashMap, cell::RefCell, rc::Rc};

use log::{debug, warn};
use rusqlite::{Connection, types::Value, Statement, CachedStatement};
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
    let mut stmt = connection.prepare_cached(query).unwrap();
        // Ok(stmt) => {
            // let cNames = stmt.column_names().clone();
            // let rowIter = stmt.query_map([], |row| {
            //     debug!("row: {:?}", row);
            //     // for &(name, value) in row.iter() {
            //     //     println!("{} = {}", name, value.unwrap());
            //     // }
            //     let mut hm = HashMap::new();
            //     // row.
            //     for cName in cNames {
            //         let value: Value = row.get_unwrap(cName);
            //         hm.insert(cName, value);
            //     }
            //     Ok(hm)
            // }).unwrap();
            //  {
            //     Ok(_) => {},
            //     Err(err) => {
            //         warn!("query_map error: {:?}", err)
            //     },
            // };
            // for item in rowIter {
            //     debug!("row: {:?}", item.unwrap());
            // }
    //     },
    //     Err(err) => {
    //         warn!("prepare error: {:?}", err)
    //     },
    // };
    // let mut rows = vec![];
    // let cNames = &mut stmt.column_names().clone();
    let mut cNames = vec![];
    let mut stmt = names(stmt, &mut cNames);
    let sqlRows = stmt.query_map([], |row| {
        let mut rowMap = HashMap::new();
        for cName in cNames.iter() {
            let value: Value = row.get(cName.as_str()).expect(&format!("Error getting value from \"{}\" field", cName));
            rowMap.insert(cName, value);
        }
        Ok(rowMap)
    }).unwrap();
    for row in sqlRows {
        match row {
            Ok(row) => {
                debug!("row: {:?}", row);
            },
            Err(err) => {
                warn!("getting rows error: {:?}", err);
            },
        }
    }
}
///
fn names<'a>(stmt: CachedStatement<'a>, cNames: &mut Vec<String>) -> CachedStatement<'a> {
    let nVec = &mut stmt.column_names().clone();
    cNames.clear();
    for item in nVec {
        cNames.push(item.to_string());
    }
    return stmt;
}
