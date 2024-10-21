///
/// 
pub trait FromBytes: Sized {
    fn from_bytes(bytes: &[u8]) -> Result<Self, String>;
}
///
/// 
pub trait FromBytesLe: Sized {
    fn from_bytes_le(bytes: &[u8]) -> Result<Self, String>;
}
///
/// 
pub trait FromBytesBe: Sized {
    fn from_bytes_be(bytes: &[u8]) -> Result<Self, String>;
}
