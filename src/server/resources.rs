use sal_core::dbg::Dbg;
use crate::server::{resource::Resource, resource_kind::ResourceKind};
///
/// Shared stored resources for all server services
pub struct Resources {
    dbgid: Dbg,
    inner: Vec<Vec<Resource>>,
}
//
//
impl Resources {
    ///
    /// Returns [Resources] new instance
    pub fn new(parent: impl Into<String>) -> Self {
        Self {
        dbgid: Dbg::new(parent, "Resources"),
        inner: (0..ResourceKind::len()).map(|_| vec![]).collect(),
        }
    }
    ///
    /// Returns [Resource] of specified `kind` if exists
    pub fn pop(&mut self, kind: ResourceKind) -> Option<Resource> {
        match kind {
            ResourceKind::Postgres => {
                if let Some(r) = self.inner.get_mut(kind as usize) {
                    return r.pop();
                }
            }
        }
        None
    }
    ///
    /// Adds [Resource] to the collection
    pub fn push(&mut self, resource: Resource) {
        self.inner[resource.kind() as usize].push(resource);
        log::debug!("{}.push | Resources: {}", self.dbgid, self.inner.len());
    }
}