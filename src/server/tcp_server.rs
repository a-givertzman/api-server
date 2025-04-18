use log::{
    info,
    // trace,
    debug,
    warn,
};
use std::{
    net::{
        SocketAddr, 
        TcpListener, 
    }, 
    sync::{
        Arc, 
        Mutex,
    },     
    thread::{self, JoinHandle},
    time::Duration,
    error::Error, 
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
    pub is_connected: bool,
    // api_server: ApiServer,
    config: Config,
    resources: Arc<Mutex<Resources>>,
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
            is_connected: false,
            // api_server,
            config,
            resources: Arc::new(Mutex::new(Resources::new("TcpServer"))),
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
        let mut try_again = 3;
        let addr = this.lock().unwrap().addr;
        let config = this.lock().unwrap().config.clone();
        let reconnect_delay = this.lock().unwrap().reconnect_delay;
        let resources = this.lock().unwrap().resources.clone();
        debug!("TcpServer.run | trying to open...");
        let handle = thread::Builder::new().name("TcpServer tread".to_string()).spawn(move || {
            let mut tcp_threads = vec![];
            debug!("TcpServer.run | started in {:?}", thread::current().name().unwrap());
            while try_again > 0 {
                debug!("TcpServer.run | {:?} attempts left", try_again);
                listener = match TcpListener::bind(addr) {
                    Ok(stream) => {
                        this.clone().lock().unwrap().is_connected = true;
                        info!("TcpServer.run | opened on: {:?}\n", addr);
                        try_again = -1;
                        Some(stream)
                    },
                    Err(err) => {
                        this.clone().lock().unwrap().is_connected = false;
                        debug!("TcpServer.run | binding error on: {:?}\n\tdetailes: {:?}", addr, err);
                        std::thread::sleep(reconnect_delay);
                        None
                    },
                };
                try_again -= 1;
            };
            debug!("TcpServer.run | listening for incoming clients");
            match listener {
                Some(listener) => {
                    for result in listener.incoming() {
                        let stream = result.unwrap();
                        info!("TcpServer.run | incoming connection: {:?}", stream.peer_addr());
                        let peer_addr = stream.peer_addr().unwrap().to_string();
                        let thread_name = format!("TcpServer {:?}", peer_addr);
                        let connection_config = config.clone();
                        let resources = resources.clone();
                        let thread_join_handle = thread::Builder::new().name(thread_name.clone()).spawn(move || {
                            debug!("TcpServer.run | started in {:?}", thread::current().name().unwrap());
                            stream.set_nodelay(true).unwrap();
                            let mut connection = TcpConnection::new(
                                thread_name, 
                                connection_config.clone(), 
                                stream,
                                resources.clone(),
                            );
                            connection.run();
                            // me.lock().unwrap().listen_stream(&mut stream, &thread_name);
                        }).unwrap();
                        Self::clean_threads(&mut tcp_threads);                        
                        tcp_threads.push(TcpThread{
                            handle: thread_join_handle,
                            name: thread::current().name().unwrap().into(),
                        });
                    }
                },
                None => {
                    warn!("TcpServer.run | connection failed");
                },
            };
            info!("TcpServer.run | | waiting while all threads beeng finished: {:?}", tcp_threads.len());
            for tcp_thread in tcp_threads {
                info!("main | thread joining: {:?}\n", tcp_thread.name);
                tcp_thread.handle.join().unwrap();
            }        
        }).unwrap();
        debug!("TcpServer.run | started\n");
        handle.join().unwrap();
        debug!("TcpServer.run | exit\n");
        Ok(())
    }
    ///
    /// 
    fn clean_threads(threads: &mut Vec<TcpThread>) {
        let mut index = 0;
        while index < threads.len() {
            let thread = &threads[index];
            log::debug!("TcpServer.clean_threads | Checking connection '{}' - finished: {}", thread.name, thread.handle.is_finished());
            if thread.handle.is_finished() {
                let _ = threads.remove(index);
            } else {
                index += 1;
            }

        }
        log::info!("TcpServer.clean_threads | Remaining threads ({}):", threads.len());
        for th in threads {
            log::debug!("TcpServer.clean_threads | \tthread: '{}' - is finished: {}", th.name, th.handle.is_finished());
        }
    }
}
///
/// Just contains Tread JoinHandle
struct TcpThread {
    name: String,
    handle: JoinHandle<()>,
}
