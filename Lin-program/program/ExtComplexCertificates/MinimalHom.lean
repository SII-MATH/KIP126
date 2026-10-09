import ExtComplexCertificates.RawResolutionExample
import LinearCertificates.Basic

namespace ExtComplexCertificates.ActualResolution

/-- The augmentation of a Milnor monomial is its constant coefficient. -/
def augmentationCoefficient (m : List Nat) : Bool := m.all (· == 0)

def minimalCheck (rows : List RawGenerator) : Bool :=
  rawCheck rows && rows.all fun r => r.differential.all fun term =>
    decide (0 < MilnorCertificates.weight term.milnor) && !augmentationCoefficient term.milnor

/-- A functional is specified on every free generator of the target homological
degree. Precomposition weights its values by the algebra augmentation. -/
def homDifferentialValue (r : RawGenerator) (functional : Nat → Bool) : Bool :=
  (r.differential.filter fun term =>
    augmentationCoefficient term.milnor && functional term.target_local_id).length % 2 == 1

def MinimalHomValid (rows : List RawGenerator) : Prop :=
  rawCheck rows = true ∧
  (∀ r ∈ rows, ∀ term ∈ r.differential, 0 < MilnorCertificates.weight term.milnor) ∧
  ∀ r ∈ rows, ∀ functional, homDifferentialValue r functional = false

theorem minimalCheck_sound (rows : List RawGenerator) (h : minimalCheck rows = true) :
    MinimalHomValid rows := by
  simp only [minimalCheck, Bool.and_eq_true, List.all_eq_true, decide_eq_true_eq] at h
  refine ⟨h.1, fun r hr term ht => (h.2 r hr term ht).1, ?_⟩
  intro r hr f
  have hf : r.differential.filter (fun term => augmentationCoefficient term.milnor && f term.target_local_id) = [] := by
    apply List.filter_eq_nil_iff.mpr
    intro term ht
    have hz := (h.2 r hr term ht).2
    cases he : augmentationCoefficient term.milnor <;> simp_all
  simp [homDifferentialValue, hf]

def actualHomDimension (s t : Nat) : Nat :=
  (actualRows.filter fun r => r.s == s && r.t == t).length

/-- The finite Hom carrier has one coordinate for every raw generator. -/
abbrev HomCoordinates (s t : Nat) := LinearCertificates.Vec (actualHomDimension s t)

def coordinateDifferential (s t : Nat) (f : HomCoordinates s t) : HomCoordinates (s+1) t :=
  fun i => homDifferentialValue
    ((actualRows.filter fun r => r.s == s+1 && r.t == t)[i.val]'i.isLt)
    (fun localId =>
      (((actualRows.filter fun r => r.s == s && r.t == t).zip (List.range (actualHomDimension s t))).filter
        (fun pair => pair.1.local_id == localId)).any fun pair =>
          if h : pair.2 < actualHomDimension s t then f ⟨pair.2,h⟩ else false)

theorem actual_minimal_hom : MinimalHomValid actualRows := minimalCheck_sound actualRows (by decide)

/-- Every assignment of F2 values to the actual generators is killed by
precomposition with the raw differential. -/
theorem actual_all_functionals_zero (r : RawGenerator) (hr : r ∈ actualRows) (f : Nat → Bool) :
    homDifferentialValue r f = false := actual_minimal_hom.2.2 r hr f

theorem coordinateDifferential_zero (s t : Nat) (f : HomCoordinates s t) :
    coordinateDifferential s t f = LinearCertificates.zero := by
  funext i
  apply actual_all_functionals_zero
  exact List.mem_of_mem_filter (List.getElem_mem _)

/-- Every cochain is a cycle; every produced boundary is the zero cochain. -/
theorem all_cochains_cycles (s t : Nat) : ∀ f : HomCoordinates s t,
    coordinateDifferential s t f = LinearCertificates.zero := coordinateDifferential_zero s t

theorem boundaries_only_zero (s t : Nat) (y : HomCoordinates (s+1) t) :
    (∃ f, coordinateDifferential s t f = y) ↔ y = LinearCertificates.zero := by
  constructor
  · rintro ⟨f,hf⟩
    exact hf.symm.trans (coordinateDifferential_zero s t f)
  · intro hy
    exact ⟨LinearCertificates.zero, (coordinateDifferential_zero s t _).trans hy.symm⟩

#print axioms actual_minimal_hom

end ExtComplexCertificates.ActualResolution
