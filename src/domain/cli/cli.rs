use clap::Parser;
///
/// Application cli arguments
#[derive(Parser, Debug)]
#[command(version = "0.1.14", about = "API Server | Wrapping databases, executable and python scripts plugins", long_about = None)]
pub struct Cli {
    /// Optional path to configuration file, if omitted 'config.yaml' from current dir will be used
    #[arg(short, long)]
    pub config: Option<String>,
}