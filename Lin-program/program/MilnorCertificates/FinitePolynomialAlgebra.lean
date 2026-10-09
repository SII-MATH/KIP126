import MilnorCertificates.GradedDual

namespace MilnorCertificates

/-- Finite polynomial lists interpreted in the actual finite-support subring. -/
def finitePolynomial (rank : Nat) (p : Polynomial) : FiniteGradedDual rank :=
  ⟨polynomialRankFunctional rank p,polynomialRankFunctional_bounded rank p⟩

theorem finitePolynomial_mul (rank : Nat) (left right output : Polynomial)
    (h : IsMilnorProductAll rank left right output) :
    finitePolynomial rank left * finitePolynomial rank right = finitePolynomial rank output := by
  apply Subtype.ext
  exact certified_rankDual_mul rank left right output h

theorem finitePolynomial_one (rank : Nat) : finitePolynomial rank [unitMonomial rank] = 1 := by
  apply Subtype.ext
  exact unit_rankDual rank

theorem finitePolynomial_zero (rank : Nat) : finitePolynomial rank [] = 0 := by
  apply Subtype.ext
  funext m
  change boolScalar (coefficient [] m.val) = 0
  rfl

theorem finitePolynomial_apply (rank : Nat) (p : Polynomial) (m : RankMonomial rank) :
    (finitePolynomial rank p).val m = boolScalar (coefficient p m.val) := rfl

/-- The inclusion preserves actual convolution, so zero equalities in the
full dual reflect back to the finite-support ring. -/
theorem finiteGraded_zero_of_coe_zero (rank : Nat) (a : FiniteGradedDual rank)
    (h : (a : RankDual rank) = 0) : a = 0 := Subtype.ext h

/-- A finite sum of polynomial products is zero in the finite ring whenever
its already verified image is zero in the full dual. Multiplicities are kept. -/
theorem finitePolynomial_sum_products_zero (rank : Nat) (pairs : List (Polynomial × Polynomial))
    (h : (pairs.map fun p => polynomialRankFunctional rank p.1 * polynomialRankFunctional rank p.2).sum = 0) :
    (pairs.map fun p => finitePolynomial rank p.1 * finitePolynomial rank p.2).sum = 0 := by
  apply finiteGraded_zero_of_coe_zero
  have he : ((pairs.map fun p => finitePolynomial rank p.1 * finitePolynomial rank p.2).sum : RankDual rank) =
      (pairs.map fun p => polynomialRankFunctional rank p.1 * polynomialRankFunctional rank p.2).sum := by
    clear h
    induction pairs with
    | nil => rfl
    | cons p ps ih =>
      simp only [List.map_cons,List.sum_cons,Subring.coe_add,Subring.coe_mul,ih]
      rfl
  exact he.trans h

#print axioms finitePolynomial_mul
#print axioms finitePolynomial_sum_products_zero
end MilnorCertificates
