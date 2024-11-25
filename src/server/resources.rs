use api_tools::debug::dbg_id::DbgId;
use crate::server::{resource::Resource, resource_kind::ResourceKind};
///
/// Shared stored resources for all server services
pub struct Resources {
    dbgid: DbgId,
    inner: Vec<Vec<Resource>>,
}
//
//
impl Resources {
    ///
    /// Returns [Resources] new instance
    pub fn new(dbgid: &DbgId) -> Self {
        Self {
        dbgid: DbgId(format!("{}/Resources", dbgid)),
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