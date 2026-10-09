import FilteredMapKernelGraded.Basic
import Mathlib.Data.ZMod.Basic

namespace FilteredMapKernelGraded.Examples
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison

def initial : Filtration (ZMod 2) where
  group s := if s = 0 then ⊤ else ⊥
  decreasing := by
    intro s t h x hx
    by_cases hs : s = 0
    · simp [hs]
    · have ht : t ≠ 0 := by omega
      simpa [hs,ht] using hx

def constant : Filtration (ZMod 2) where
  group _ := ⊤
  decreasing := fun _ _ _ => le_rfl

def identity : FilteredMap initial constant where
  hom := AddMonoidHom.id _
  preserves := fun _ _ _ => trivial

def survivor (n : Nat) : cycles initial constant identity 0 n := ⟨1,by
  constructor <;> trivial⟩

theorem survivor_nonzero (n : Nat) :
    sourceClass initial constant identity 0 n (survivor n) ≠ 0 := by
  intro h
  have mem := (QuotientAddGroup.eq_zero_iff (survivor n)).mp h
  have impossible : (1 : ZMod 2) = 0 := mem.1
  exact (by decide : (1 : ZMod 2) ≠ 0) impossible

/-- Constant nonzero target filtrations admit survivors which are never
actual kernel classes. Finite-page survival alone cannot justify convergence. -/
theorem kernelToSource_not_surjective (n : Nat) :
    ¬ Function.Surjective (kernelToSource initial constant identity 0 n) := by
  intro h
  obtain ⟨a,ha⟩ := h (sourceClass initial constant identity 0 n (survivor n))
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective
    (gradedRelations (kernelFiltration initial constant identity) 0) a
  have xzero : x = 0 := by
    apply Subtype.ext
    apply Subtype.ext
    exact x.val.property
  rw [xzero,map_zero,map_zero] at ha
  exact survivor_nonzero n ha.symm

def boundedIdentity : FilteredMap initial initial where
  hom := AddMonoidHom.id _
  preserves := fun _ _ h => h

noncomputable def actualStableKernel (s n : Nat) (bound : 1 ≤ s+n) :
    SourcePage initial initial boundedIdentity s n ≃+
      Graded (kernelFiltration initial initial boundedIdentity) s :=
  stableSourceEquivKernel initial initial boundedIdentity 1 s n (by rfl) bound

#print axioms survivor_nonzero
#print axioms kernelToSource_not_surjective
#print axioms actualStableKernel
end FilteredMapKernelGraded.Examples
