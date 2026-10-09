import Stem125ConstrainedE5.Basic

namespace Stem125ConstrainedE5
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates Stem125E5Search

abbrev Whole (c : Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :=
  WholeE5 (embed c) zeroCenters

/-- All 17 explicit centers and 28 arbitrary-neighbor zero centers are retained. -/
noncomputable def equivalence (c : Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    Whole c zeroCenters ≃ Vec (dimension c) := wholeEquiv (embed c) zeroCenters

theorem cardinality (c : Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    Nat.card (Whole c zeroCenters) = 2 ^ dimension c := whole_cardinality (embed c) zeroCenters

theorem preserves_addition (c : Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter)
    (x y : Whole c zeroCenters) :
    equivalence c zeroCenters (wholeAdd (embed c) zeroCenters x y) =
      add (equivalence c zeroCenters x) (equivalence c zeroCenters y) :=
  whole_preserves_addition (embed c) zeroCenters x y

theorem all_classes_represented (c : Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter)
    (x : Whole c zeroCenters) : ∃ v : Vec (dimension c), (equivalence c zeroCenters).symm v = x :=
  ⟨equivalence c zeroCenters x,(equivalence c zeroCenters).symm_apply_apply x⟩

theorem coordinate_equality (c : Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter)
    (x y : Whole c zeroCenters) : equivalence c zeroCenters x = equivalence c zeroCenters y ↔ x = y :=
  (equivalence c zeroCenters).injective.eq_iff

theorem cardinality_bounds (c : Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    8 ≤ Nat.card (Whole c zeroCenters) ∧ Nat.card (Whole c zeroCenters) ≤ 64 := by
  rw [cardinality]
  have h := dimension_bounds c
  have hd : dimension c = 3 ∨ dimension c = 4 ∨ dimension c = 5 ∨ dimension c = 6 := by omega
  rcases hd with h | h | h | h <;> rw [h] <;> decide

#print axioms cardinality
#print axioms preserves_addition
#print axioms all_classes_represented
#print axioms coordinate_equality
#print axioms cardinality_bounds
end Stem125ConstrainedE5
