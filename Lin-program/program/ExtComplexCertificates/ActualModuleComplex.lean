import ExtComplexCertificates.ActualResolutionRing
import Mathlib.LinearAlgebra.Finsupp.LinearCombination

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates
open scoped BigOperators

abbrev ActualIndex := Fin actualRows.length
abbrev ActualRing := RankDual 3
abbrev ActualFreeModule := ActualIndex →₀ ActualRing

def actualRow (i : ActualIndex) : RawGenerator := actualRows[i.val]

def edgeTerms (i j : ActualIndex) : List Monomial :=
  ((actualRow i).differential.filter fun t =>
    decide ((actualRow j).s + 1 = (actualRow i).s ∧
      (actualRow j).local_id = t.target_local_id)).map fun t => t.milnor.take 3

def edgeCoefficient (i j : ActualIndex) : ActualRing :=
  ((edgeTerms i j).map fun m => polynomialRankFunctional 3 [m]).sum

noncomputable def basisBoundary (i : ActualIndex) : ActualFreeModule :=
  ∑ j : ActualIndex, Finsupp.single j (edgeCoefficient i j)

/-- Free left-module extension. Coefficients multiply boundary entries on the
left, so two-step products have the raw outer * inner order. -/
noncomputable def actualDifferential : ActualFreeModule →ₗ[ActualRing] ActualFreeModule :=
  Finsupp.linearCombination ActualRing basisBoundary

theorem basisBoundary_apply (i j : ActualIndex) : basisBoundary i j = edgeCoefficient i j := by
  classical
  simp [basisBoundary,Finset.sum_apply',Finsupp.single_apply]

theorem actualDifferential_single (i : ActualIndex) (a : ActualRing) :
    actualDifferential (Finsupp.single i a) = a • basisBoundary i := by
  simp [actualDifferential]

theorem differential_basis_apply (i k : ActualIndex) :
    actualDifferential (basisBoundary i) k = ∑ j : ActualIndex, edgeCoefficient i j * edgeCoefficient j k := by
  classical
  unfold basisBoundary
  rw [map_sum]
  simp only [actualDifferential_single,Finset.sum_apply',Finsupp.smul_apply,smul_eq_mul]
  apply Finset.sum_congr rfl
  intro j hj
  rw [basisBoundary_apply]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem edge_degree_descends : ∀ i j : ActualIndex, (edgeTerms i j).isEmpty = false →
    (actualRow j).s + 1 = (actualRow i).s := by decide

def pathPairs (i k : ActualIndex) : List (Monomial × Monomial) :=
  (List.finRange actualRows.length).flatMap fun j =>
    (edgeTerms i j).flatMap fun a => (edgeTerms j k).map fun b => (a,b)

def queryPairs (i k : ActualIndex) : List (Monomial × Monomial) :=
  if (actualRow k).s + 2 = (actualRow i).s then
    (((composeRaw actualRows (actualRow i)).terms.filter fun t =>
      t.target == (actualRow k).local_id).map fun t => (t.left,t.right)) else []

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem actual_pathPairs : ∀ i k : ActualIndex, (pathPairs i k).Perm (queryPairs i k) := by decide

theorem list_pair_products (as bs : List Monomial) :
    (as.map fun a => polynomialRankFunctional 3 [a]).sum *
      (bs.map fun b => polynomialRankFunctional 3 [b]).sum =
    ((as.flatMap fun a => bs.map fun b => (a,b)).map fun t =>
      polynomialRankFunctional 3 [t.1] * polynomialRankFunctional 3 [t.2]).sum := by
  induction as with
  | nil => simp
  | cons a as ih =>
    simp only [List.map_cons,List.sum_cons,add_mul,List.flatMap_cons,List.map_append,List.sum_append,ih]
    rw [← List.sum_map_mul_left,List.map_map]
    rfl

theorem pathPairs_sum (i k : ActualIndex) :
    (∑ j : ActualIndex, edgeCoefficient i j * edgeCoefficient j k) =
      ((pathPairs i k).map fun t => polynomialRankFunctional 3 [t.1] * polynomialRankFunctional 3 [t.2]).sum := by
  classical
  unfold pathPairs
  rw [List.map_flatMap]
  have hflat (p : List ActualIndex) (f : ActualIndex → List ActualRing) :
      (p.flatMap f).sum = (p.map fun a => (f a).sum).sum := by
    induction p with
    | nil => simp
    | cons a p ih => simp [ih]
  rw [hflat]
  have hr : (List.finRange actualRows.length).toFinset = Finset.univ := by ext j; simp
  rw [← List.sum_toFinset _ (List.nodup_finRange actualRows.length),hr]
  apply Finset.sum_congr rfl
  intro j hj
  exact list_pair_products _ _

theorem matrix_square_zero (i k : ActualIndex) :
    (∑ j : ActualIndex, edgeCoefficient i j * edgeCoefficient j k) = 0 := by
  rw [pathPairs_sum]
  rw [(List.Perm.map (fun t => polynomialRankFunctional 3 [t.1] * polynomialRankFunctional 3 [t.2])
    (actual_pathPairs i k)).sum_eq]
  unfold queryPairs
  split
  · rw [List.map_map]
    exact actualResolutionRingSquareZero (actualRow i)
      (List.getElem_mem i.isLt) (actualRow k).local_id
  · simp

theorem actualDifferential_basis_square_zero (i : ActualIndex) :
    actualDifferential (basisBoundary i) = 0 := by
  ext k
  rw [differential_basis_apply,matrix_square_zero]
  rfl

/-- The free left-module linear differential squares to zero. This is the
actual imported resolution boundary, with coefficients in RankDual 3. -/
theorem actualDifferential_square_zero : actualDifferential.comp actualDifferential = 0 := by
  apply Finsupp.lhom_ext
  intro i a
  simp only [LinearMap.comp_apply,actualDifferential_single,map_smul,
    actualDifferential_basis_square_zero,smul_zero,LinearMap.zero_apply]

theorem differential_degree_descends (i j : ActualIndex)
    (h : basisBoundary i j ≠ 0) : (actualRow j).s + 1 = (actualRow i).s := by
  apply edge_degree_descends i j
  cases he : (edgeTerms i j).isEmpty with
  | false => rfl
  | true =>
    have hn : edgeTerms i j = [] := List.isEmpty_iff.mp he
    have hz : basisBoundary i j = 0 := by rw [basisBoundary_apply]; simp [edgeCoefficient,hn]
    exact False.elim (h hz)

#print axioms actualDifferential_square_zero
#print axioms differential_degree_descends
end ExtComplexCertificates.ActualResolution
