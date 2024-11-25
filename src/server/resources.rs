use crate::server::{resource::Resorce, resource_kind::ResorceKind};
///
/// Shared stored resources for all server services
pub struct Resources {
    inner: Vec<Vec<Resorce>>,
}
//
//
impl Resources {
    ///
    /// Returns [Resources] new instance
    pub fn new() -> Self {
        Self {
            inner: (0..ResorceKind::len()).map(|_| vec![]).collect(),
        }
    }
    ///
    /// Returns [Resource] of specified `kind` if exists
    pub fn pop(&mut self, kind: ResorceKind) -> Option<Resorce> {
        match kind {
            ResorceKind::Postgres => {
                if let Some(r) = self.inner.get_mut(kind as usize) {
                    return r.pop();
                }
            }
        }
        None
    }
    ///
    /// Adds [Resource] to the collection
    pub fn push(&mut self, resource: Resorce) {
        self.inner[resource.kind() as usize].push(resource);
    }
}