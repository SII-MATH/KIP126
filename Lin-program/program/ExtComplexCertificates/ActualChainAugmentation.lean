import ExtComplexCertificates.ActualProjectiveComplex
import ExtComplexCertificates.ActualFiniteHom
import Mathlib.Algebra.Homology.Single

namespace ExtComplexCertificates.ActualResolution
open CategoryTheory

noncomputable def degreeAugmentationLinear :
    DegreeFreeModule 0 →ₗ[ActualFiniteRing] FiniteHom.CoefficientField where
  toFun := degreeAugmentation
  map_add' x y := by
    change actualAugmentation (finiteModuleInclusion (degreeInclusion 0 (x+y))) = _
    rw [map_add,map_add,actualAugmentation_add]
    rfl
  map_smul' a x := by
    change actualAugmentation (finiteModuleInclusion (degreeInclusion 0 (a • x))) = _
    rw [map_smul,finiteModuleInclusion_smul,actualAugmentation_smul]
    rfl

noncomputable def augmentationObject : ModuleCat ActualFiniteRing :=
  ModuleCat.of ActualFiniteRing FiniteHom.CoefficientField

noncomputable def augmentationMorphism : actualProjectiveChainComplex.X 0 ⟶ augmentationObject :=
  ModuleCat.ofHom degreeAugmentationLinear

theorem augmentationMorphism_boundary :
    actualProjectiveChainComplex.d 1 0 ≫ augmentationMorphism = 0 := by
  apply ModuleCat.hom_ext
  apply LinearMap.ext
  intro x
  change degreeAugmentation (degreeDifferential 0 x) = 0
  exact degreeAugmentation_differential x

noncomputable def degreeAugmentationSection (a : ZMod 2) : DegreeFreeModule 0 :=
  degreeProjection 0 (liftHomogeneous 0 0 (augmentationSection a) (augmentationSection_homogeneous a))

theorem degreeAugmentationSection_value (a : ZMod 2) :
    degreeAugmentation (degreeAugmentationSection a) = a := by
  unfold degreeAugmentationSection degreeAugmentation
  have hh : FiniteModuleHomogeneous 0 0
      (liftHomogeneous 0 0 (augmentationSection a) (augmentationSection_homogeneous a)) := by
    change ModuleHomogeneous 0 0 (finiteModuleInclusion _)
    rw [liftHomogeneous_inclusion]
    exact augmentationSection_homogeneous a
  rw [degreeInclusion_projection 0 _ (finiteHomogeneous_supported 0 0 _ hh),
    finiteAugmentation,liftHomogeneous_inclusion,augmentationSection_value]

theorem degreeAugmentationLinear_surjective : Function.Surjective degreeAugmentationLinear := by
  intro a
  exact ⟨degreeAugmentationSection a,degreeAugmentationSection_value a⟩

noncomputable instance augmentationMorphism_epi : Epi augmentationMorphism :=
  (ModuleCat.epi_iff_surjective augmentationMorphism).mpr degreeAugmentationLinear_surjective

/-- The degree-zero generator functional is the same actual augmentation
used by the chain object, not a separately chosen coefficient map. -/
theorem augmentationMorphism_apply (x : DegreeFreeModule 0) :
    augmentationMorphism x =
      finiteModuleInclusion (degreeInclusion 0 x) rootIndex unitRankMonomial := rfl

theorem degreeZeroIndex_root (i : DegreeIndex 0) : i.val = rootIndex := by
  have h : ∀ j : ActualIndex, (actualRow j).s = 0 → j = rootIndex := by decide
  exact h i.val i.property

theorem degreeZero_generator_augmentation (i : DegreeIndex 0) (a : ActualFiniteRing) :
    degreeAugmentationLinear (Finsupp.single i a) = FiniteHom.augmentation a := by
  change actualAugmentation (finiteModuleInclusion (degreeInclusion 0 (Finsupp.single i a))) = _
  unfold actualAugmentation
  rw [finiteModuleInclusion_apply,degreeInclusion_apply]
  have hroot : (actualRow rootIndex).s = 0 := by decide
  simp only [hroot,dite_true]
  have hi : i = ⟨rootIndex,hroot⟩ := Subtype.ext (degreeZeroIndex_root i)
  rw [hi,Finsupp.single_eq_same]
  rfl

theorem degreeZero_hom_generator_values
    (f : DegreeFreeModule 0 →ₗ[ActualFiniteRing] FiniteHom.CoefficientField)
    (i : DegreeIndex 0) (a : ActualFiniteRing) :
    f (Finsupp.single i a) = a • f (Finsupp.single i 1) := by
  rw [← map_smul]
  congr 1
  simp

/-- The actual augmentation as a chain map to the coefficient field in
degree zero. No global exactness or quasi-isomorphism is asserted. -/
noncomputable def actualChainAugmentation :
    actualProjectiveChainComplex ⟶
      (ChainComplex.single₀ (ModuleCat ActualFiniteRing)).obj augmentationObject :=
  (ChainComplex.toSingle₀Equiv actualProjectiveChainComplex augmentationObject).symm
    ⟨augmentationMorphism, augmentationMorphism_boundary⟩

@[simp] theorem actualChainAugmentation_f_zero :
    actualChainAugmentation.f 0 = augmentationMorphism := by
  exact ChainComplex.toSingle₀Equiv_symm_apply_f_zero _ _

theorem actualChainAugmentation_generator (i : DegreeIndex 0) (a : ActualFiniteRing) :
    actualChainAugmentation.f 0 (Finsupp.single i a) = FiniteHom.augmentation a := by
  rw [actualChainAugmentation_f_zero]
  exact degreeZero_generator_augmentation i a

#print axioms augmentationMorphism_boundary
#print axioms augmentationMorphism_epi
#print axioms degreeZero_generator_augmentation
#print axioms actualChainAugmentation_f_zero
#print axioms actualChainAugmentation_generator
end ExtComplexCertificates.ActualResolution
