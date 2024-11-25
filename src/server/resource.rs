use super::resource_kind::ResorceKind;

///
/// The resource of kind 
///  - Postgres - stores postgres connection
pub enum Resorce {
    Postgres(postgres::Client),
}
//
//
impl Resorce {
    ///
    /// Returns kind of the variant
    pub fn kind(&self) -> ResorceKind {
        match self {
            Resorce::Postgres(_) => ResorceKind::Postgres,
        }
    }
    ///
    /// Returns extracted `Postgres` or panic
    pub fn as_postgres(self) -> postgres::Client {
        match self {
            Resorce::Postgres(client) => client,
            _ => panic!("Resorce.as_postgres | Can't be extracted as Postgres, because it: {:?}", self)
        }
    }
}
//
//
impl std::fmt::Debug for Resorce {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Postgres(_) => write!(f, "Resorce::Postgres"),
        }
    }
}
//
//
impl Clone for Resorce {
    fn clone(&self) -> Self {
        panic!("Resorce.clone | Not implemented")
    }
}