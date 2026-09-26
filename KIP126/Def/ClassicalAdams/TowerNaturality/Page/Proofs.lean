import KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data

namespace KIP126.Classical.Adams
open CategoryTheory MonoidalCategory KIP126.StableHomotopy
universe u v
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] {H : C} (unit : 𝟙_ C ⟶ H)
  {X Y : C} (f : X ⟶ Y)

/-- Downstream representative calculations use the genuine layer map. -/
theorem adamsPageInduced_mkQ (r : ℕ) (hr : 1 ≤ r) (s t : ℤ)
    (a : adamsCycles unit X r hr s t) :
    adamsPageInduced unit f r hr s t
        ((adamsCycleBoundaries unit X r hr s t).mkQ a) =
      (adamsCycleBoundaries unit Y r hr s t).mkQ
        (adamsCycleInduced unit f r hr s t a) := rfl

/-- The SSData E₂ map agrees with the constructed quotient-page map. -/
theorem adamsInternalE2Induced_coordinates (p : ℤ × ℤ)
    (x : (adamsTowerInternalSpectralSequence unit X).Page 2 p) :
    (adamsTowerSSDataPageIso unit Y p.1 p.2 0).hom
        (adamsInternalE2Induced unit f p x) =
      adamsPageInduced unit f 2 (by decide) p.1 p.2
        ((adamsTowerSSDataPageIso unit X p.1 p.2 0).hom x) := by
  change (adamsTowerSSDataPageIso unit Y p.1 p.2 0).toLinearEquiv
    ((adamsTowerSSDataPageIso unit Y p.1 p.2 0).toLinearEquiv.symm _) = _
  exact LinearEquiv.apply_symm_apply _ _

end KIP126.Classical.Adams
