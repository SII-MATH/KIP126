import ExtComplexCertificates.ActualDegreeComplex
import ExtComplexCertificates.ActualFiniteExactness

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates

def DegreeHomogeneous (s t : Nat) (x : DegreeFreeModule s) : Prop :=
  FiniteModuleHomogeneous s t (degreeInclusion s x)

theorem finiteHomogeneous_supported (s t : Nat) (x : ActualFiniteFreeModule)
    (hx : FiniteModuleHomogeneous s t x) : SupportedDegree s x := by
  intro i hi
  apply Subtype.ext
  funext m
  exact hx i m (Or.inl hi)

/-- Exactness in the genuine degree-indexed modules, in the verified internal
range. The witness is in the next free module, not just the ambient sum. -/
theorem degreePositiveExactness (s t : Nat) (ht : t ≤ 8)
    (x : DegreeFreeModule (s+1)) (hx : DegreeHomogeneous (s+1) t x)
    (hc : degreeDifferential s x = 0) :
    ∃ y : DegreeFreeModule (s+2), DegreeHomogeneous (s+2) t y ∧ degreeDifferential (s+1) y = x := by
  have hcycle : finiteDifferential (degreeInclusion (s+1) x) = 0 := by
    rw [← degreeDifferential_inclusion,hc,map_zero]
  obtain ⟨y,hy,hd⟩ := finitePositiveHomogeneousExactness s t ht (degreeInclusion (s+1) x) hx hcycle
  have hiy := degreeInclusion_projection (s+2) y (finiteHomogeneous_supported (s+2) t y hy)
  refine ⟨degreeProjection (s+2) y,?_,?_⟩
  · change FiniteModuleHomogeneous (s+2) t (degreeInclusion (s+2) (degreeProjection (s+2) y))
    rw [hiy]
    exact hy
  · apply degreeInclusion_injective (s+1)
    rw [degreeDifferential_inclusion,hiy,hd]

noncomputable def degreeAugmentation (x : DegreeFreeModule 0) : ZMod 2 :=
  finiteAugmentation (degreeInclusion 0 x)

theorem degreeAugmentedExactness (t : Nat) (ht : t ≤ 8)
    (x : DegreeFreeModule 0) (hx : DegreeHomogeneous 0 t x)
    (ha : degreeAugmentation x = 0) :
    ∃ y : DegreeFreeModule 1, DegreeHomogeneous 1 t y ∧ degreeDifferential 0 y = x := by
  obtain ⟨y,hy,hd⟩ := finiteAugmentedHomogeneousExactness t ht (degreeInclusion 0 x) hx ha
  have hiy := degreeInclusion_projection 1 y (finiteHomogeneous_supported 1 t y hy)
  refine ⟨degreeProjection 1 y,?_,?_⟩
  · change FiniteModuleHomogeneous 1 t (degreeInclusion 1 (degreeProjection 1 y))
    rw [hiy]
    exact hy
  · apply degreeInclusion_injective 0
    rw [degreeDifferential_inclusion,hiy,hd]

theorem degreeAugmentation_differential (x : DegreeFreeModule 1) :
    degreeAugmentation (degreeDifferential 0 x) = 0 := by
  rw [degreeAugmentation,degreeDifferential_inclusion,finiteAugmentation_differential]

#print axioms degreePositiveExactness
#print axioms degreeAugmentedExactness
end ExtComplexCertificates.ActualResolution
