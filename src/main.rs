use serde::{Serialize, Deserialize};
use sqlite::Connection;

fn main() {
    println!("Hello, world!");
    // let path = ":memory";
    let path = "./database.sqlite";
    let connection = sqlite::open(path).unwrap();
    // drop(&connection);
    // create(&connection);
    sel(&connection);
}


fn drop(connection: &Connection) {
    let query = "
        DROP TABLE IF EXISTS `users`;";
    connection.execute(query).unwrap();

}

fn create(connection: &Connection) {
    let query = "
        CREATE TABLE `users` (
            name TEXT, 
            age INTEGER, 
            created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
        );
        INSERT INTO users(name, age) VALUES ('Alice', 42);
        INSERT INTO users(name, age) VALUES ('Bob', 69);
    ";
    connection.execute(query).unwrap();

}

fn sel(connection: &Connection) {
    let query = "SELECT * FROM `users`";
    // let query = "SELECT * FROM users WHERE age > 50";
    match connection.iterate(query, |pairs| {
        println!("pair: {:?}", pairs);
        for &(name, value) in pairs.iter() {
            println!("{} = {}", name, value.unwrap());
        }
        true
    }) {
        Ok(_) => {},
        Err(err) => {
            println!("Error: {:?}", err);
        },
    }
}

#[derive(Debug, Serialize, Deserialize)]
struct SqlQuery {
    pub sql: HashMap<String, DsLineConf>,

}
impl SqlQuery {
    pub fn new(jsonString: String) -> SqlQuery {
        let lines: HashMap<String, DsLineConf> = serde_json::from_str(&configJson).unwrap();
        DsConfig{lines}
    }
}