import KIP126.Def.Synthetic.EInfty.Shift.Canonical.Predicates

/-! Internal construction obligations for weight reindexing. These are
properties of the actual tower maps, not statements supplied by BHS. -/
namespace KIP126.Synthetic.SpectralSequence

open CategoryTheory KIP126.StableHomotopy KIP126.Synthetic.Context
universe u v
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Syn} {unit : S_0_0 ⟶ H}
  {F : SyntheticAdamsFamily Syn}

/-- Prove preservation of the cycle and boundary towers, descend the actual
weight-shift map and its inverse to E∞, and verify their inverse equations.
The full-category naturality proof belongs to Main's internal consequences. -/
theorem canonicalWeightShift_exists (P : TowerPresentation unit F) :
    ∃ S : EInftyWeightShift F, CanonicalWeightShift P S := by
  sorry

end KIP126.Synthetic.SpectralSequence
