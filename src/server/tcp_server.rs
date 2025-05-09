use sal_core::{dbg::Dbg, error::Error};
use sal_sync::thread_pool::tread_pool::ThreadPool;
use std::{
    net::{
        SocketAddr, 
        TcpListener, 
    }, sync::{
        atomic::{AtomicBool, Ordering}, Arc,
    }, thread::{self}, time::Duration 
};
use crate::{
    config::Config, server::tcp_connection::TcpConnection,
    server::resources::Resources,
};
///
/// 
pub struct TcpServer {
    addr: SocketAddr,
    reconnect_delay: Duration,
    is_connected: Arc<AtomicBool>,
    config: Config,
    resources: Arc<Resources>,
}
//
//
impl TcpServer {
    ///
    /// creates new instance of the TcpServer
    pub fn new(addr: &str, config: Config) -> TcpServer {
        let addr = addr.parse().unwrap();
        Self {
            addr,
            reconnect_delay: Duration::from_secs(3),
            is_connected: Arc::new(AtomicBool::new(false)),
            // api_server,
            config,
            resources: Arc::new(Resources::new("TcpServer"))
        }
    }
    ///
    /// Returns `true` if [TcpServer] is connected
    pub fn is_connected(&self) -> bool {
        self.is_connected.load(Ordering::SeqCst)
    }
    ///
    /// main loop of the [TcpServer]
    /// - listening incoming TCP connections
    /// - handling incoming connections in the separate threads
    pub fn run(&self) -> Result<(), Error> {
        let dbg = Dbg::own("TcpServer");
        log::debug!("{dbg}.run | starting...");
        log::info!("{dbg}.run | enter");
        let mut listener: Option<TcpListener> = None;
        let mut try_again = 3;
        let addr = self.addr;
        let config = self.config.clone();
        let reconnect_delay = self.reconnect_delay;
        let resources = self.resources.clone();
        let is_connected = self.is_connected.clone();
        let tread_pool = ThreadPool::new(&dbg, Some(config.treads));
        log::debug!("{dbg}.run | trying to open...");
        let dbg_clone = dbg.clone();
        let handle = thread::Builder::new().name("TcpServer tread".to_string()).spawn(move || {
            let dbg = dbg_clone;
            log::debug!("{dbg}.run | started in {:?}", thread::current().name().unwrap());
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
                    for result in listener.incoming() {
                        let stream = result.unwrap();
                        log::info!("{dbg}.run | incoming connection: {:?}", stream.peer_addr());
                        let peer_addr = stream.peer_addr().unwrap().to_string();
                        let thread_name = format!("TcpServer {:?}", peer_addr);
                        let connection_config = config.clone();
                        let resources = resources.clone();
                        let dbg_ = dbg.clone();
                        let result = tread_pool.spawn(move || {
                            log::debug!("{dbg_}.run | started in {:?}", thread::current().name());
                            stream.set_nodelay(true).unwrap();
                            let mut connection = TcpConnection::new(
                                thread_name, 
                                connection_config.clone(), 
                                stream,
                                resources.clone(),
                            );
                            connection.run();
                            Ok(())
                        });
                        if let Err(err) = result {
                            log::warn!("{dbg}.run | spawn job error: {:?}", err);
                        }
                    }
                },
                None => {
                    log::warn!("{dbg}.run | connection failed");
                },
            };
        }).unwrap();
        log::debug!("{dbg}.run | started\n");
        handle.join().unwrap();
        log::debug!("{dbg}.run | exit\n");
        Ok(())
    }
}
