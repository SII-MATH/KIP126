import FilteredMapExtension.NextPage

namespace FilteredMapExtension.Examples
open FilteredRepresentativeCrossing

def first : (Int × Int) →+ Int where
  toFun x := x.1
  map_zero' := rfl
  map_add' _ _ := rfl

def sum : (Int × Int) →+ Int where
  toFun x := x.1+x.2
  map_zero' := rfl
  map_add' x y := by change (x.1+y.1)+(x.2+y.2)=(x.1+x.2)+(y.1+y.2); abel

/-- At source filtration1 only the second coordinate is higher; at2 it vanishes. -/
def F : Filtration (Int × Int) where
  group p := if p=0 then ⊤ else if p=1 then first.ker else ⊥
  decreasing := by
    intro p q hpq x hx
    by_cases h0 : p=0
    · subst p; trivial
    by_cases h1 : p=1
    · subst p
      by_cases hq : q=1
      · subst q; exact hx
      · have hz : x=0 := by simpa [show q≠0 by omega,hq] using hx
        subst x; exact (if (1:Nat)=0 then ⊤ else if (1:Nat)=1 then first.ker else ⊥).zero_mem
    · have hq0 : q≠0 := by omega
      have hq1 : q≠1 := by omega
      simpa [h0,h1,hq0,hq1] using hx

/-- The target is unchanged through filtration1, then zero. -/
def G : Filtration Int where
  group p := if p≤1 then ⊤ else ⊥
  decreasing := by
    intro p q hpq x hx
    by_cases hp : p≤1
    · simp [hp]
    · have hq : ¬ q≤1 := by omega
      simpa [hp,hq] using hx

def firstFiltered : FilteredMap F G where
  hom := first
  preserves := by
    intro p x hx
    by_cases hp : p≤1
    · change first x ∈ G.group p; simp [G,hp]
    · have hx0 : x=0 := by simpa [F,show p≠0 by omega,show p≠1 by omega] using hx
      subst x
      exact (G.group p).zero_mem

def sumFiltered : FilteredMap F G where
  hom := sum
  preserves := by
    intro p x hx
    by_cases hp : p≤1
    · change sum x ∈ G.group p; simp [G,hp]
    · have hx0 : x=0 := by simpa [F,show p≠0 by omega,show p≠1 by omega] using hx
      subst x
      exact (G.group p).zero_mem

def firstX : cycles F G firstFiltered 0 1 := ⟨(1,0),by constructor <;> trivial⟩
def sumX : cycles F G sumFiltered 0 1 := ⟨(1,0),by constructor <;> trivial⟩

theorem first_nonzero : differential F G firstFiltered 0 1
    (sourceClass F G firstFiltered 0 1 firstX) ≠ 0 := by
  intro h
  obtain ⟨a,ha,higher⟩ := (differential_zero_iff F G firstFiltered 0 1 firstX).mp h
  have ha0 : a.1=0 := ha.1
  have bad : (1 : Int)-a.1=0 := higher
  omega

theorem sum_source_nonzero : sourceClass F G sumFiltered 0 1 sumX ≠ 0 := by
  intro h
  have hh := (QuotientAddGroup.eq_zero_iff sumX).mp h
  have bad : (1 : Int)=0 := hh.1
  omega

/-- The original image is nonzero, but a nonzero higher-source correction
makes the representative a cycle at the next length. -/
theorem sum_requires_correction :
    sumFiltered.hom sumX.val ≠ 0 ∧
    differential F G sumFiltered 0 1 (sourceClass F G sumFiltered 0 1 sumX) = 0 := by
  constructor
  · change (1 : Int)≠0; omega
  · apply (differential_zero_iff F G sumFiltered 0 1 sumX).mpr
    refine ⟨(0,1),⟨rfl,trivial⟩,?_⟩
    change (1 : Int)-0+(0-1)=0
    omega

def corrected : cycles F G sumFiltered 0 2 :=
  ⟨(1,-1),⟨trivial,by change (1 : Int)+(-1)=0; omega⟩⟩

theorem corrected_same_class : nextToCurrent F G sumFiltered 0 1
    (sourceClass F G sumFiltered 0 2 corrected) = sourceClass F G sumFiltered 0 1 sumX := by
  apply (sourceClass_eq F G sumFiltered 0 1 _ _).mpr
  exact ⟨rfl,trivial⟩

theorem corrected_nonzero : sourceClass F G sumFiltered 0 2 corrected ≠ 0 := by
  intro hz
  have := congrArg (nextToCurrent F G sumFiltered 0 1) hz
  rw [corrected_same_class,map_zero] at this
  exact sum_source_nonzero this

theorem length_zero : cycles F G sumFiltered 0 0 = F.group 0 ∧
    corrections F G sumFiltered 0 0 = F.group 1 ∧
    targetRelations F G sumFiltered 0 0 = G.group 1 :=
  ⟨cycles_zero _ _ _ _,corrections_zero _ _ _ _,targetRelations_zero _ _ _ _⟩

#print axioms first_nonzero
#print axioms sum_source_nonzero
#print axioms sum_requires_correction
#print axioms corrected_same_class
#print axioms corrected_nonzero
#print axioms length_zero
end FilteredMapExtension.Examples
