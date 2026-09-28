import KIP126.Def.StableHomotopy.InverseSequence.Predicates

namespace KIP126.StableHomotopy

open CategoryTheory CategoryTheory.Limits

universe u v

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasProductsOfShape ℕ C]

/-- The projections of a Milnor triangle form a compatible cone. -/
theorem SequentialHomotopyLimit.π_step {D : InverseSequence C} {L : C}
    (H : SequentialHomotopyLimit D L) (n : ℕ) :
    H.π (n + 1) ≫ D.step n = H.π n := by
  sorry

/-- The explicit `1 - shift` condition means that the homotopy-limit
object vanishes; it is not a condition on an ordinary inverse limit. -/
theorem SequentialHomotopyLimit.isZero_iff {D : InverseSequence C} {L : C}
    (H : SequentialHomotopyLimit D L) : IsZero L ↔ D.IsAcyclic := by
  sorry

end KIP126.StableHomotopy
