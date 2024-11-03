use super::message_kind::MessageKind;
///
/// Start field
#[derive(Debug, Clone, PartialEq)]
pub struct FieldSyn(pub u8);
impl FieldSyn {
    pub fn len(&self) -> usize {
        size_of::<u8>()
    }
}
///
/// Kind field
#[derive(Clone, PartialEq)]
pub struct FieldKind(pub MessageKind);
impl FieldKind {
    pub fn len(&self) -> usize {
        size_of::<u8>()
    }
}
impl std::fmt::Debug for FieldKind {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "FieldKind({:?})", self.0)
    }
}
///
/// Size field
#[derive(Debug, Clone, PartialEq)]
pub struct FieldSize(pub u32);
impl FieldSize {
    pub fn len(&self) -> usize {
        size_of::<u32>()
    }
}
///
/// Data field
#[derive(Clone, PartialEq)]
pub struct FieldData(pub Vec<u8>);
impl FieldData {
    pub fn len(&self) -> usize {
        self.0.len()
    }
}
impl std::fmt::Debug for FieldData {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "FieldData({:?})", self.0)
    }
}