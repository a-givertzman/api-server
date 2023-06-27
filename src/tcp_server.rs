#![allow(non_snake_case)]

use log::{
    info,
    // trace,
    debug,
    warn,
};
use rusqlite::Connection;
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
    error::Error, cell::RefCell, 
};
use std::time::SystemTime;
use chrono::{
    DateTime,
    Utc,
    SecondsFormat,
};

use crate::{
    api_query::ApiQuery, 
    api_reply::SqlReply, 
    sql_query::SqlQuery, 
    api_server::ApiServer,
};


// const EOF: u8 = 4;


///
/// 
pub struct TcpServer {
    addr: SocketAddr,
    // stream: Option<TcpStream>,
    // listener: Option<TcpListener>,
    reconnectDelay: Duration,
    pub isConnected: bool,
    apiServer: ApiServer,
    // cancel: bool,
}
impl TcpServer {
    pub fn new(addr: &str, apiServer: ApiServer) -> Self {
        Self {
            addr: addr.parse().unwrap(),
            // stream: None,
            // listener: None,
            reconnectDelay: Duration::from_secs(3),
            isConnected: false,
            apiServer: apiServer,
            // cancel: false,
        }
    }
    ///
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
            // debug!("[TcpServer] bytes: {:#?}", bytes[0]);
            let reply = self.apiServer.build(buf.to_vec());
            thread::sleep(Duration::from_millis(1500));
            match Self::writeToTcpStream(
                stream,
                &reply,
            ) {
                Ok(_) => {},
                Err(err) => {
                    warn!("[TcpServer] error sending reply: {:?}", err);
                    cancel = true;
                },
            };
            // thread::sleep(self.reconnectDelay);
            cancel = true;
            if cancel { break };
        }
        warn!("[TcpServer] listenStream exit");
    }
}

