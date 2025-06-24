use sal_core::{dbg::Dbg, error::Error};
use sal_sync::{sync::Handles, thread_pool::Scheduler};
use std::{
    net::{
        SocketAddr, 
        TcpListener, 
    }, sync::{
        atomic::{AtomicBool, Ordering}, Arc,
    }, thread::{self}, time::Duration 
};
use crate::{
    config::Config, server::{WebConnection, Resources},
};
///
/// 
pub struct WebServer {
    addr: SocketAddr,
    reconnect_delay: Duration,
    is_connected: Arc<AtomicBool>,
    config: Config,
    resources: Arc<Resources>,
    scheduler: Scheduler,
    handles: Handles<()>,
    dbg: Dbg,
}
//
//
impl WebServer {
    ///
    /// creates new instance of the WebServer
    pub fn new(addr: &str, config: Config, scheduler: Scheduler) -> WebServer {
        let addr = addr.parse().unwrap();
        let dbg = Dbg::own("WebServer");
        Self {
            addr,
            reconnect_delay: Duration::from_secs(3),
            is_connected: Arc::new(AtomicBool::new(false)),
            config,
            resources: Arc::new(Resources::new(&dbg)),
            scheduler,
            handles: Handles::new(&dbg),
            dbg,
        }
    }
    ///
    /// Returns `true` if [WebServer] is connected
    #[allow(unused)]
    pub fn is_connected(&self) -> bool {
        self.is_connected.load(Ordering::SeqCst)
    }
    ///
    /// main loop of the [WebServer]
    /// - listening incoming TCP connections
    /// - handling incoming connections in the separate threads
    pub fn run(&self) -> Result<(), Error> {
        let dbg = self.dbg.clone();
        log::debug!("{dbg}.run | starting...");
        log::info!("{dbg}.run | enter");
        let mut listener: Option<TcpListener> = None;
        let mut try_again = 3;
        let addr = self.addr;
        let config = self.config.clone();
        let reconnect_delay = self.reconnect_delay;
        let resources = self.resources.clone();
        let is_connected = self.is_connected.clone();
        let scheduler = self.scheduler.clone();
        log::debug!("{dbg}.run | trying to open...");
        let dbg_clone = dbg.clone();
        let handle = self.scheduler.spawn(move || {
            let dbg = dbg_clone;
            log::debug!("{dbg}.run | started");
            while try_again > 0 {
                log::debug!("{dbg}.run | {:?} attempts left", try_again);
                listener = match TcpListener::bind(addr) {
                    Ok(stream) => {
                        is_connected.store(true, Ordering::SeqCst);
                        log::info!("{dbg}.run | opened on: {:?}\n", addr);
                        try_again = -1;
                        Some(stream)
                    },
                    Err(err) => {
                        is_connected.store(false, Ordering::SeqCst);
                        log::debug!("{dbg}.run | binding error on: {:?}\n\tdetailes: {:?}", addr, err);
                        std::thread::sleep(reconnect_delay);
                        None
                    },
                };
                try_again -= 1;
            };
            log::debug!("{dbg}.run | listening for incoming clients");
            match listener {
                Some(listener) => {
                    for socket in listener.incoming() {
                        match socket {
                            Ok(stream) => {
                                let peer_addr = stream.peer_addr().map_or_else(|_| "-".to_string(), |addr| addr.to_string());
                                if let Err(err) = stream.set_nodelay(true) {
                                    log::warn!("{dbg}.run | TcpStream.set_nodelay error: {:?}", err);
                                }
                                let stream = tungstenite::WebSocket::from_raw_socket(stream, tungstenite::protocol::Role::Server, None);
                                log::info!("{dbg}.run | incoming connection: {:?}", peer_addr);
                                let thread_name = format!("TcpServer-{:?}", peer_addr);
                                let connection = WebConnection::new(
                                    thread_name, 
                                    config.clone(), 
                                    stream,
                                    resources.clone(),
                                    scheduler.clone(),
                                );
                                if let Err(err) = connection.run() {
                                    log::warn!("{dbg}.run | run connection error: {:?}", err);
                                }
                                // match  {
                                //     Ok(stream) => {
                                //     }
                                //     Err(err) => {
                                //         log::warn!("{dbg}.run | Accept Websocket error: {:?}", err);
                                //     }
                                // }
                            }
                            Err(err) => log::warn!("{dbg}.run | incoming failed: {:?}", err),
                        }
                    }
                },
                None => {
                    log::warn!("{dbg}.run | connection failed");
                },
            };
            log::debug!("{dbg}.run | exit\n");
            Ok(())
        });
        match handle {
            Ok(handle) => {
                self.handles.push(handle);
                log::debug!("{dbg}.run | started\n");
                Ok(())
            }
            Err(err) => Err(Error::new(&dbg, "run").pass(err.to_string())),
        }
    }
    ///
    /// Waits for all JoinHandles being joined
    pub fn wait(&self) -> Result<(), Error> {
        self.handles.wait()
    }
}
