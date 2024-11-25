use super::resource_kind::ResourceKind;
///
/// The resource of kind 
///  - Postgres - stores postgres connection
pub enum Resource {
    Postgres(postgres::Client),
}
//
//
impl Resource {
    ///
    /// Returns kind of the variant
    pub fn kind(&self) -> ResourceKind {
        match self {
            Resource::Postgres(_) => ResourceKind::Postgres,
        }
    }
    ///
    /// Returns extracted `Postgres` or panic
    pub fn as_postgres(self) -> postgres::Client {
        match self {
            Resource::Postgres(client) => client,
            // _ => panic!("Resource.as_postgres | Can't be extracted as Postgres, because it: {:?}", self)
        }
    }
}
//
//
impl std::fmt::Debug for Resource {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Postgres(_) => write!(f, "Resource::Postgres"),
        }
    }
}
//
//
impl Clone for Resource {
    fn clone(&self) -> Self {
        panic!("Resource.clone | Not implemented")
    }
}