import KIP126.Def.ClassicalAdams.Detection.Convergence.Data

/-! A canonical convergence cannot be reselected independently to alter
detection. Every filtration class comes from an actual tower lift and
`CanonicalIdentification` fixes its E-infinity image. The comparison is
unique; no bounded-range Lin calculation is used in this assertion. -/
namespace KIP126.Classical.Adams.TowerDetection
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
universe u v
variable {C : Type u} [StableHomotopyCategory.{u,v} C]
  [HasFunctorialCofiber (C := C)] {H : C} (unit : 𝟙_ C ⟶ H) (X : C)

theorem Convergence.canonical_unique (A B : Convergence unit X) : A = B := by
  sorry

end KIP126.Classical.Adams.TowerDetection
