import ExtComplexCertificates.GenericAugmentedExactness
import Mathlib.GroupTheory.QuotientGroup.Basic

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
open MilnorCertificates

noncomputable def homogeneousSubgroup (d : Data rank n) (s t : Nat) : AddSubgroup (FreeModule rank n) where
  carrier := {x | Homogeneous d s t x}
  zero_mem' := by intro i m h; rfl
  add_mem' := by
    intro x y hx hy i m h
    change (x i).val m + (y i).val m = 0
    rw [hx i m h,hy i m h,add_zero]
  neg_mem' := by
    intro x hx i m h
    change -(x i).val m = 0
    rw [hx i m h,neg_zero]

noncomputable def homogeneousBoundary (d : Data rank n) (c : AugmentedCertificate)
    (hc : checkArrow d 0 c.t c.incoming = true) :
    homogeneousSubgroup d 1 c.t →+ homogeneousSubgroup d 0 c.t where
  toFun x := ⟨differential d x.val,by
    have hi := hc
    simp only [checkArrow,Bool.and_eq_true] at hi
    rw [← reconstruct_extract d 1 c.t x.val x.property]
    exact differential_reconstruct_homogeneous d 0 c.t _ hi.1.2 _⟩
  map_zero' := by apply Subtype.ext; exact map_zero _
  map_add' x y := by apply Subtype.ext; exact map_add _ _ _

noncomputable def homogeneousAugmentation (d : Data rank n) (a : AugmentationCertificate) (t : Nat) :
    homogeneousSubgroup d 0 t →+ Field rank where
  toFun x := augmentation d a x.val
  map_zero' := map_zero _
  map_add' x y := map_add _ _ _

theorem checked_incoming (d : Data rank n) (a : AugmentationCertificate) (c : AugmentedCertificate)
    (h : checkAugmented d a c = true) : checkArrow d 0 c.t c.incoming = true := by
  simp only [checkAugmented,Bool.and_eq_true] at h
  exact h.1.2

theorem augmented_range_eq_kernel (d : Data rank n) (a : AugmentationCertificate)
    (c : AugmentedCertificate) (h : checkAugmented d a c = true) :
    (homogeneousBoundary d c (checked_incoming d a c h)).range =
      (homogeneousAugmentation d a c.t).ker := by
  ext x
  constructor
  · rintro ⟨y,rfl⟩
    have ha := h
    simp only [checkAugmented,Bool.and_eq_true] at ha
    have hz := checkAugmentation_boundary d a ha.1.1.1
    exact congrArg (fun f : Hom rank n => f y.val) hz
  · intro hx
    obtain ⟨y,hy,hd⟩ := checkAugmented_sound d a c h x.val x.property hx
    exact ⟨⟨y,hy⟩,Subtype.ext hd⟩

/-- The actual homogeneous H_0 quotient, for this one certified component. -/
abbrev AugmentedH0 (d : Data rank n) (c : AugmentedCertificate)
    (hc : checkArrow d 0 c.t c.incoming = true) :=
  homogeneousSubgroup d 0 c.t ⧸ (homogeneousBoundary d c hc).range

noncomputable def augmentedH0EquivRange (d : Data rank n) (a : AugmentationCertificate)
    (c : AugmentedCertificate) (h : checkAugmented d a c = true) :
    (homogeneousSubgroup d 0 c.t ⧸ (homogeneousBoundary d c (checked_incoming d a c h)).range) ≃+
      (homogeneousAugmentation d a c.t).range := by
  rw [augmented_range_eq_kernel d a c h]
  exact QuotientAddGroup.quotientKerEquivRange _

#print axioms augmented_range_eq_kernel
#print axioms augmentedH0EquivRange
end ExtComplexCertificates.GenericFreeComplex.GenericHom
