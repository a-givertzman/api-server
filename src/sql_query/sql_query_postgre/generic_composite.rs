use serde::Serialize;
use bytes::BytesMut;
use postgres::types::{Type, to_sql_checked, FromSql, self};

///
/// Generic deserialize Composite type into [ToSql]
#[derive(Debug, Serialize)]
pub struct GenericComposite(String);

impl postgres::types::ToSql for GenericComposite {
    ///
    fn to_sql(&self, _ty: &types::Type, out: &mut BytesMut) -> Result<types::IsNull, Box<dyn std::error::Error + Sync + Send>> {
        if self.0.is_empty() {
            Ok(types::IsNull::Yes)
        } else {
            out.extend_from_slice(self.0.as_bytes());
            Ok(types::IsNull::No)
        }
    }
    ///
    fn accepts(_ty: &types::Type) -> bool { true }
    //
    to_sql_checked!();
}
//
//
impl FromSql<'_> for GenericComposite {
    ///
    fn from_sql(
        _sql_type: &Type, 
        value: &[u8]
    ) -> Result<Self, Box<dyn std::error::Error + Sync + Send>> {
        match value {
            // b"variant_a" => Ok(MyEnum::VariantA),
            // b"variant_b" => Ok(MyEnum::VariantB),
            _ => {
                let str_value = String::from_utf8(value.into()).unwrap();
                Ok(GenericComposite {0: str_value})
            },
        }
    }
    ///
    fn accepts(ty: &Type) -> bool {
        ty.name().contains("enum")
    }
}
