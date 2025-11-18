use indexmap::IndexMap;
use sal_core::dbg::Dbg;
use std::{fs::OpenOptions, path::Path};
use crate::{api_service_type::ApiServiceType, conf::LoggingConf};
///
/// The configuration parameters of the API Server
/// - `address` - TCP Server socket address: 'ip:port'
/// - `web_address` - Web-Socket Server address 'ip:port' (optional)
#[derive(Debug, Clone)]
pub struct Config {
    pub address: String,
    pub web_address: Option<String>,
    pub treads: usize,
    pub logging: LoggingConf,
    pub services: IndexMap<String, ServiceConfig>,
}
impl Config {
    pub fn new<P>(path: P) -> Config where P: AsRef<Path> {
        let dbg = Dbg::own("Config");
        let file = OpenOptions::new().read(true).open(path.as_ref()).expect(&format!("{dbg}.new | Can't read config file '{}'", path.as_ref().display()));
        let conf = serde_yaml::from_reader::<_, serde_yaml::Value>(file).expect(&format!("{dbg}.new | Can't read config file '{}'", path.as_ref().display()));
        let services = conf.get("services").expect(&format!("{dbg}.new | 'services' - not found or wrong configuration"));
        let services = services
            .as_sequence()
            .expect(&format!("{dbg}.new | 'services' - wrong configuration"))
            .iter().fold(IndexMap::new(), |mut acc, item| {
                let (key, service) = item.as_mapping().expect(&format!("{dbg}.new | 'services' - wrong configuration")).into_iter()
                    .next().expect(&format!("{dbg}.new | 'services' - wrong configuration"));
                log::info!("{dbg}.new | key: {:#?}", key);
                log::info!("{dbg}.new | service: {:#?}", service);
                let key = key.as_str().expect(&format!("{dbg}.new | 'services':'{:?}' - wrong key", key));
                let service = ServiceConfig::new(key, service);
                if acc.contains_key(&service.name) {
                    panic!("{dbg}.new | Duplicated service name: '{}' in the config: '{}'", &service.name, path.as_ref().display())
                } else {
                    acc.insert(key.to_owned(), service);
                }
                acc
            });
        let logging = conf.get("logging").expect(&format!("{dbg}.new | 'logging' - not found or wrong configuration"));
        let logging: LoggingConf = serde_yaml::from_value(logging.to_owned()).expect(&format!("{dbg}.new | 'logging' - wrong configuration"));
        Config {
            address: conf.get("address").expect(&format!("{dbg}.new | 'address' - not found or wrong configuration"))
                .as_str().expect(&format!("{dbg}.new | 'address' - wrong configuration")).to_owned(),
            web_address: match conf.get("web-address") {
                Some(web_address) => Some(web_address.as_str().expect(&format!("{dbg}.new | 'web-address' - wrong configuration")).to_owned()),
                None => {
                    log::info!("{dbg}.new | 'web-address' - is not specified, by default web-socket is disable");
                    None
                }
            },
            logging,
            treads: match conf.get("threads") {
                Some(threads) => threads.as_i64().expect(&format!("{dbg}.new | 'threads' - wrong configuration")) as usize,
                None => {
                    log::info!("{dbg}.new | 'threads' - is not specified, by default set to 250");
                    250
                }
            },
            services,
        }
    }
}


#[derive(Debug, Clone)]
pub struct ServiceConfig {
    pub name: String,
    pub service_type: ApiServiceType,
    pub path: String,
    pub user: String,
    pub pass: String,
    pub replace_null_with_default: Option<()>,
}
impl ServiceConfig {
    pub fn new(_config_key: &str, conf: &serde_yaml::Value) -> ServiceConfig {
        let dbg = Dbg::own("ServiceConfig");
        log::trace!("{dbg}.new | configMap: {:?}", conf);
        let name = conf.get("name")
            .expect(&format!("{dbg}.new | 'name' - not found or wrong configuration"))
            .as_str().expect(&format!("{dbg}.new | 'name' - wrong configuration"));
        let api_service_type = conf.get("type")
            .expect(&format!("{dbg}.new | 'type' - not found or wrong configuration"))
            .as_str().expect(&format!("{dbg}.new | 'type' - wrong configuration"));
            log::trace!("{dbg}.new | ApiServiceType {:?}", &api_service_type);
        let service_type = serde_yaml::from_str(api_service_type)
            .unwrap_or_else(
                |_| panic!("{dbg}.new | error reading 'type' from config {:?}", &conf),
            );
        let path = conf.get("path")
            .expect(&format!("{dbg}.new | 'path' - not found or wrong configuration"))
            .as_str().expect(&format!("{dbg}.new | 'path' - wrong configuration"));
        let user = conf.get("user")
            .expect(&format!("{dbg}.new | 'user' - not found or wrong configuration"))
            .as_str().expect(&format!("{dbg}.new | 'user' - wrong configuration"));
        let pass = conf.get("pass")
            .expect(&format!("{dbg}.new | 'pass' - not found or wrong configuration"))
            .as_str().expect(&format!("{dbg}.new | 'pass' - wrong configuration"));
        let replace_null_with_default = conf.get("replaceNullWithDefault").map(|_| ());
        log::trace!("{dbg}.new | replace_null_with_default {:?}", replace_null_with_default);
        ServiceConfig {
            name: name.to_string(),
            service_type,
            path: path.to_string(),
            user: user.to_string(),
            pass: pass.to_string(),
            replace_null_with_default,
        }
    }
}