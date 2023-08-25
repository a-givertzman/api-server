use log::{
    // debug,
    trace
};

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
        let configYaml = fs::read_to_string(&path).expect(&format!("Error read file {}", path));
        let yamlVec = YamlLoader::load_from_str(&configYaml).unwrap();
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
    }
}


#[derive(Debug, Clone)]
pub struct ServiceConfig {
    pub name: String,
    pub serviceType: ApiServiceType,
    pub path: String,
    pub user: String,
    pub pass: String,
}
impl ServiceConfig {
    pub fn new(_configKey: &str, configMap: &LinkedHashMap<Yaml, Yaml>) -> ServiceConfig {
        trace!("DataBaseConfig | configMap: {:?}", configMap);
        let name = &configMap[&Yaml::String("name".to_string())]
            .as_str()
            .expect(
                format!("DataBaseConfig | error reading 'name' from config {:?}", &configMap).as_str(),
            );
        let serviceType = serde_json::from_str(
            &configMap[&Yaml::String("type".to_string())]
                .as_str()
                .expect(
                    format!("DataBaseConfig | error reading 'type' from config {:?}", &configMap).as_str(),
                )
        ).expect(
            format!("DataBaseConfig | error reading 'type' from config {:?}", &configMap).as_str(),
        );
        let path = &configMap[&Yaml::String("path".to_string())]
            .as_str()
            .expect(
                format!("DataBaseConfig | error reading 'path' from config {:?}", &configMap).as_str(),
            );
        let user = &configMap[&Yaml::String("user".to_string())]
            .as_str()
            .expect(
                format!("DataBaseConfig | error reading 'user' from config {:?}", &configMap).as_str(),
            );
        let pass = &configMap[&Yaml::String("pass".to_string())]
            .as_str()
            .expect(
                format!("DataBaseConfig | error reading 'pass' from config {:?}", &configMap).as_str(),
            );
        ServiceConfig {
            name: name.to_string(),
            serviceType: serviceType,
            path: path.to_string(),
            user: user.to_string(),
            pass: pass.to_string(),
        }
    }
}