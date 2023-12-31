use log::{trace, debug, warn};

use std::{fs, collections::HashMap};
use linked_hash_map::LinkedHashMap;
use yaml_rust::{YamlLoader, Yaml};

use crate::api_service_type::ApiServiceType;


#[derive(Debug, Clone)]
pub struct Config {
    pub address: String,
    pub services: HashMap<String, ServiceConfig>,
}
impl Config {
    pub fn new(path: &str) -> Config {
        match fs::read_to_string(&path) {
            Ok(yamlString) => {
                let yamlVec = YamlLoader::load_from_str(&yamlString).unwrap();
                let yamlDoc = &yamlVec[0];
                let mut services = HashMap::new();
                let servicesVec = yamlDoc["services"]
                    .as_vec()
                    .expect(
                        format!("Config | error reading 'services' from config file {:?}", &path).as_str(),
                    );
                for item in servicesVec {
                    trace!("Config | service config item: {:?}", item);
                    let serviceConfigMapEnty = item.as_hash().expect(
                        format!("Config | error reading database config {:?}", &item).as_str(),
                    ).iter().next().unwrap();
                    let serviceConfigKey = serviceConfigMapEnty.0.as_str().unwrap();
                    let serviceConfigMap = serviceConfigMapEnty.1.as_hash().unwrap();
                    // debug!("Config | dataBaseConfigMap: {:?}", dataBaseConfigMap);
                    let serviceConfig = ServiceConfig::new(serviceConfigKey, serviceConfigMap);
                    if services.contains_key(&serviceConfig.name) {
                        panic!("Duplicated service name: \"{}\" in the config: \"{}\"", &serviceConfig.name, path)
                    } else {
                        // services.insert((&serviceConfig.name).clone(), serviceConfig);
                        services.insert(serviceConfig.name.clone(), serviceConfig);
                    }
                }
                Config {
                    address: String::from(
                        yamlDoc["address"]
                            .as_str()
                            .expect(
                                format!("Config | error reading 'address' from config file {:?}", &path).as_str(),
                            )
                    ),
                    services,
                }
            },
            Err(err) => {
                // warn!("File {} reading error: {:?}", path, err);
                panic!("File {} reading error: {:?}", path, err)
            },
        }
    }
}


#[derive(Debug, Clone)]
pub struct ServiceConfig {
    pub name: String,
    pub serviceType: ApiServiceType,
    pub path: String,
    pub user: String,
    pub pass: String,
    pub replaceNullWithDefault: Option<()>,
}
impl ServiceConfig {
    pub fn new(_configKey: &str, configMap: &LinkedHashMap<Yaml, Yaml>) -> ServiceConfig {
        trace!("ServiceConfig.new | configMap: {:?}", configMap);
        let name = &configMap[&Yaml::String("name".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'name' from config {:?}", &configMap).as_str(),
            );
        let apiServiceTypeConfig = configMap[&Yaml::String("type".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'type' from config {:?}", &configMap).as_str(),
            );
            debug!("ServiceConfig.new | apiServiceTypeConfig {:?}", &apiServiceTypeConfig);
        let serviceType = serde_yaml::from_str(
            apiServiceTypeConfig,
        ).expect(
            format!("ServiceConfig.new | error reading 'type' from config {:?}", &configMap).as_str(),
        );
        let path = &configMap[&Yaml::String("path".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'path' from config {:?}", &configMap).as_str(),
            );
        let user = &configMap[&Yaml::String("user".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'user' from config {:?}", &configMap).as_str(),
            );
        let pass = &configMap[&Yaml::String("pass".to_string())]
            .as_str()
            .expect(
                format!("ServiceConfig.new | error reading 'pass' from config {:?}", &configMap).as_str(),
            );
        let replaceNullWithDefault = match &configMap.get(&Yaml::String("replaceNullWithDefault".to_string())) {
            Some(_) => Some(()),
            None => None,
        };
        debug!("ServiceConfig.new | replaceNullWithDefault {:?}", replaceNullWithDefault);
        ServiceConfig {
            name: name.to_string(),
            serviceType: serviceType,
            path: path.to_string(),
            user: user.to_string(),
            pass: pass.to_string(),
            replaceNullWithDefault: replaceNullWithDefault,
        }
    }
}