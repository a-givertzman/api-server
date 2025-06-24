///
/// The kind of the resource
///  - Postgres - stores postgres connection
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub enum ResourceKind {
    Postgres,
}
//
//
impl ResourceKind {
    ///
    /// Number of [ResourceKind] variants
    #[allow(unused)]
    pub fn len() -> usize {
        1
    }
    ///
    /// Returns all ordered [ResourceKind] variants
    pub fn values() -> Vec<Self> {
        vec![
            Self::Postgres,
        ]
    }
}
