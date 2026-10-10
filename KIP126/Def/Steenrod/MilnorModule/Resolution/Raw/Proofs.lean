import KIP126.Def.Steenrod.MilnorModule.Resolution.Raw.Data
import KIP126.Def.Steenrod.MilnorModule.Dualization.Proofs

/-!
Properties of the prescribed dual maps. Projectivity is asserted only for
the terms identified with this fixed normalized Milnor cofree resolution;
there is no claim that every injective comodule has a projective dual.
-/

namespace KIP126.Steenrod.Milnor.Module

open CategoryTheory

set_option backward.isDefEq.respectTransparency false

theorem dualCobarDifferential_shape (R : Ext.CobarResolution) (i j : ℕ)
    (h : ¬ (ComplexShape.down ℕ).Rel i j) :
    dualCobarDifferential R i j = 0 := by
  unfold dualCobarDifferential
  rw [R.resolution.cocomplex.shape j i (by simpa using h), dualLeftMap_zero]

theorem dualCobarDifferential_comp (R : Ext.CobarResolution) (i j k : ℕ) :
    dualCobarDifferential R i j ≫ dualCobarDifferential R j k = 0 := by
  unfold dualCobarDifferential
  rw [dualLeftMap_comp, R.resolution.cocomplex.d_comp_d, dualLeftMap_zero]

theorem dualCobarDifferential_augmentation (R : Ext.CobarResolution) :
    dualCobarDifferential R 1 0 ≫ dualCobarAugmentationZero R = 0 := by
  unfold dualCobarDifferential dualCobarAugmentationZero
  rw [← Category.assoc, dualLeftMap_comp]
  have h : R.resolution.ι.f 0 ≫ R.resolution.cocomplex.d 0 1 = 0 := by
    simp
  rw [h, dualLeftMap_zero, Limits.zero_comp]

/-- Projectivity of these actual dual normalized-cofree terms, in the full
category of graded left modules over the fixed convolution algebra. -/
theorem dualCobarTerm_projective (R : Ext.CobarResolution) (s : ℕ) :
    Projective (dualCobarTerm R s) := by
  sorry

end KIP126.Steenrod.Milnor.Module
