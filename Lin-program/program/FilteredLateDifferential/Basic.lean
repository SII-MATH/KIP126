import FilteredTwoTermSequence.Basic
import FilteredMapKernelGraded.Examples

namespace FilteredLateDifferential
open FilteredRepresentativeCrossing FilteredMapExtension FilteredTwoTermSequence

/-- A finite separated filtration with its sole jump after the chosen length. -/
def target (late : Nat) : Filtration (ZMod 2) where
  group n := if n ≤ late then ⊤ else ⊥
  decreasing := by
    intro i j hij x hx
    by_cases hi : i ≤ late
    · simp [hi]
    · have hj : ¬ j ≤ late := by omega
      simpa [hi,hj] using hx

abbrev source := FilteredMapKernelGraded.Examples.initial

def identity (late : Nat) : FilteredMap source (target late) where
  hom := AddMonoidHom.id _
  preserves := by
    intro n x hx
    by_cases hn : n ≤ late
    · simp [target,hn]
    · have hn0 : n ≠ 0 := by omega
      have hx0 : x = 0 := by
        simpa [source,FilteredMapKernelGraded.Examples.initial,hn0] using hx
      subst x
      exact (target late).group n |>.zero_mem

def representative (late n : Nat) (hn : n ≤ late) :
    cycles source (target late) (identity late) 0 n :=
  ⟨1,by constructor; trivial; simpa [target,hn]⟩

theorem source_nonzero (late n : Nat) (hn : n ≤ late) :
    sourceClass source (target late) (identity late) 0 n (representative late n hn) ≠ 0 := by
  intro zero
  have relation := (QuotientAddGroup.eq_zero_iff (representative late n hn)).mp zero
  have impossible : (1 : ZMod 2) = 0 := relation.1
  exact (by decide : (1 : ZMod 2) ≠ 0) impossible

theorem earlier_differential_zero (late n : Nat) (hn : n < late) :
    differential source (target late) (identity late) 0 n
      (sourceClass source (target late) (identity late) 0 n
        (representative late n (by omega))) = 0 := by
  apply (differential_zero_iff _ _ _ _ _ _).mpr
  refine ⟨0,(corrections source (target late) (identity late) 0 n).zero_mem,?_⟩
  simp [target,show n+1 ≤ late by omega]

theorem late_differential_nonzero (late : Nat) :
    differential source (target late) (identity late) 0 late
      (sourceClass source (target late) (identity late) 0 late
        (representative late late le_rfl)) ≠ 0 := by
  intro zero
  obtain ⟨a,ha,higher⟩ := (differential_zero_iff _ _ _ _ _ _).mp zero
  have ha0 : a = 0 := ha.1
  have impossible : (1 : ZMod 2) = 0 := by
    simpa [identity,representative,target,ha0] using higher
  exact (by decide : (1 : ZMod 2) ≠ 0) impossible

/-- This is the differential of the constructed full page, not a user-supplied map. -/
theorem actual_page_nonzero (late : Nat) :
    pageD source (target late) (identity late) late 0
      (sourceClass source (target late) (identity late) 0 late
        (representative late late le_rfl),0) ≠ 0 := by
  intro zero
  have targetZero := congrArg Prod.snd zero
  have localZero := (targetD_zero_iff source (target late) (identity late) 0 late _).mp targetZero
  exact late_differential_nonzero late localZero

theorem bounded_target (late : Nat) : (target late).group (late+1) = ⊥ := by
  simp [target]

/-- Every prescribed finite length can be followed by an actual nonzero page
differential, even for finite groups and a bounded separated filtration. -/
theorem arbitrary_finite_prefix (cutoff : Nat) :
    (∀ n, (hn : n ≤ cutoff) → differential source (target (cutoff+1)) (identity (cutoff+1)) 0 n
      (sourceClass source (target (cutoff+1)) (identity (cutoff+1)) 0 n
        (representative (cutoff+1) n (by omega))) = 0) ∧
    differential source (target (cutoff+1)) (identity (cutoff+1)) 0 (cutoff+1)
      (sourceClass source (target (cutoff+1)) (identity (cutoff+1)) 0 (cutoff+1)
        (representative (cutoff+1) (cutoff+1) le_rfl)) ≠ 0 := by
  exact ⟨fun n hn => earlier_differential_zero (cutoff+1) n (by omega),
    late_differential_nonzero (cutoff+1)⟩

#print axioms source_nonzero
#print axioms earlier_differential_zero
#print axioms late_differential_nonzero
#print axioms actual_page_nonzero
#print axioms arbitrary_finite_prefix
end FilteredLateDifferential
