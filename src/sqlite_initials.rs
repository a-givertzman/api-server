
fn _rebuildSqliteTables() {
    // let path = ":memory";
    let path = "./database.sqlite";
    let connection = Connection::open(path).unwrap();
    _drop(&connection);
    _create(&connection);
    _testSel(&connection);    
}

fn _testSel(con: &Connection) {
    let sql = "SELECT * FROM `users`;";
    // let query = "SELECT * FROM users WHERE age > 50";
    SqlQuery::new(con, sql.to_string()).execute().unwrap();
    let sql = "SELECT * FROM `dep_objects`;";
    SqlQuery::new(con, sql.to_string()).execute().unwrap();
    let sql = "SELECT * FROM `do_data`;";
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


fn _executeQuery(connection: &Connection, sql: &str) {
    match connection.execute_batch(sql) {
        Ok(res) => {
            debug!("qyery result: {:?}", res)
        },
        Err(err) => {
            warn!("qyery result: {}", err)
        },
    }();
}

fn _drop(connection: &Connection) {
    _executeQuery(connection, "DROP TABLE IF EXISTS `users`;");
    _executeQuery(connection, "DROP TABLE IF EXISTS `dep_objects`;");
}

fn _create(connection: &Connection) {
    _executeQuery(
        connection, 
        "CREATE TABLE IF NOT EXISTS `dep_objects` (
            name TEXT, 
            created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
        );",
    );
    _executeQuery(
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


    _executeQuery(
        connection, 
        "CREATE TABLE `do_data` (
            id INTEGER PRIMARY KEY,
            name TEXT,
            well TEXT,
            pad TEXT,
            prep_object TEXT,
            field TEXT,
            company TEXT,
            activity TEXT,
            comment TEXT,
            date_planning TEXT,
            date_fact TEXT,
            date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
            responsible_person TEXT,
            obj_status TEXT,
            failure TEXT
        );",
    );

    let doData = _getDoData();
    let mut query = vec![];
    for item in doData {
        let mut names = vec![];
        let mut values = vec![];
        for (name, value) in item {
            names.push(name.to_string());
            values.push(format!("'{}'", value.to_string()));
        }
        let insert = format!("INSERT INTO do_data ({}) VALUES ({});", names.join(", "), values.join(", "));
        query.push(insert);
    }
    let query = query.join(";   ");
    debug!("doData query: {}", query);
    _executeQuery(
        connection, 
        &query
    );
    _executeQuery(
        connection, 
        "CREATE TABLE `users` (
            name TEXT, 
            age INTEGER, 
            created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
        );",
    );
    _executeQuery(
        connection, 
        "INSERT INTO users(name, age) VALUES ('Alice', 42);",
    );
    _executeQuery(
        connection, 
        "INSERT INTO users(name, age) VALUES ('Bob', 69);",
    );
    _executeQuery(
        connection, 
        "
            INSERT INTO users(name, age) VALUES ('Bob1', 1);
            INSERT INTO users(name, age) VALUES ('Bob2', 2);
        ",
    );
    // connection.execute(query, ()).unwrap();

}


fn _getDoData() -> Vec<HashMap<&'static str, &'static str>> {
    let doData = vec![
        HashMap::from([
          ("id", "213"),
          ("name", "Cкважина"),
          ("well", "1512"),
          ("pad", "12"),
          ("prep_object", "ДНС-2 Еты-Пуровского"),
          ("field", "Еты-Пуровское"),
          ("company", "ГПН-ННГ"),
          ("activity", ""),
          ("comment", ""),
          ("date_planning", ""),
          ("date_fact", ""),
          ("date_creation", "01.04.2023"),
          ("responsible_person", ""),
          ("obj_status", ""),
          ("failure", ""),
        ]),
        HashMap::from([
          ("id", "214"),
          ("name", "Cкважина"),
          ("well", "1557"),
          ("pad", "22А"),
          ("prep_object", "ДНС-2 Еты-Пуровского"),
          ("field", "Еты-Пуровское"),
          ("company", "ГПН-ННГ"),
          ("activity", ""),
          ("comment", ""),
          ("date_planning", ""),
          ("date_fact", ""),
          ("date_creation", "01.04.2023"),
          ("responsible_person", ""),
          ("obj_status", ""),
          ("failure", ""),
        ]),
        HashMap::from([
            ("id", "215"),
            ("name", "Cкважина"),
            ("well", "3100"),
            ("pad", "251Б"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "216"),
            ("name", "Cкважина"),
            ("well", "3101"),
            ("pad", "263Б"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "217"),
            ("name", "Cкважина"),
            ("well", "3133"),
            ("pad", "250"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "218"),
            ("name", "Cкважина"),
            ("well", "4141"),
            ("pad", "266"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "261"),
            ("name", "Cкважина"),
            ("well", "1406г"),
            ("pad", "11"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "262"),
            ("name", "Cкважина"),
            ("well", "1426"),
            ("pad", "11"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "263"),
            ("name", "Cкважина"),
            ("well", "1716"),
            ("pad", "33"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "264"),
            ("name", "Cкважина"),
            ("well", "266ПО"),
            ("pad", "251Б"),
            ("prep_object", "ДНС-2 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "302"),
            ("name", "Cкважина"),
            ("well", "1721"),
            ("pad", "178"),
            ("prep_object", "ДНС-1 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "303"),
            ("name", "Cкважина"),
            ("well", "1722"),
            ("pad", "178"),
            ("prep_object", "ДНС-1 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "304"),
            ("name", "Cкважина"),
            ("well", "1816"),
            ("pad", "17"),
            ("prep_object", "ДНС-1 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "305"),
            ("name", "Cкважина"),
            ("well", "2020"),
            ("pad", "1Б"),
            ("prep_object", "ДНС-1 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "306"),
            ("name", "Cкважина"),
            ("well", "2062"),
            ("pad", "17"),
            ("prep_object", "ДНС-1 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
          HashMap::from([
            ("id", "307"),
            ("name", "Cкважина"),
            ("well", "2063"),
            ("pad", "17"),
            ("prep_object", "ДНС-1 Еты-Пуровского"),
            ("field", "Еты-Пуровское"),
            ("company", "ГПН-ННГ"),
            ("activity", ""),
            ("comment", ""),
            ("date_planning", ""),
            ("date_fact", ""),
            ("date_creation", "01.04.2023"),
            ("responsible_person", ""),
            ("obj_status", ""),
            ("failure", ""),
          ]),
    ];
    doData
}
