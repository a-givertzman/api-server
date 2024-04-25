use log::{trace, debug};
use std::{collections::HashMap, fs, path::Path};
use linked_hash_map::LinkedHashMap;
use yaml_rust::{YamlLoader, Yaml};

use crate::api_service_type::ApiServiceType;


#[derive(Debug, Clone)]
pub struct Config {
    pub address: String,
    pub services: HashMap<String, ServiceConfig>,
}
impl Config {
    pub fn new<P>(path: P) -> Config where P: AsRef<Path> {
        match fs::read_to_string(&path) {
            Ok(yaml_string) => {
                let yaml_vec = YamlLoader::load_from_str(&yaml_string).unwrap();
                let yaml_doc = &yaml_vec[0];
                let mut services = HashMap::new();
                let services_vec = yaml_doc["services"]
                    .as_vec()
                    .expect(
                        format!("Config | error reading 'services' from config file {:?}", path.as_ref()).as_str(),
                    );
                for item in services_vec {
                    trace!("Config | service config item: {:?}", item);
                    let service_config_map_enty = item.as_hash().expect(
                        format!("Config | error reading database config {:?}", &item).as_str(),
                    ).iter().next().unwrap();
                    let service_config_key = service_config_map_enty.0.as_str().unwrap();
                    let service_config_map = service_config_map_enty.1.as_hash().unwrap();
                    // debug!("Config | dataBaseConfigMap: {:?}", dataBaseConfigMap);
                    let service_config = ServiceConfig::new(service_config_key, service_config_map);
                    if services.contains_key(&service_config.name) {
                        panic!("Duplicated service name: '{}' in the config: '{}'", &service_config.name, path.as_ref().display())
                    } else {
                        // services.insert((&serviceConfig.name).clone(), serviceConfig);
                        services.insert(service_config.name.clone(), service_config);
                    }
                }
                Config {
                    address: String::from(
                        yaml_doc["address"]
                            .as_str()
                            .expect(
                                format!("Config | error reading 'address' from config file {:?}", path.as_ref()).as_str(),
                            )
                    ),
                    services,
                }
            },
            Err(err) => {
                // warn!("File {} reading error: {:?}", path, err);
                panic!("File {} reading error: {:?}", path.as_ref().display(), err)
            },
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
    pub fn new(_config_key: &str, config_map: &LinkedHashMap<Yaml, Yaml>) -> ServiceConfig {
        trace!("ServiceConfig.new | configMap: {:?}", config_map);
        let name = &config_map[&Yaml::String("name".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'name' from config {:?}", &config_map).as_str(),
            );
        let api_service_type_config = config_map[&Yaml::String("type".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'type' from config {:?}", &config_map).as_str(),
            );
            debug!("ServiceConfig.new | apiServiceTypeConfig {:?}", &api_service_type_config);
        let service_type = serde_yaml::from_str(
            api_service_type_config,
        ).expect(
            format!("ServiceConfig.new | error reading 'type' from config {:?}", &config_map).as_str(),
        );
        let path = &config_map[&Yaml::String("path".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'path' from config {:?}", &config_map).as_str(),
            );
        let user = &config_map[&Yaml::String("user".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'user' from config {:?}", &config_map).as_str(),
            );
        let pass = &config_map[&Yaml::String("pass".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'pass' from config {:?}", &config_map).as_str(),
            );
        let replace_null_with_default = match &config_map.get(&Yaml::String("replaceNullWithDefault".to_string())) {
            Some(_) => Some(()),
            None => None,
        };
        debug!("ServiceConfig.new | replaceNullWithDefault {:?}", replace_null_with_default);
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