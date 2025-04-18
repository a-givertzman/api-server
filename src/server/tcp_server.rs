use sal_sync::thread_pool::tread_pool::ThreadPool;
use std::{
    net::{
        SocketAddr, 
        TcpListener, 
    }, 
    sync::{
        Arc, 
        Mutex,
    },     
    thread::{self},
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
        log::debug!("TcpServer.run | starting...");
        log::info!("TcpServer.run | enter");
        let mut listener: Option<TcpListener> = None;
        let mut try_again = 3;
        let addr = this.lock().unwrap().addr;
        let config = this.lock().unwrap().config.clone();
        let reconnect_delay = this.lock().unwrap().reconnect_delay;
        let resources = this.lock().unwrap().resources.clone();
        let tread_pool = ThreadPool::new(Some(config.treads));
        log::debug!("TcpServer.run | trying to open...");
        let handle = thread::Builder::new().name("TcpServer tread".to_string()).spawn(move || {
            log::debug!("TcpServer.run | started in {:?}", thread::current().name().unwrap());
            while try_again > 0 {
                log::debug!("TcpServer.run | {:?} attempts left", try_again);
                listener = match TcpListener::bind(addr) {
                    Ok(stream) => {
                        this.clone().lock().unwrap().is_connected = true;
                        log::info!("TcpServer.run | opened on: {:?}\n", addr);
                        try_again = -1;
                        Some(stream)
                    },
                    Err(err) => {
                        this.clone().lock().unwrap().is_connected = false;
                        log::debug!("TcpServer.run | binding error on: {:?}\n\tdetailes: {:?}", addr, err);
                        std::thread::sleep(reconnect_delay);
                        None
                    },
                };
                try_again -= 1;
            };
            log::debug!("TcpServer.run | listening for incoming clients");
            match listener {
                Some(listener) => {
                    for result in listener.incoming() {
                        let stream = result.unwrap();
                        log::info!("TcpServer.run | incoming connection: {:?}", stream.peer_addr());
                        let peer_addr = stream.peer_addr().unwrap().to_string();
                        let thread_name = format!("TcpServer {:?}", peer_addr);
                        let connection_config = config.clone();
                        let resources = resources.clone();
                        tread_pool.spawn(move || {
                            log::debug!("TcpServer.run | started in {:?}", thread::current().name());
                            stream.set_nodelay(true).unwrap();
                            let mut connection = TcpConnection::new(
                                thread_name, 
                                connection_config.clone(), 
                                stream,
                                resources.clone(),
                            );
                            connection.run();
                            // me.lock().unwrap().listen_stream(&mut stream, &thread_name);
                        });
                        // Self::clean_threads(&mut tcp_threads);                        
                        // tcp_threads.push(TcpThread{
                        //     handle: thread_join_handle,
                        //     name: thread::current().name().unwrap().into(),
                        // });
                    }
                },
                None => {
                    log::warn!("TcpServer.run | connection failed");
                },
            };
            // log::info!("TcpServer.run | | waiting while all threads beeng finished: {:?}", tcp_threads.len());
            // for tcp_thread in tcp_threads {
            //     log::info!("main | thread joining: {:?}\n", tcp_thread.name);
            //     tcp_thread.handle.join().unwrap();
            // }        
        }).unwrap();
        log::debug!("TcpServer.run | started\n");
        handle.join().unwrap();
        log::debug!("TcpServer.run | exit\n");
        Ok(())
    }
    // ///
    // /// 
    // fn clean_threads(threads: &mut Vec<TcpThread>) {
    //     let mut index = 0;
    //     while index < threads.len() {
    //         let thread = &threads[index];
    //         log::debug!("TcpServer.clean_threads | Checking connection '{}' - finished: {}", thread.name, thread.handle.is_finished());
    //         if thread.handle.is_finished() {
    //             let _ = threads.remove(index);
    //         } else {
    //             index += 1;
    //         }

    //     }
    //     log::info!("TcpServer.clean_threads | Remaining threads ({}):", threads.len());
    //     for th in threads {
    //         log::debug!("TcpServer.clean_threads | \tthread: '{}' - is finished: {}", th.name, th.handle.is_finished());
    //     }
    // }
}
// ///
// /// Just contains Tread JoinHandle
// struct TcpThread {
//     name: String,
//     handle: JoinHandle<()>,
// }
