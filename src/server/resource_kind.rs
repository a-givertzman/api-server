///
/// The kind of the resource
///  - Postgres - stores postgres connection
#[repr(usize)]
#[derive(Debug, PartialEq, Eq)]
pub enum ResorceKind {
    Postgres,
}
//
//
impl ResorceKind {
    ///
    /// Returns all ordered [ResorceKind] variants
    pub fn len() -> usize {
        1
    }
}
