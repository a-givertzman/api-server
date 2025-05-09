use coco::Stack;
use dashmap::DashMap;
use sal_core::dbg::Dbg;
use crate::server::{resource::Resource, resource_kind::ResourceKind};
///
/// Shared stored resources for all server services
pub struct Resources {
    dbg: Dbg,
    inner: DashMap<ResourceKind, Stack<Resource>>,
}
//
//
impl Resources {
    ///
    /// Returns [Resources] new instance
    pub fn new(parent: impl Into<String>) -> Self {
        Self {
            dbg: Dbg::new(parent, "Resources"),
            inner: DashMap::from_iter(
                ResourceKind::values().iter().map(|kind| (*kind, Stack::new())),
            ),
        }
    }
    ///
    /// Returns [Resource] of specified `kind` if exists
    pub fn pop(&self, kind: ResourceKind) -> Option<Resource> {
        match kind {
            ResourceKind::Postgres => {
                if let Some(r) = self.inner.get_mut(&kind) {
                    return r.pop();
                }
            }
        }
        None
    }
    ///
    /// Adds [Resource] to the collection
    pub fn push(&self, resource: Resource) {
        if let Some(res) = self.inner.get_mut(&resource.kind()) {
            res.push(resource);
        }
        log::debug!("{}.push | Resources: {}", self.dbg, self.inner.len());
    }
}