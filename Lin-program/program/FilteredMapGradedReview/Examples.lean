import FilteredMapGradedComparison.AllTargets
import FilteredMapExtension.Examples

namespace FilteredMapGradedReview
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison

def vertical : AddSubgroup (Int × Int) := FilteredMapExtension.Examples.first.ker

def properSource : Filtration (Int × Int) where
  group p := if p = 0 then vertical else ⊥
  decreasing := by
    intro p q hpq x hx
    by_cases hq : q = 0
    · have hp : p = 0 := by omega
      simpa [hp,hq] using hx
    · have hz : x = 0 := by simpa [hq] using hx
      subst x
      exact (if p = 0 then vertical else ⊥).zero_mem

def target : Filtration (Int × Int) where
  group p := if p = 0 then ⊤ else ⊥
  decreasing := by
    intro p q hpq x hx
    by_cases hp : p = 0
    · simp [hp]
    · have hq : q ≠ 0 := by omega
      simpa [hp,hq] using hx

def identity : FilteredMap properSource target where
  hom := AddMonoidHom.id _
  preserves := by
    intro p x hx
    by_cases hp : p = 0
    · change x ∈ target.group p
      simp [target,hp]
    · change x ∈ target.group p
      simpa [properSource,target,hp] using hx

theorem proper_F0 : properSource.group 0 ≠ ⊤ := by
  intro h
  have mem : ((1,0) : Int × Int) ∈ properSource.group 0 := by rw [h]; trivial
  have bad : (1 : Int) = 0 := mem
  omega

theorem final_relations_proper : allTargetRelations properSource target identity 0 1 = vertical := by
  rw [allTargetRelations_final]
  simp [properSource,target,identity]

theorem whole_image_would_overkill :
    ((1,0) : Int × Int) ∈ identity.hom.range ∧
    ((1,0) : Int × Int) ∉ allTargetRelations properSource target identity 0 1 := by
  constructor
  · exact ⟨(1,0),rfl⟩
  · rw [final_relations_proper]
    intro h
    have bad : (1 : Int) = 0 := h
    omega

def y : target.group 0 := ⟨(0,1),trivial⟩

def pageZeroClass : AllTargetPage properSource target identity 0 0 :=
  QuotientAddGroup.mk' _ y

theorem page_zero_nonzero : pageZeroClass ≠ 0 := by
  intro h
  have mem := (QuotientAddGroup.eq_zero_iff y).mp h
  change y.val ∈ allTargetRelations properSource target identity 0 0 at mem
  rw [allTargetRelations_zero] at mem
  have bad : ((0,1) : Int × Int) = 0 := mem
  have : (1 : Int) = 0 := congrArg Prod.snd bad
  omega

theorem source_zero_step_kills :
    allTargetAdvance properSource target identity 0 0 pageZeroClass = 0 := by
  apply (QuotientAddGroup.eq_zero_iff y).mpr
  change y.val ∈ allTargetRelations properSource target identity 0 1
  rw [final_relations_proper]
  rfl

theorem stable_beyond_target (n : Nat) (hn : 1 ≤ n) :
    allTargetRelations properSource target identity 0 n = vertical := by
  rw [allTargetRelations_stable properSource target identity 0 n hn]
  exact final_relations_proper

#print axioms proper_F0
#print axioms final_relations_proper
#print axioms whole_image_would_overkill
#print axioms page_zero_nonzero
#print axioms source_zero_step_kills
#print axioms stable_beyond_target
end FilteredMapGradedReview
