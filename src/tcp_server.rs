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
        // Shutdown,
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
    thread::{self, JoinHandle},
    time::Duration,
    error::Error, 
};
// use std::time::SystemTime;
// use chrono::{
//     DateTime,
//     Utc,
//     SecondsFormat,
// };

use crate::api_server::ApiServer;



///
/// 
pub struct TcpServer {
    addr: SocketAddr,
    reconnectDelay: Duration,
    pub isConnected: bool,
    apiServer: ApiServer,
}
impl TcpServer {
    ///
    /// creates new instance of the TcpServer
    pub fn new(addr: &str, apiServer: ApiServer) -> TcpServer {
        let addr = addr.parse().unwrap();
        Self {
            addr: addr,
            reconnectDelay: Duration::from_secs(3),
            isConnected: false,
            apiServer: apiServer,
        }
    }
    ///
    /// main loop of the TcpServer
    /// - listening incoming TCP connections
    /// - handling incoming connections in the separate threads
    pub fn run(this: Arc<Mutex<Self>>) -> Result<(), Box<dyn Error>> {
        debug!("TcpServer.run | starting...");
        info!("TcpServer.run | enter");
        let mut listener: Option<TcpListener> = None;
        let mut tryAgain = 3;
        let addr = this.lock().unwrap().addr;
        let reconnectDelay = this.lock().unwrap().reconnectDelay;
        debug!("TcpServer.run | trying to open...");
        let handle = thread::Builder::new().name("TcpServer tread".to_string()).spawn(move || {
            let mut tcpThreads = vec![];
            debug!("TcpServer.run | started in {:?}", thread::current().name().unwrap());
            while tryAgain > 0 {
                debug!("TcpServer.run | {:?} attempts left", tryAgain);
                listener = match TcpListener::bind(addr) {
                    Ok(stream) => {
                        this.clone().lock().unwrap().isConnected = true;
                        info!("TcpServer.run | opened on: {:?}\n", addr);
                        tryAgain = -1;
                        Some(stream)
                    },
                    Err(err) => {
                        this.clone().lock().unwrap().isConnected = false;
                        debug!("TcpServer.run | binding error on: {:?}\n\tdetailes: {:?}", addr, err);
                        std::thread::sleep(reconnectDelay);
                        None
                    },
                };
                tryAgain -= 1;
            };
            debug!("TcpServer.run | listening for incoming clients");
            match listener {
                Some(listener) => {
                    for result in listener.incoming() {
                        let mut stream = result.unwrap();
                        let me = this.clone();
                        info!("TcpServer.run | incoming connection: {:?}", stream.peer_addr());
                        let threadName = format!("TcpServer tread {:?}", tcpThreads.len());
                        let threadJoinHandle = thread::Builder::new().name(threadName.clone()).spawn(move || {
                                debug!("TcpServer.run | started in {:?}", thread::current().name().unwrap());
                                me.lock().unwrap().listenStream(&mut stream, &threadName);
                            }).unwrap();
                        tcpThreads.push(TcpThread{
                            handle: threadJoinHandle,
                            name: thread::current().name().unwrap().into(),
                        });
                    }
                },
                None => {
                    warn!("TcpServer.run | connection failed");
                },
            };
            info!("TcpServer.run | | waiting while all threads beeng finished: {:?}", tcpThreads.len());
            for tcpThread in tcpThreads {
                info!("main | thread joining: {:?}\n", tcpThread.name);
                tcpThread.handle.join().unwrap();
            }        
        }).unwrap();
        debug!("TcpServer.run | started\n");
        handle.join().unwrap();
        Ok(())
    }
    ///
    /// writing bytes to the TcpStream
    fn writeToTcpStream(stream: &mut TcpStream, bytes: &[u8], threadName: &str) -> Result<(), Box<dyn Error>> {
        match stream.write(bytes) {
            Ok(_) => Ok(()),
            Err(err) => {
                warn!("TcpServer.writeToTcpStream ({}) | write error, data: {:?},\n\tdetales: {:?}", threadName, bytes, err);
                Err(Box::new(err))
            },
        }
    }
    ///
    /// Listening incoming messages from remote client
    fn listenStream(&mut self, stream: &mut TcpStream, threadName: &str) {
        debug!("TcpServer.listenStream ({}) | start to reading messages...", threadName);
        let mut cancel = false;
        self.configureSocket(stream, threadName, Duration::from_secs(10), false);
        while !cancel {
            match self.readAll(stream, threadName) {
                ConnectionStatus::Active(bytes) => {
                    // debug!("TcpServer.listenStream ({}) | received bytes: {:?}", threadName, data);
                    // debug!("TcpServer.listenStream ({}) | received string: {:?}", threadName, String::from_utf8(data));                
                    let result = self.apiServer.build(bytes);
                    if result.keepAlive {
                        cancel = false;
                        // cancel = (result.keepConnection == api_server::KeepConnection::Drop);
                    }
                    let reply = result.data;
                    match Self::writeToTcpStream(stream, &reply, threadName) {
                        Ok(_) => {},
                        Err(err) => {
                            warn!("TcpServer.listenStream ({}) | error sending reply: {:?}", threadName, err);
                            // cancel = true;
                        },
                    };

                },
                ConnectionStatus::Closed => {
                    debug!("TcpServer.listenStream ({}) connection closed", threadName);
                    return
                },
            }
            thread::sleep(Duration::from_millis(500))
        }
        info!("TcpServer.listenStream ({}) | listenStream exit", threadName);
    }
    ///
    /// bytes to be read from socket at once
    const BUF_LEN: usize = 1024 * 4;
    ///
    /// reads all avalible data from the TspStream
    /// - returns Active: if read bytes non zero length without errors
    /// - returns Closed:
    ///    - if read 0 bytes
    ///    - if on error
    fn readAll(&self, stream: &mut TcpStream, threadName: &str) -> ConnectionStatus {
        let mut buf = [0; Self::BUF_LEN];
        let mut result = vec![];
        loop {
            match stream.read(&mut buf) {
                Ok(len) => {
                    debug!("TcpServer.readAll ({}) |     read len: {:?}", threadName, len);
                    result.append(& mut buf[..len].into());
                    if len < Self::BUF_LEN {
                        if len == 0 {
                            return ConnectionStatus::Closed;
                        } else {
                            return ConnectionStatus::Active(result)
                        }
                    }
                },
                Err(err) => {
                    warn!("TcpServer.readAll ({}) | error reading from socket: {:?}", threadName, err);
                    return ConnectionStatus::Closed;
                },
            };
        }
    }
    ///
    /// configuring TCP socket:
    ///  - read timeout (if exceeded reading fails)
    ///  - nonblocking mode (must be false in current case)
    fn configureSocket(&self, stream: &mut TcpStream, threadName: &str, readTimeout: Duration, nonblocking: bool) {
        match stream.set_read_timeout(Some(readTimeout)) {
            Ok(_) => {
                debug!("TcpServer.configureSocket ({}) | set read timeout - ok", threadName);
            },
            Err(err) => {
                warn!("TcpServer.configureSocket ({}) | setting read timeout error: {:?}", threadName, err);
            },
        };
        match stream.set_nonblocking(nonblocking) {
            Ok(_) => {
                debug!("TcpServer.configureSocket ({}) | switching to bloking mode - ok", threadName);
            },
            Err(err) => {
                warn!("TcpServer.configureSocket ({}) | switching to bloking mode error: {:?}", threadName, err);
            },
        };
    }    
}



struct TcpThread {
    handle: JoinHandle<()>,
    name: String,
}

enum ConnectionStatus {
    Active(Vec<u8>),
    Closed,
}