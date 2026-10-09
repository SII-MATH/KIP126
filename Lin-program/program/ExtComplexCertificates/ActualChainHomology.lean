import ExtComplexCertificates.ActualChainAugmentation
import Mathlib.GroupTheory.QuotientGroup.Basic

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates

noncomputable def degreeHomogeneousSubgroup (s t : Nat) : AddSubgroup (DegreeFreeModule s) where
  carrier := {x | DegreeHomogeneous s t x}
  zero_mem' := by
    intro i m h
    change (finiteModuleInclusion (degreeInclusion s 0)) i m = 0
    simp
  add_mem' := by
    intro x y hx hy i m h
    change (finiteModuleInclusion (degreeInclusion s (x+y))) i m = 0
    rw [map_add,map_add]
    change (finiteModuleInclusion (degreeInclusion s x)) i m +
      (finiteModuleInclusion (degreeInclusion s y)) i m = 0
    rw [hx i m h,hy i m h,add_zero]
  neg_mem' := by
    intro x hx i m h
    change (finiteModuleInclusion (degreeInclusion s (-x))) i m = 0
    rw [map_neg,map_neg]
    change -(finiteModuleInclusion (degreeInclusion s x)) i m = 0
    rw [hx i m h,neg_zero]

noncomputable abbrev DegreeChain (s t : Nat) := degreeHomogeneousSubgroup s t

theorem degreeDifferential_homogeneous (s t : Nat) (ht : t ≤ 8)
    (x : DegreeFreeModule (s+1)) (hx : DegreeHomogeneous (s+1) t x) :
    DegreeHomogeneous s t (degreeDifferential s x) := by
  change ModuleHomogeneous s t (finiteModuleInclusion (degreeInclusion s _))
  rw [degreeDifferential_inclusion,finiteDifferential_inclusion]
  exact actualDifferential_homogeneous s t ht _ hx

/-- The actual chain boundary restricted to one internal degree. -/
noncomputable def homogeneousBoundary (s t : Nat) (ht : t ≤ 8) :
    DegreeChain (s+1) t →+ DegreeChain s t where
  toFun x := ⟨degreeDifferential s x.val,degreeDifferential_homogeneous s t ht x.val x.property⟩
  map_zero' := by apply Subtype.ext; exact map_zero _
  map_add' x y := by apply Subtype.ext; exact map_add _ _ _

noncomputable def positiveChainCycles (s t : Nat) (ht : t ≤ 8) :
    AddSubgroup (DegreeChain (s+1) t) := (homogeneousBoundary s t ht).ker

noncomputable def positiveChainBoundaries (s t : Nat) (ht : t ≤ 8) :
    AddSubgroup (positiveChainCycles s t ht) :=
  (homogeneousBoundary (s+1) t ht).range.comap (positiveChainCycles s t ht).subtype

/-- Genuine kernel modulo incoming image of the actual homogeneous boundary. -/
abbrev PositiveChainHomology (s t : Nat) (ht : t ≤ 8) :=
  positiveChainCycles s t ht ⧸ positiveChainBoundaries s t ht

theorem homogeneousBoundary_square_zero (s t : Nat) (ht : t ≤ 8)
    (x : DegreeChain (s+2) t) :
    homogeneousBoundary s t ht (homogeneousBoundary (s+1) t ht x) = 0 := by
  apply Subtype.ext
  exact congrArg (fun f : DegreeFreeModule (s+2) →ₗ[ActualFiniteRing] DegreeFreeModule s => f x.val)
    (degreeDifferential_square_zero s)

theorem positiveChainBoundaries_top (s t : Nat) (ht : t ≤ 8) :
    positiveChainBoundaries s t ht = ⊤ := by
  apply top_unique
  intro x _
  have hc : degreeDifferential s x.val.val = 0 := congrArg Subtype.val x.property
  obtain ⟨y,hy,hd⟩ := degreePositiveExactness s t ht x.val.val x.val.property hc
  exact ⟨⟨y,hy⟩,Subtype.ext hd⟩

theorem positiveChainHomology_zero (s t : Nat) (ht : t ≤ 8)
    (x : PositiveChainHomology s t ht) : x = 0 := by
  induction x using QuotientAddGroup.induction_on with
  | H x =>
    apply (QuotientAddGroup.eq_zero_iff x).mpr
    rw [positiveChainBoundaries_top]
    trivial

noncomputable def homogeneousAugmentation (t : Nat) : DegreeChain 0 t →+ ZMod 2 where
  toFun x := degreeAugmentationLinear x.val
  map_zero' := map_zero degreeAugmentationLinear
  map_add' x y := map_add degreeAugmentationLinear x.val y.val

/-- At homological degree zero all chains are cycles. -/
abbrev ZeroChainHomology (t : Nat) (ht : t ≤ 8) :=
  DegreeChain 0 t ⧸ (homogeneousBoundary 0 t ht).range

theorem zeroChainBoundaries_eq_augmentation_kernel (t : Nat) (ht : t ≤ 8) :
    (homogeneousBoundary 0 t ht).range = (homogeneousAugmentation t).ker := by
  ext x
  constructor
  · rintro ⟨y,rfl⟩
    exact degreeAugmentation_differential y.val
  · intro hx
    obtain ⟨y,hy,hd⟩ := degreeAugmentedExactness t ht x.val x.property hx
    exact ⟨⟨y,hy⟩,Subtype.ext hd⟩

/-- The actual induced augmentation identifies H_0 with its homogeneous
augmentation image; this does not assert a global quasi-isomorphism. -/
noncomputable def zeroChainHomologyAugmentationRange (t : Nat) (ht : t ≤ 8) :
    ZeroChainHomology t ht ≃+ (homogeneousAugmentation t).range := by
  unfold ZeroChainHomology
  rw [zeroChainBoundaries_eq_augmentation_kernel]
  exact QuotientAddGroup.quotientKerEquivRange (homogeneousAugmentation t)

theorem degreeAugmentationSection_homogeneous (a : ZMod 2) :
    DegreeHomogeneous 0 0 (degreeAugmentationSection a) := by
  have hh : FiniteModuleHomogeneous 0 0
      (liftHomogeneous 0 0 (augmentationSection a) (augmentationSection_homogeneous a)) := by
    change ModuleHomogeneous 0 0 (finiteModuleInclusion _)
    rw [liftHomogeneous_inclusion]
    exact augmentationSection_homogeneous a
  change FiniteModuleHomogeneous 0 0 (degreeInclusion 0 (degreeProjection 0 _))
  rw [degreeInclusion_projection 0 _ (finiteHomogeneous_supported 0 0 _ hh)]
  exact hh

theorem homogeneousAugmentation_zero_surjective : Function.Surjective (homogeneousAugmentation 0) := by
  intro a
  exact ⟨⟨degreeAugmentationSection a,degreeAugmentationSection_homogeneous a⟩,
    degreeAugmentationSection_value a⟩

noncomputable def zeroChainHomologyField : ZeroChainHomology 0 (by decide) ≃+ ZMod 2 := by
  unfold ZeroChainHomology
  rw [zeroChainBoundaries_eq_augmentation_kernel]
  exact QuotientAddGroup.quotientKerEquivOfSurjective _ homogeneousAugmentation_zero_surjective

theorem homogeneousAugmentation_positive (t : Nat) (ht : t ≠ 0)
    (x : DegreeChain 0 t) : homogeneousAugmentation t x = 0 :=
  augmentation_component_zero t _ x.property ht

theorem zeroChainHomology_positive_zero (t : Nat) (ht : t ≤ 8) (hpos : t ≠ 0)
    (x : ZeroChainHomology t ht) : x = 0 := by
  induction x using QuotientAddGroup.induction_on with
  | H x =>
    apply (QuotientAddGroup.eq_zero_iff x).mpr
    rw [zeroChainBoundaries_eq_augmentation_kernel]
    exact homogeneousAugmentation_positive t hpos x

theorem homogeneousAugmentation_chain_component (t : Nat) (x : DegreeChain 0 t) :
    homogeneousAugmentation t x = actualChainAugmentation.f 0 x.val := by
  rw [actualChainAugmentation_f_zero]
  rfl

#print axioms positiveChainHomology_zero
#print axioms zeroChainHomologyAugmentationRange
#print axioms zeroChainHomologyField
#print axioms zeroChainHomology_positive_zero
end ExtComplexCertificates.ActualResolution
