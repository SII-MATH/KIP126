import ExtComplexCertificates.ActualDifferentialCoordinates
import ExtComplexCertificates.ActualExactnessExamples
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Tactic.IntervalCases

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates LinearCertificates ResolutionCertificates
open scoped BigOperators

def scalarBool (a : ZMod 2) : Bool := a.val == 1

theorem boolScalar_scalarBool (a : ZMod 2) : boolScalar (scalarBool a) = a := by
  have h := scalar_parity a.val
  simpa [scalarBool,Nat.mod_eq_of_lt a.val_lt] using h

theorem boolScalar_xor (a b : Bool) : boolScalar (xor a b) = boolScalar a + boolScalar b := by
  cases a <;> cases b <;> decide

theorem boolScalar_and (a b : Bool) : boolScalar (a && b) = boolScalar a * boolScalar b := by
  cases a <;> cases b <;> rfl

def matrixScalarAction (A : LinearCertificates.Matrix m n) (v : Fin n → ZMod 2) : Fin m → ZMod 2 :=
  fun i => ∑ j, boolScalar (A i j) * v j

theorem dot_scalar (a b : Vec n) : boolScalar (dot a b) = ∑ i, boolScalar (a i) * boolScalar (b i) := by
  induction n with
  | zero => simp [dot,boolScalar]
  | succ n ih =>
    rw [dot,boolScalar_xor,boolScalar_and,ih,Fin.sum_univ_succ]

theorem eval_scalar (A : LinearCertificates.Matrix m n) (v : Fin n → ZMod 2) :
    (fun i => boolScalar (eval A (fun j => scalarBool (v j)) i)) = matrixScalarAction A v := by
  funext i
  rw [eval,dot_scalar]
  simp only [boolScalar_scalarBool,matrixScalarAction]

theorem exactAt_scalar (A : LinearCertificates.Matrix k m) (B : LinearCertificates.Matrix m n)
    (hex : ExactAt A B) (v : Fin m → ZMod 2) (hv : matrixScalarAction A v = 0) :
    ∃ w : Fin n → ZMod 2, matrixScalarAction B w = v := by
  have hb : InKernel A (fun j => scalarBool (v j)) := by
    funext i
    apply boolScalar_injective
    have hh := congrFun (eval_scalar A v) i
    rw [hv] at hh
    exact hh
  obtain ⟨w,hw⟩ := hex.2 _ hb
  refine ⟨fun j => boolScalar (w j),?_⟩
  funext i
  have hh := congrArg boolScalar (congrFun hw i)
  rw [eval,dot_scalar,boolScalar_scalarBool] at hh
  exact hh

theorem positive_scalar_kernel (s t : Nat) (v : Fin (freeBasis actualRows (s+1) t).length → ZMod 2)
    (hv : coordinateMatrixAction s t v = 0) :
    matrixScalarAction (augmentedOutgoing actualRows (s+1) t) v = 0 := by
  funext i
  have hi : i.val < (freeBasis actualRows s t).length := by simpa using i.isLt
  have hh := congrFun hv ⟨i.val,hi⟩
  change (∑ j, boolScalar (augmentedOutgoing actualRows (s+1) t i j) * v j) = 0
  change (∑ j, boolScalar (freeDifferential actualRows s t ⟨i.val,hi⟩ j) * v j) = 0 at hh
  rw [← hh]
  apply Finset.sum_congr rfl
  intro j hj
  congr 2
  simp [augmentedOutgoing,freeDifferential,hi]
  rfl

theorem homogeneous_exact_of_certificate (s t : Nat) (ht : t ≤ 8)
    (hex : ExactAt (augmentedOutgoing actualRows (s+1) t) (freeDifferential actualRows (s+1) t))
    (x : ActualFreeModule) (hx : ModuleHomogeneous (s+1) t x)
    (hcycle : actualDifferential x = 0) :
    ∃ y : ActualFreeModule, ModuleHomogeneous (s+2) t y ∧ actualDifferential y = x := by
  let v := extractListComponent (s+1) t ht x
  have hv : coordinateMatrixAction s t v = 0 := by
    rw [← differential_extract_reconstruct s t ht v,reconstruct_extract_list (s+1) t ht x hx,hcycle]
    funext j
    simp [extractListComponent,extractComponent,Finsupp.zero_apply,rankDual_zero_apply]
  obtain ⟨w,hw⟩ := exactAt_scalar _ _ hex v (positive_scalar_kernel s t v hv)
  refine ⟨reconstructListComponent (s+2) t ht w,reconstructComponent_homogeneous _ _ _,?_⟩
  rw [differential_reconstruct (s+1) t ht w]
  change reconstructListComponent (s+1) t ht (matrixScalarAction _ w) = x
  rw [hw]
  exact reconstruct_extract_list (s+1) t ht x hx

theorem actualExactAt (s t : Nat) (hst : s ≤ t) (ht : t ≤ 8) :
    ExactAt (augmentedOutgoing actualRows s t) (freeDifferential actualRows s t) := by
  interval_cases t
  · have hs : s ≤ 0 := hst
    interval_cases s
    · exact exactCase0_0
  · have hs : s ≤ 1 := hst
    interval_cases s
    · exact exactCase0_1
    · exact exactCase1_1
  · have hs : s ≤ 2 := hst
    interval_cases s
    · exact exactCase0_2
    · exact exactCase1_2
    · exact exactCase2_2
  · have hs : s ≤ 3 := hst
    interval_cases s
    · exact exactCase0_3
    · exact exactCase1_3
    · exact exactCase2_3
    · exact exactCase3_3
  · have hs : s ≤ 4 := hst
    interval_cases s
    · exact exactCase0_4
    · exact exactCase1_4
    · exact exactCase2_4
    · exact exactCase3_4
    · exact exactCase4_4
  · have hs : s ≤ 5 := hst
    interval_cases s
    · exact exactCase0_5
    · exact exactCase1_5
    · exact exactCase2_5
    · exact exactCase3_5
    · exact exactCase4_5
    · exact exactCase5_5
  · have hs : s ≤ 6 := hst
    interval_cases s
    · exact exactCase0_6
    · exact exactCase1_6
    · exact exactCase2_6
    · exact exactCase3_6
    · exact exactCase4_6
    · exact exactCase5_6
    · exact exactCase6_6
  · have hs : s ≤ 7 := hst
    interval_cases s
    · exact exactCase0_7
    · exact exactCase1_7
    · exact exactCase2_7
    · exact exactCase3_7
    · exact exactCase4_7
    · exact exactCase5_7
    · exact exactCase6_7
    · exact exactCase7_7
  · have hs : s ≤ 8 := hst
    interval_cases s
    · exact exactCase0_8
    · exact exactCase1_8
    · exact exactCase2_8
    · exact exactCase3_8
    · exact exactCase4_8
    · exact exactCase5_8
    · exact exactCase6_8
    · exact exactCase7_8
    · exact exactCase8_8

/-- Every positive-filtration homogeneous cycle in the verified degree range
is a boundary in the actual free module over RankDual 3. -/
theorem actualHomogeneousExactness (s t : Nat) (hst : s+1 ≤ t) (ht : t ≤ 8)
    (x : ActualFreeModule) (hx : ModuleHomogeneous (s+1) t x)
    (hcycle : actualDifferential x = 0) :
    ∃ y : ActualFreeModule, ModuleHomogeneous (s+2) t y ∧ actualDifferential y = x :=
  homogeneous_exact_of_certificate s t ht (actualExactAt (s+1) t hst ht) x hx hcycle

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem actualRows_s_le_t : ∀ i : ActualIndex, (actualRow i).s ≤ (actualRow i).t := by decide

theorem homogeneous_above_diagonal_zero (s t : Nat) (hst : t < s) (x : ActualFreeModule)
    (hx : ModuleHomogeneous s t x) : x = 0 := by
  ext i
  funext m
  change x i m = 0
  apply hx i m
  have hg := actualRows_s_le_t i
  by_cases hs : (actualRow i).s = s
  · right
    omega
  · exact Or.inl hs

/-- Positive-filtration exactness for every s and t<=8, including zero
components above the diagonal. -/
theorem actualPositiveHomogeneousExactness (s t : Nat) (ht : t ≤ 8)
    (x : ActualFreeModule) (hx : ModuleHomogeneous (s+1) t x)
    (hcycle : actualDifferential x = 0) :
    ∃ y : ActualFreeModule, ModuleHomogeneous (s+2) t y ∧ actualDifferential y = x := by
  by_cases hst : s+1 ≤ t
  · exact actualHomogeneousExactness s t hst ht x hx hcycle
  · have hz := homogeneous_above_diagonal_zero (s+1) t (by omega) x hx
    refine ⟨0,?_,?_⟩
    · intro i m hm
      simp [Finsupp.zero_apply,rankDual_zero_apply]
    · simp [hz]

#print axioms actualPositiveHomogeneousExactness
end ExtComplexCertificates.ActualResolution
