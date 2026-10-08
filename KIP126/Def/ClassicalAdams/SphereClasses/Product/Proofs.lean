import KIP126.Def.ClassicalAdams.SphereClasses.Product.Data

/-! Equality transport and the defining cobar formula for the internal E₂ product. -/
namespace KIP126.Classical.Adams.Sphere.Internal
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
universe u v
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H)

/-- Equality transport commutes with the canonical comparison of the same pages. -/
theorem reindex_comparison {s t s' t' : ℕ} (hs : s = s') (ht : t = t')
    (x : MilnorCohomology.Cohomology H M s t) :
    reindex H hs ht (MilnorCohomology.comparison H M s t x) =
      MilnorCohomology.comparison H M s' t'
        (MilnorCohomology.cohomologyReindex H M hs ht x) := by
  subst s'
  subst t'
  rfl

/-- The transported product of two cobar classes is their cobar cup product. -/
theorem product_comparison {s t s' t' : ℕ}
    (x : MilnorCohomology.Cohomology H M s t)
    (y : MilnorCohomology.Cohomology H M s' t') :
    product H M (MilnorCohomology.comparison H M s t x)
      (MilnorCohomology.comparison H M s' t' y) =
      MilnorCohomology.comparison H M (s + s') (t + t')
        (MilnorCohomology.cup H M x y) := by
  unfold product
  rw [LinearEquiv.symm_apply_apply, LinearEquiv.symm_apply_apply]

end
end KIP126.Classical.Adams.Sphere.Internal
