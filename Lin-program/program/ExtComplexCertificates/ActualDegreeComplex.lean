import ExtComplexCertificates.ActualFiniteModule

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates
open scoped BigOperators

abbrev DegreeIndex (s : Nat) := {i : ActualIndex // (actualRow i).s = s}
abbrev DegreeFreeModule (s : Nat) := DegreeIndex s →₀ ActualFiniteRing

noncomputable def degreeInclusion (s : Nat) : DegreeFreeModule s →ₗ[ActualFiniteRing] ActualFiniteFreeModule :=
  Finsupp.lmapDomain ActualFiniteRing ActualFiniteRing (fun i => i.val)

noncomputable def degreeProjection (s : Nat) : ActualFiniteFreeModule →ₗ[ActualFiniteRing] DegreeFreeModule s :=
  Finsupp.lcomapDomain (fun i : DegreeIndex s => i.val) Subtype.val_injective

theorem degreeProjection_apply (s : Nat) (x : ActualFiniteFreeModule) (i : DegreeIndex s) :
    degreeProjection s x i = x i.val := rfl

theorem degreeInclusion_apply (s : Nat) (x : DegreeFreeModule s) (i : ActualIndex) :
    degreeInclusion s x i = if h : (actualRow i).s = s then x ⟨i,h⟩ else 0 := by
  classical
  by_cases h : (actualRow i).s = s
  · simp only [h,ite_true]
    exact Finsupp.mapDomain_apply Subtype.val_injective x ⟨i,h⟩
  · change Finsupp.mapDomain (fun i : DegreeIndex s => i.val) x i = _
    rw [Finsupp.mapDomain_notin_range]
    · simp [h]
    · rintro ⟨j,hj⟩
      exact h (hj ▸ j.property)

theorem degreeProjection_inclusion (s : Nat) (x : DegreeFreeModule s) :
    degreeProjection s (degreeInclusion s x) = x := by
  ext i
  rw [degreeProjection_apply,degreeInclusion_apply]
  simp [i.property]

theorem degreeInclusion_injective (s : Nat) : Function.Injective (degreeInclusion s) := by
  intro x y h
  have hh := congrArg (degreeProjection s) h
  simpa only [degreeProjection_inclusion] using hh

def SupportedDegree (s : Nat) (x : ActualFiniteFreeModule) : Prop :=
  ∀ i : ActualIndex, (actualRow i).s ≠ s → x i = 0

theorem degreeInclusion_projection (s : Nat) (x : ActualFiniteFreeModule) (hx : SupportedDegree s x) :
    degreeInclusion s (degreeProjection s x) = x := by
  apply Finsupp.ext
  intro i
  rw [degreeInclusion_apply]
  split
  · rfl
  next h => exact (hx i h).symm

theorem finiteBoundary_degree (i : ActualIndex) (j : ActualIndex)
    (h : (actualRow j).s + 1 ≠ (actualRow i).s) : finiteBasisBoundary i j = 0 := by
  apply Subtype.ext
  have hi := congrArg (fun x : ActualFreeModule => x j) (finiteBoundary_inclusion i)
  change (finiteModuleInclusion (finiteBasisBoundary i)) j = 0
  rw [hi]
  by_contra hn
  exact h (differential_degree_descends i j hn)

theorem finiteDifferential_supported (s : Nat) (x : ActualFiniteFreeModule)
    (hx : SupportedDegree (s+1) x) : SupportedDegree s (finiteDifferential x) := by
  classical
  intro j hj
  rw [finiteDifferential,Finsupp.linearCombination_apply,Finsupp.sum]
  rw [Finset.sum_apply']
  apply Finset.sum_eq_zero
  intro i hi
  rw [Finsupp.smul_apply,smul_eq_mul]
  by_cases hs : (actualRow i).s = s+1
  · rw [finiteBoundary_degree i j (by omega),mul_zero]
  · rw [hx i hs,zero_mul]

noncomputable def degreeDifferential (s : Nat) : DegreeFreeModule (s+1) →ₗ[ActualFiniteRing] DegreeFreeModule s :=
  (degreeProjection s).comp (finiteDifferential.comp (degreeInclusion (s+1)))

theorem degreeInclusion_supported (s : Nat) (x : DegreeFreeModule s) :
    SupportedDegree s (degreeInclusion s x) := by
  intro i hi
  rw [degreeInclusion_apply]
  simp [hi]

/-- Restriction to adjacent homological degrees agrees with the original
actual finite-support differential under the injective inclusions. -/
theorem degreeDifferential_inclusion (s : Nat) (x : DegreeFreeModule (s+1)) :
    degreeInclusion s (degreeDifferential s x) = finiteDifferential (degreeInclusion (s+1) x) := by
  exact degreeInclusion_projection s _ (finiteDifferential_supported s _ (degreeInclusion_supported _ x))

theorem degreeDifferential_square_zero (s : Nat) :
    (degreeDifferential s).comp (degreeDifferential (s+1)) = 0 := by
  apply LinearMap.ext
  intro x
  apply degreeInclusion_injective s
  rw [LinearMap.comp_apply,degreeDifferential_inclusion,degreeDifferential_inclusion]
  have hz := congrArg (fun f : ActualFiniteFreeModule →ₗ[ActualFiniteRing] ActualFiniteFreeModule =>
    f (degreeInclusion (s+2) x)) finiteDifferential_square_zero
  exact hz

#print axioms degreeDifferential_inclusion
#print axioms degreeDifferential_square_zero
end ExtComplexCertificates.ActualResolution
