import Mathlib.Algebra.Group.Int.Defs
import Mathlib.CategoryTheory.Shift.Adjunction

/-! The full chosen shift structure of a left adjoint is determined by the
right adjoint's chosen structure and compatibility of their actual unit. -/
namespace KIP126.StableHomotopy.TensorShift
noncomputable section
open CategoryTheory
universe u₁ u₂ v₁ v₂ w
set_option backward.isDefEq.respectTransparency false
set_option backward.defeqAttrib.useBackward true

private theorem commShift_ext {C : Type u₁} {D : Type u₂}
    [Category.{v₁} C] [Category.{v₂} D] (F : C ⥤ D) (A : Type w)
    [AddMonoid A] [HasShift C A] [HasShift D A]
    (s t : F.CommShift A) (h : ∀ a, s.commShiftIso a = t.commShiftIso a) : s = t := by
  have he : s.commShiftIso = t.commShiftIso := funext h
  cases s
  cases t
  cases he
  rfl

/-- With the same right adjoint and its same selected shifts, compatibility
with the actual adjunction unit uniquely determines the entire left shift
structure, for every integer shift. -/
theorem leftShift_eq_adjoint {C : Type u₁} {D : Type u₂}
    [Category.{v₁} C] [Category.{v₂} D] [HasShift C ℤ] [HasShift D ℤ]
    {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G)
    [s : F.CommShift ℤ] [G.CommShift ℤ]
    [NatTrans.CommShift adj.unit ℤ] : s = adj.leftAdjointCommShift ℤ := by
  apply commShift_ext
  intro a
  refine Adjunction.CommShift.compatibilityUnit_unique_left adj _ _ (G.commShiftIso a)
    ?_ (Adjunction.LeftAdjointCommShift.compatibilityUnit_iso adj a)
  intro X
  simpa only [Functor.commShiftIso_id_hom_app, Functor.comp_obj, Functor.id_obj,
    Category.id_comp, Functor.commShiftIso_comp_hom_app, Category.assoc] using!
      (NatTrans.shift_app_comm adj.unit a X)

/-- Transport along the inverse functor isomorphism and then the original
isomorphism recovers the whole chosen shift structure. -/
theorem commShift_ofIso_roundtrip {C : Type u₁} {D : Type u₂}
    [Category.{v₁} C] [Category.{v₂} D] [HasShift C ℤ] [HasShift D ℤ]
    {F G : C ⥤ D} (e : F ≅ G) [s : G.CommShift ℤ] :
    (letI := Functor.CommShift.ofIso e.symm ℤ
     Functor.CommShift.ofIso e ℤ) = s := by
  apply commShift_ext
  intro a
  apply Iso.ext
  ext X
  simp only [Functor.CommShift.ofIso_commShiftIso_hom_app, Iso.symm_inv,
    Iso.symm_hom, Category.assoc, Iso.inv_hom_id_app_assoc,
    ← Functor.map_comp, Iso.inv_hom_id_app]
  rw [(shiftFunctor D a).map_id, Category.comp_id]

end
end KIP126.StableHomotopy.TensorShift
