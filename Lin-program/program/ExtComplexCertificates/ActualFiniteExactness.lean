import ExtComplexCertificates.ActualFiniteModule
import ExtComplexCertificates.ActualAugmentation

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates
open scoped BigOperators

/-- Each coordinate of a homogeneous vector has finite degree support. -/
theorem homogeneous_coordinate_finite (s t : Nat) (x : ActualFreeModule)
    (hx : ModuleHomogeneous s t x) (i : ActualIndex) : FiniteGradedSupport 3 (x i) := by
  refine ⟨t,?_⟩
  intro m hm
  apply hx i m
  right
  omega

/-- Lift the actual homogeneous vector, rather than choosing a new solution
from a separate finite matrix computation. -/
noncomputable def liftHomogeneous (s t : Nat) (x : ActualFreeModule)
    (hx : ModuleHomogeneous s t x) : ActualFiniteFreeModule :=
  ∑ i : ActualIndex, Finsupp.single i ⟨x i,homogeneous_coordinate_finite s t x hx i⟩

theorem liftHomogeneous_inclusion (s t : Nat) (x : ActualFreeModule)
    (hx : ModuleHomogeneous s t x) : finiteModuleInclusion (liftHomogeneous s t x hx) = x := by
  classical
  apply Finsupp.ext
  intro i
  rw [finiteModuleInclusion_apply,liftHomogeneous,Finset.sum_apply']
  simp only [Finsupp.single_apply]
  simp

def FiniteModuleHomogeneous (s t : Nat) (x : ActualFiniteFreeModule) : Prop :=
  ModuleHomogeneous s t (finiteModuleInclusion x)

noncomputable def finiteAugmentation (x : ActualFiniteFreeModule) : ZMod 2 :=
  actualAugmentation (finiteModuleInclusion x)

/-- Positive-filtration exactness inside the finite-support module, only in
the verified internal-degree range. -/
theorem finitePositiveHomogeneousExactness (s t : Nat) (ht : t ≤ 8)
    (x : ActualFiniteFreeModule) (hx : FiniteModuleHomogeneous (s+1) t x)
    (hc : finiteDifferential x = 0) :
    ∃ y : ActualFiniteFreeModule, FiniteModuleHomogeneous (s+2) t y ∧ finiteDifferential y = x := by
  have hcycle : actualDifferential (finiteModuleInclusion x) = 0 := by
    rw [← finiteDifferential_inclusion,hc,map_zero]
  obtain ⟨y,hy,hd⟩ := actualPositiveHomogeneousExactness s t ht (finiteModuleInclusion x) hx hcycle
  refine ⟨liftHomogeneous (s+2) t y hy,?_,?_⟩
  · change ModuleHomogeneous (s+2) t (finiteModuleInclusion _)
    rw [liftHomogeneous_inclusion]
    exact hy
  · apply finiteModuleInclusion_injective
    rw [finiteDifferential_inclusion,liftHomogeneous_inclusion,hd]

/-- Degree-zero augmentation-kernel exactness in the same finite-support
module and the same verified degree range. -/
theorem finiteAugmentedHomogeneousExactness (t : Nat) (ht : t ≤ 8)
    (x : ActualFiniteFreeModule) (hx : FiniteModuleHomogeneous 0 t x)
    (ha : finiteAugmentation x = 0) :
    ∃ y : ActualFiniteFreeModule, FiniteModuleHomogeneous 1 t y ∧ finiteDifferential y = x := by
  obtain ⟨y,hy,hd⟩ := actualAugmentedHomogeneousExactness t ht (finiteModuleInclusion x) hx ha
  refine ⟨liftHomogeneous 1 t y hy,?_,?_⟩
  · change ModuleHomogeneous 1 t (finiteModuleInclusion _)
    rw [liftHomogeneous_inclusion]
    exact hy
  · apply finiteModuleInclusion_injective
    rw [finiteDifferential_inclusion,liftHomogeneous_inclusion,hd]

theorem finiteAugmentation_differential (x : ActualFiniteFreeModule) :
    finiteAugmentation (finiteDifferential x) = 0 := by
  rw [finiteAugmentation,finiteDifferential_inclusion,actualAugmentation_differential]

theorem finiteAugmentation_surjective : Function.Surjective finiteAugmentation := by
  intro a
  refine ⟨liftHomogeneous 0 0 (augmentationSection a) (augmentationSection_homogeneous a),?_⟩
  rw [finiteAugmentation,liftHomogeneous_inclusion,augmentationSection_value]

#print axioms finitePositiveHomogeneousExactness
#print axioms finiteAugmentedHomogeneousExactness
#print axioms finiteAugmentation_surjective
end ExtComplexCertificates.ActualResolution
