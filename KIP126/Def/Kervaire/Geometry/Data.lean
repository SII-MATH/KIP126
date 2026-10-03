/-! Geometric parameters shared by the literature inputs.
These data alone do not identify an actual framed-manifold model. -/
namespace KIP126.Challenge2

/-- The geometric objects referred to by the external Kervaire results.
The data are selected once in the shared model bindings; the literature part
states results about these exact choices. -/
structure GeometryModel where
  Manifold : Type
  dimension : Manifold → ℕ
  kervaireOne : Manifold → Prop

end KIP126.Challenge2
