use super::message_kind::MessageKind;
///
/// Start field
#[derive(Debug, Clone, PartialEq)]
pub struct FieldSyn(pub u8);
///
/// Kind field
#[derive(Debug, Clone, PartialEq)]
pub struct FieldKind(pub MessageKind);
impl FieldKind {
    pub fn len(&self) -> usize {
        1
    }
}
///
/// Size field
#[derive(Debug, Clone, PartialEq)]
pub struct FieldSize(pub u32);
impl FieldSize {
    pub fn len(&self) -> usize {
        3
    }
}
///
/// Data field
#[derive(Debug, Clone, PartialEq)]
pub struct FieldData(pub Vec<u8>);
impl FieldData {
    pub fn len(&self) -> usize {
        self.0.len()
    }
}
