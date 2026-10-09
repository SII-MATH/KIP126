import PageTransitionCertificates.Quotient
import Mathlib.Logic.Equiv.Defs

namespace HomologyCoordinateChoice
open LinearCertificates PageTransitionCertificates

/-- Two checked contractions of the same whole complex provide coordinate
systems for the same cycle/boundary quotient. Their chosen bases may differ. -/
def equivalence (outgoing : Matrix k m) (incoming : Matrix m n)
    (first : Comparison k m n h) (second : Comparison k m n j)
    (hf : HomologyComparison outgoing incoming first)
    (hs : HomologyComparison outgoing incoming second) : Vec h ≃ Vec j where
  toFun x := (homologyEquivalence outgoing incoming second hs).toCoordinates
    ((homologyEquivalence outgoing incoming first hf).fromCoordinates x)
  invFun x := (homologyEquivalence outgoing incoming first hf).toCoordinates
    ((homologyEquivalence outgoing incoming second hs).fromCoordinates x)
  left_inv x := by
    dsimp only
    rw [(homologyEquivalence outgoing incoming second hs).leftInverse]
    exact (homologyEquivalence outgoing incoming first hf).rightInverse x
  right_inv x := by
    dsimp only
    rw [(homologyEquivalence outgoing incoming first hf).leftInverse]
    exact (homologyEquivalence outgoing incoming second hs).rightInverse x

theorem coordinates_compatible (outgoing : Matrix k m) (incoming : Matrix m n)
    (first : Comparison k m n h) (second : Comparison k m n j)
    (hf : HomologyComparison outgoing incoming first)
    (hs : HomologyComparison outgoing incoming second)
    (x : Homology outgoing incoming) :
    equivalence outgoing incoming first second hf hs
      ((homologyEquivalence outgoing incoming first hf).toCoordinates x) =
      (homologyEquivalence outgoing incoming second hs).toCoordinates x := by
  change (homologyEquivalence outgoing incoming second hs).toCoordinates
    ((homologyEquivalence outgoing incoming first hf).fromCoordinates
      ((homologyEquivalence outgoing incoming first hf).toCoordinates x)) = _
  rw [(homologyEquivalence outgoing incoming first hf).leftInverse]

theorem equivalence_apply (outgoing : Matrix k m) (incoming : Matrix m n)
    (first : Comparison k m n h) (second : Comparison k m n j)
    (hf : HomologyComparison outgoing incoming first)
    (hs : HomologyComparison outgoing incoming second) (x : Vec h) :
    equivalence outgoing incoming first second hf hs x =
      eval second.projection (eval first.inclusion x) := rfl

theorem equivalence_add (outgoing : Matrix k m) (incoming : Matrix m n)
    (first : Comparison k m n h) (second : Comparison k m n j)
    (hf : HomologyComparison outgoing incoming first)
    (hs : HomologyComparison outgoing incoming second) (x y : Vec h) :
    equivalence outgoing incoming first second hf hs (add x y) =
      add (equivalence outgoing incoming first second hf hs x)
        (equivalence outgoing incoming first second hf hs y) := by
  simp only [equivalence_apply,eval_add]

#print axioms equivalence
#print axioms coordinates_compatible
#print axioms equivalence_apply
#print axioms equivalence_add
end HomologyCoordinateChoice
