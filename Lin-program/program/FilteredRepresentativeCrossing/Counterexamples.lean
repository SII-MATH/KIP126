import FilteredRepresentativeCrossing.Basic
import Mathlib.Data.ZMod.Basic

namespace FilteredRepresentativeCrossing.Counterexamples
open GeneralizedLeibnizAudit

def F : Filtration (ZMod 2) where
  group := fun n => if n = 0 then ⊤ else ⊥
  decreasing := by
    intro n m h x hx
    by_cases hn : n = 0
    · simp [hn]
    · have hm : m ≠ 0 := by omega
      simpa [hn,hm] using hx

/-- Images outside the inspected lower filtration are invisible to a range
test. The lower-image premise is therefore essential. -/
theorem lower_bound_needed :
    NoCrossing (AddMonoidHom.id (ZMod 2)) ⊤ F 1 2 ∧
      ¬ HigherMapsInto (AddMonoidHom.id (ZMod 2)) ⊤ (F.group 2) := by
  constructor
  · intro x hx p low high exactAt
    have hp : p = 1 := by omega
    subst p
    exact exactAt.2 (by simpa [F] using exactAt.1)
  · intro h
    have h1 := h 1 trivial
    change (1 : ZMod 2) ∈ F.group 2 at h1
    have bad : (1 : ZMod 2) = 0 := by simpa [F] using h1
    exact one_ne_zero bad

theorem empty_range {A B : Type*} [AddCommGroup A] [AddCommGroup B] (f : A →+ B)
    (H : AddSubgroup A) (G : Filtration B) (p : Nat) : NoCrossing f H G p p := by
  intro x hx k low high
  omega

#print axioms lower_bound_needed
#print axioms empty_range
end FilteredRepresentativeCrossing.Counterexamples
