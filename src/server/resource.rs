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
}
