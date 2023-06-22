#![allow(non_snake_case)]

use log::{
    info,
    // trace,
    debug,
    warn,
};
use std::{
    net::{
        SocketAddr, 
        TcpStream, 
        TcpListener, 
        Shutdown,
    }, 
    io::{
        // BufReader, 
        // BufRead, 
        Read, Write,
    }, 
    sync::{
        Arc, 
        Mutex,
    },     
    thread,
    time::Duration,
    error::Error, 
};
use std::time::SystemTime;
use chrono::{
    DateTime,
    Utc,
    SecondsFormat,
};

use crate::{sql_query::SqlQuery, sql_reply::SqlReply};


const EOF: u8 = 4;


///
/// 
pub struct TcpServer {
    addr: SocketAddr,
    // stream: Option<TcpStream>,
    // listener: Option<TcpListener>,
    reconnectDelay: Duration,
    pub isConnected: bool,
    // cancel: bool,
}

impl TcpServer {
    pub fn new(addr: &str) -> Self {
        Self {
            addr: addr.parse().unwrap(),
            // stream: None,
            // listener: None,
            reconnectDelay: Duration::from_secs(3),
            isConnected: false,
            // cancel: false,
        }
    }
    pub fn run(this: Arc<Mutex<Self>>) -> Result<(), Box<dyn Error>> {
        debug!("[TcpServer] starting...");
        info!("[TcpServer] enter");
        let mut listener: Option<TcpListener> = None;
        let mut tryAgain = 3;
        let addr = this.lock().unwrap().addr;
        let reconnectDelay = this.lock().unwrap().reconnectDelay;
        debug!("[TcpServer] trying to open...");
        thread::Builder::new().name("TcpServer tread".to_string()).spawn(move || {
            debug!("[TcpServer] started in {:?}", thread::current().name().unwrap());
            while tryAgain > 0 {
                debug!("[TcpServer] {:?} attempts left", tryAgain);
                listener = match TcpListener::bind(addr) {
                    Ok(stream) => {
                        this.clone().lock().unwrap().isConnected = true;
                        info!("[TcpServer] opened on: {:?}\n", addr);
                        tryAgain = -1;
                        Some(stream)
                    },
                    Err(err) => {
                        this.clone().lock().unwrap().isConnected = false;
                        debug!("[TcpServer] binding error on: {:?}\n\tdetailes: {:?}", addr, err);
                        std::thread::sleep(reconnectDelay);
                        None
                    },
                };
                tryAgain -= 1;
            };
            debug!("[TcpServer] listening for incoming clients");
            match listener {
                Some(listener) => {
                    for result in listener.incoming() {
                        let mut stream = result.unwrap();
                        // let mut streamSend = stream.try_clone().unwrap();
                        let me = this.clone();
                        info!("[TcpServer] incoming connection: {:?}", stream.peer_addr());
                        Some(
                            thread::Builder::new().name("TcpServer tread".to_string()).spawn(move || {
                                debug!("[TcpServer] started in {:?}", thread::current().name().unwrap());
                                me.lock().unwrap().listenStream(&mut stream);
                            }).unwrap()
                        );        
                        // this.lock().unwrap().sendToConnection(&mut streamSend);
                        // this.lock().unwrap().handleConnection(streamSend)?;
                    }
                },
                None => {
                    warn!("[TcpServer] connection failed");
                },
            };

        }).unwrap();

        debug!("[TcpServer] started\n");
        Ok(())
    }
    ///
    /// 
    // fn handleConnection(&mut self, mut stream: TcpStream) -> Result<(), Box<dyn Error>> {
    //     // let mut s1 = Arc::new(Mutex::new(stream.try_clone().unwrap()));
    //     Ok(())
    // }
    ///
    /// 
    // fn buildPoint(&self, name: &str, value: &f64, timestamp: &SystemTime) -> DsPoint {
    //     DsPoint {
    //         dataType: todo!(),
    //         history: todo!(),
    //         alarm: todo!(),
    //         // class: String::from("commonCmd"),
    //         // datatype: String::from("real"),
    //         name: format!("/line1/ied12/db902_panel_controls/{}", name.to_owned()),
    //         value: *value,
    //         status: 0,
    //         timestamp: DateTime::<Utc>::from(*timestamp).to_rfc3339_opts(SecondsFormat::Micros, true),
    //     }
    // }
    ///
    /// Sending messages to remote client
    // fn sendToConnection(&mut self, stream: &mut TcpStream) {
    //     debug!("[TcpServer] start to sending messages...");
    //     let len = 4096;
    //     let delay = 1.0 / (len as f64);
    //     let mut i = 0;
    //     // let mut phi = 0.0;
    //     println!("sending delay: {:#?}", delay);
    //     let now: DateTime<Utc> = SystemTime::now().into();
    //     println!("first: {:?}", now.to_rfc3339_opts(SecondsFormat::Micros, true));
    //     let mut points;
    //     let mut errHappen = false;
    //     loop {
    //         // println!("buf: {:#?}", buf);
    //         let mut queue = is.queueRx.lock().unwrap();
    //         let length = queue.len();
    //         let mut items = Vec::with_capacity(length);
    //         for _ in 0..length {
    //             match queue.dequeue() {
    //                 Some(item) => {
    //                     items.push(item);
    //                 },
    //                 None => {},
    //             }
    //         }
    //         points = items.iter().map(|item| {
    //             let (value, timestamp) = item;
    //             self.buildPoint("Platform.sin", value, timestamp)
    //         });
    //         for point in points {
    //             // debug!("sending point: {:#?}", point);
    //             let jsonString = point.toJson();
    //             errHappen = false;
    //             match jsonString {
    //                 Ok(value) => {
    //                     match Self::writeToTcpStream(stream, value.as_bytes()) {
    //                         Ok(_) => {},
    //                         Err(_) => {
    //                             errHappen = true;
    //                             break;
    //                         },
    //                     };
    //                     match Self::writeToTcpStream(stream, &[EOF]) {
    //                         Ok(_) => {},
    //                         Err(_) => {
    //                             errHappen = true;
    //                             break;
    //                         },
    //                     };
    //                 },
    //                 Err(err) => {
    //                     warn!("error converting point to json: {:?},\n\tdetales: {:?}", point, err);
    //                 },
    //             }
    //             if errHappen { break };
    //         }
    //         if errHappen { break };
    //         i = (i + 1) % len;
    //         // phi = PI2 * (i as f64) / (len as f64);
    //         thread::sleep(Duration::from_secs_f64(delay));
    //     }
    //     match stream.shutdown(Shutdown::Both) {
    //         Ok(_) => {
    //             warn!("[TcpServer] sendToConnection stream.shutdown done");
    //         },
    //         Err(err) => {
    //             warn!("[TcpServer] sendToConnection stream.shutdown error: {:?}", err);
    //         },
    //     };
    //     warn!("[TcpServer] sendToConnection exit");
    // }
    ///
    /// 
    fn writeToTcpStream(stream: &mut TcpStream, bytes: &[u8]) -> Result<(), Box<dyn Error>> {
        match stream.write(bytes) {
            Ok(_) => Ok(()),
            Err(err) => {
                warn!("[TcpStream] write error, data: {:?},\n\tdetales: {:?}", bytes, err);
                Err(Box::new(err))
            },
        }
    }
    ///
    /// Listening incoming messages from remote client
    fn listenStream(&mut self, stream: &mut TcpStream) {
        debug!("[TcpServer] start to reading messages...");
        let mut cancel = false;
        while !cancel {
            let mut buf = [0; 4096];
            match stream.read(&mut buf) {
                Ok(bytesRead) => {
                    debug!("[TcpServer] bytes read: {:#?}", bytesRead);
                    cancel = bytesRead <= 0;
                },
                Err(err) => {
                    warn!("[TcpServer] TcpStream read error: {:#?}", err);
                    cancel = true;
                },
            };
            // debug!("[TcpServer] buf: {:#?}", buf);
            // let parts = buf.split(|b| {*b == EOF});
            // let bytes: Vec<_> = parts.take(1).collect();
            // debug!("[TcpServer] bytes: {:#?}", bytes[0]);
            let sqlQuery = SqlQuery::fromBytes(buf.to_vec());
            debug!("[TcpServer] received point: {:?}", sqlQuery);
            let sqlReply = if sqlQuery.sql == "SELECT * FROM dep-objects" {
                SqlReply {
                    auth_token: sqlQuery.auth_token,
                    id: sqlQuery.id,
                    sql: sqlQuery.sql,
                    data: vec![
                       (String::from("name"), Some(String::from("Все ДО"))),
                       (String::from("name"), Some(String::from("ГПН-Восток"))),
                       (String::from("name"), Some(String::from("ГПН-ННГ"))),
                       (String::from("name"), Some(String::from("ГПН-Оренбург"))),
                       (String::from("name"), Some(String::from("ГПН-Хантос"))),
                       (String::from("name"), Some(String::from("Мессояха"))),
                       (String::from("name"), Some(String::from("СН-МНГ"))),
                     ],
                    errors: vec![],
                }
                  
            } else {
                SqlReply {
                   auth_token: sqlQuery.auth_token,
                   id: sqlQuery.id,
                   sql: sqlQuery.sql,
                   data: vec![],
                   errors: vec![],
               }
            };
            match Self::writeToTcpStream(
                stream,
                &sqlReply.asBytes(),
            ) {
                Ok(_) => {},
                Err(_) => todo!(),
            };
            thread::sleep(self.reconnectDelay);
            if cancel { break };
        }
        warn!("[TcpServer] listenStream exit");
    }
}
