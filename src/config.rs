use std::fs;

use linked_hash_map::LinkedHashMap;
use log::debug;
use yaml_rust::{YamlLoader, Yaml};


#[derive(Debug, Clone)]
pub struct Config {
    pub address: String,
    pub dataBases: Vec<DataBaseConfig>,
}
impl Config {
    pub fn new(path: &str) -> Config {
        let configYaml = fs::read_to_string(&path).expect(&format!("Error read file {}", path));
        let yamlVec = YamlLoader::load_from_str(&configYaml).unwrap();
        let yamlDoc = &yamlVec[0];
        let mut dataBases = vec![];
        let dataBasesVec = yamlDoc["databases"]
            .as_vec()
            .expect(
                format!("Config | error reading 'databases' from config file {:?}", &path).as_str(),
            );
        for item in dataBasesVec {
            debug!("Config | database config item: {:?}", item);
            let dataBaseConfigMapEnty = item.as_hash().expect(
                format!("Config | error reading database config {:?}", &item).as_str(),
            ).iter().next().unwrap();
            let dataBaseConfigKey = dataBaseConfigMapEnty.0.as_str().unwrap();
            let dataBaseConfigMap = dataBaseConfigMapEnty.1.as_hash().unwrap();
            // debug!("Config | dataBaseConfigMap: {:?}", dataBaseConfigMap);
            let dataBaseConfig = DataBaseConfig::new(dataBaseConfigKey, dataBaseConfigMap);
            dataBases.push(dataBaseConfig);
        }
        Config {
            address: String::from(
                yamlDoc["address"]
                    .as_str()
                    .expect(
                        format!("Config | error reading 'address' from config file {:?}", &path).as_str(),
                    )
            ),
            dataBases: dataBases,
        }
    }
}


#[derive(Debug, Clone)]
pub struct DataBaseConfig {
    path: String,
    name: String,
    user: String,
    pass: String,
}
impl DataBaseConfig {
    pub fn new(configKey: &str, configMap: &LinkedHashMap<Yaml, Yaml>) -> DataBaseConfig {
        debug!("DataBaseConfig | configMap: {:?}", configMap);
        let path = &configMap[&Yaml::String("path".to_string())]
            .as_str()
            .expect(
                format!("DataBaseConfig | error reading 'path' from config {:?}", &configMap).as_str(),
            );
        let name = &configMap[&Yaml::String("name".to_string())]
            .as_str()
            .expect(
                format!("DataBaseConfig | error reading 'name' from config {:?}", &configMap).as_str(),
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
        DataBaseConfig {
            path: path.to_string(),
            name: name.to_string(),
            user: user.to_string(),
            pass: pass.to_string(),
        }
    }
}