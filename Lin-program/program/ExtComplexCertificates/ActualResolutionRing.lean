import ExtComplexCertificates.RawResolutionExample
import MilnorCertificates.BundledDual

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates

/-- Sum of the actual reconstructed two-step products in the bundled ring. -/
def queryRingCoefficient (q : Query) (target : Nat) : RankDual 3 :=
  ((q.terms.filter fun t => t.target == target).map fun t =>
    polynomialRankFunctional 3 [t.left] * polynomialRankFunctional 3 [t.right]).sum

def queryDegreeBound (q : Query) : Bool := q.terms.all fun t =>
  decide (t.left.length = 3 ∧ t.right.length = 3 ∧ weight t.left + weight t.right ≤ 8)

theorem rank_sum_apply (p : List (RankDual 3)) (m : RankMonomial 3) :
    p.sum m = (p.map fun f => f m).sum := by
  induction p with
  | nil => rfl
  | cons f p ih => simp only [List.sum_cons,rankDual_add_apply,List.map_cons,ih]

theorem single_product_apply (a b : Monomial) (m : RankMonomial 3) :
    (polynomialRankFunctional 3 [a] * polynomialRankFunctional 3 [b]) m =
      boolScalar (pairTensor [a] [b] (coproduct 3 m.val)) := by
  rw [rankDual_mul_apply,pairTensor_scalar]
  change dualMul 3 _ _ m.val = dualMul 3 _ _ m.val
  apply dualMul_congr 3 _ _ _ _ _ _ m.val m.property
  · intro n hn
    simp [extendRank,hn,polynomialRankFunctional]
  · intro n hn
    simp [extendRank,hn,polynomialRankFunctional]

theorem queryRingCoefficient_apply (q : Query) (target : Nat) (m : RankMonomial 3) :
    queryRingCoefficient q target m = boolScalar (compositeCoefficient q target m.val) := by
  unfold queryRingCoefficient
  rw [rank_sum_apply,List.map_map]
  change (((q.terms.filter fun t => t.target == target).map fun t =>
    (polynomialRankFunctional 3 [t.left] * polynomialRankFunctional 3 [t.right]) m)).sum = _
  simp only [single_product_apply]
  rw [compositeCoefficient,scalar_parity,filter_scalar_sum]
  induction q.terms with
  | nil => simp
  | cons t ts ih =>
    cases ht : t.target == target <;>
      simp only [List.filter_cons,ht,Bool.false_and,Bool.true_and,Bool.false_eq_true,ite_false,ite_true,List.map_cons,List.sum_cons,ih]
    · simp [boolScalar]

theorem query_all_coefficients (q : Query) (hb : queryDegreeBound q = true)
    (hz : SquareZeroInWindow q) (target : Nat) (m : Monomial) (hm : m.length = 3) :
    compositeCoefficient q target m = false := by
  by_cases hw : weight m ≤ 8
  · exact hz target m (basis_complete 3 8 m hm hw)
  · have hf : q.terms.filter (fun t => t.target == target &&
        pairTensor [t.left] [t.right] (coproduct 3 m)) = [] := by
      apply List.filter_eq_nil_iff.mpr
      intro t ht
      have ht' := of_decide_eq_true (List.all_eq_true.mp hb t ht)
      have hp := product_degree_support 3 (weight t.left) (weight t.right) [t.left] [t.right]
        (by simp) (by simp) m hm (by omega)
      simp [hp]
    simp [compositeCoefficient,hf]

theorem queryRingCoefficient_zero (q : Query) (hb : queryDegreeBound q = true)
    (hz : SquareZeroInWindow q) (target : Nat) : queryRingCoefficient q target = 0 := by
  funext m
  rw [queryRingCoefficient_apply,query_all_coefficients q hb hz target m.val m.property]
  rfl

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem actualComposition_degreeBound :
    actualRows.all (fun r => queryDegreeBound (composeRaw actualRows r)) = true := by decide

/-- The original S0 resolution records give zero two-step composition in
RankDual 3 itself, on every monomial and for every target identifier. -/
theorem actualResolutionRingSquareZero (r : RawGenerator) (hr : r ∈ actualRows) (target : Nat) :
    queryRingCoefficient (composeRaw actualRows r) target = 0 :=
  queryRingCoefficient_zero _ (List.all_eq_true.mp actualComposition_degreeBound r hr)
    (actualResolutionSquareZero.2 r hr) target

#print axioms queryRingCoefficient_zero
#print axioms actualResolutionRingSquareZero
end ExtComplexCertificates.ActualResolution
