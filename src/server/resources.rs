use crate::server::{resource::Resorce, resource_kind::ResorceKind};
///
/// Shared stored resources for all server services
pub struct Resources {
    inner: Vec<Resorce>,
}
//
//
impl Resources {
    ///
    /// Returns [Resources] new instance
    pub fn new() -> Self {
        Self { inner: vec![] }
    }
    ///
    /// Returns [Resource] of specified `kind` if exists
    pub fn pop(&mut self, kind: ResorceKind) -> Option<Resorce> {
        match kind {
            ResorceKind::Postgres => {
                for i in 0..self.inner.len() {
                    if let Some(kind) = self.inner.get(i).map(|r| r.kind()) {
                        if kind == ResorceKind::Postgres {
                            return Some(self.inner.remove(i));
                        }
                    }
                }
            }
        }
        None
    }
    ///
    /// Adds [Resource] to the collection
    pub fn push(&mut self, resource: Resorce) {
        self.inner.push(resource);
    }
}