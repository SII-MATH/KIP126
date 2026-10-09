import ExtComplexCertificates.ActualHomogeneousCoordinates

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates
open scoped BigOperators

noncomputable def coordinateVector (p : ComponentIndex s t) : ActualFreeModule :=
  Finsupp.single p.val.1 (polynomialRankFunctional 3 [p.val.2.val])

theorem singletonFunctional_apply (a : Monomial) (m : RankMonomial 3) :
    polynomialRankFunctional 3 [a] m = if a = m.val then (1 : ZMod 2) else 0 := by
  unfold polynomialRankFunctional polynomialFunctional coefficient
  by_cases h : a = m.val <;> simp [h,boolScalar]

theorem coordinateVector_apply (p : ComponentIndex s t) (i : ActualIndex) (m : RankMonomial 3) :
    coordinateVector p i m = if p.val.1 = i ∧ p.val.2.val = m.val then (1 : ZMod 2) else 0 := by
  classical
  unfold coordinateVector
  rw [Finsupp.single_apply]
  split
  next h => simp [h,singletonFunctional_apply]
  next h => simp [h,rankDual_zero_apply]

theorem actualDifferential_vector (p : ComponentIndex s t) (i : ActualIndex) :
    actualDifferential (coordinateVector p) i =
      polynomialRankFunctional 3 [p.val.2.val] * edgeCoefficient p.val.1 i := by
  rw [coordinateVector,actualDifferential_single,Finsupp.smul_apply,smul_eq_mul,basisBoundary_apply]

theorem differential_vector_entry (p : ComponentIndex (s+1) t) (q : ComponentIndex s t) :
    actualDifferential (coordinateVector p) q.val.1 q.val.2 =
      boolScalar (differentialEntry (componentPair s t q) (componentPair (s+1) t p)) := by
  classical
  rw [actualDifferential_vector]
  unfold edgeCoefficient
  rw [← List.sum_map_mul_left,rank_sum_apply,List.map_map]
  change (((edgeTerms p.val.1 q.val.1).map fun m =>
    (polynomialRankFunctional 3 [p.val.2.val] * polynomialRankFunctional 3 [m]) q.val.2)).sum = _
  simp only [single_product_apply]
  unfold edgeTerms differentialEntry componentPair
  rw [List.map_map,scalar_parity,filter_scalar_sum]
  have hs : (actualRow q.val.1).s + 1 = (actualRow p.val.1).s := by
    rw [p.property.1,q.property.1]
  simp only [hs,true_and,decide_eq_true_eq]
  induction (actualRow p.val.1).differential with
  | nil => simp
  | cons a as ih =>
    by_cases he : (actualRow q.val.1).local_id = a.target_local_id
    · have hd : decide ((actualRow q.val.1).local_id = a.target_local_id) = true := by simp [he]
      have he' : (a.target_local_id == (actualRow q.val.1).local_id) = true := by simp [he]
      simp only [List.filter_cons,hd,ite_true,List.map_cons,List.sum_cons,
        he',Bool.true_and,Function.comp_apply,ih]
    · have he' : (a.target_local_id == (actualRow q.val.1).local_id) = false := by simp [Ne.symm he]
      simp only [List.filter_cons,he,decide_false,Bool.false_eq_true,ite_false,List.map_cons,List.sum_cons,
        he',Bool.false_and]
      try simp only [Function.comp_apply] at *
      rw [ih]
      simp [boolScalar]

theorem module_sum_eval (xs : List ActualFreeModule) (i : ActualIndex) (m : RankMonomial 3) :
    xs.sum i m = (xs.map fun x => x i m).sum := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simp only [List.sum_cons,List.map_cons,Finsupp.add_apply,rankDual_add_apply,ih]

theorem module_finset_sum_eval {α : Type*} (s : Finset α) (f : α → ActualFreeModule)
    (i : ActualIndex) (m : RankMonomial 3) :
    (∑ a ∈ s, f a) i m = ∑ a ∈ s, f a i m := by
  classical
  induction s using Finset.induction_on with
  | empty => rfl
  | @insert a s ha ih => simp only [Finset.sum_insert ha,Finsupp.add_apply,rankDual_add_apply,ih]

theorem module_nsmul_eval (n : Nat) (x : ActualFreeModule) (i : ActualIndex) (m : RankMonomial 3) :
    (n • x) i m = (n : ZMod 2) * x i m := by
  induction n with
  | zero => simp [Finsupp.zero_apply,rankDual_zero_apply]
  | succ n ih => rw [succ_nsmul,Finsupp.add_apply,rankDual_add_apply,ih,Nat.cast_add,Nat.cast_one,add_mul,one_mul]

noncomputable def listCoordinateVector (s t : Nat) (ht : t ≤ 8)
    (j : Fin (freeBasis actualRows s t).length) : ActualFreeModule :=
  coordinateVector ((componentListEquiv s t ht).symm j)

noncomputable def sumCoordinateVectors (s t : Nat) (ht : t ≤ 8)
    (v : Fin (freeBasis actualRows s t).length → ZMod 2) : ActualFreeModule :=
  ∑ j, (v j).val • listCoordinateVector s t ht j

theorem reconstruct_as_sum (s t : Nat) (ht : t ≤ 8)
    (v : Fin (freeBasis actualRows s t).length → ZMod 2) :
    reconstructListComponent s t ht v = sumCoordinateVectors s t ht v := by
  classical
  ext i
  funext m
  rw [reconstructListComponent,reconstructComponent_apply,sumCoordinateVectors,module_finset_sum_eval]
  simp only [module_nsmul_eval,ZMod.natCast_zmod_val,listCoordinateVector,coordinateVector_apply]
  by_cases h : (actualRow i).s = s ∧ weight m.val + (actualRow i).t = t
  · let p : ComponentIndex s t := ⟨(i,m),h⟩
    have he (j : Fin (freeBasis actualRows s t).length) :
        (((componentListEquiv s t ht).symm j).val.1 = i ∧
          ((componentListEquiv s t ht).symm j).val.2.val = m.val) ↔ j = componentListEquiv s t ht p := by
      constructor
      · intro hh
        have hh' : (componentListEquiv s t ht).symm j = p :=
          Subtype.ext (Prod.ext hh.1 (Subtype.ext hh.2))
        simpa using congrArg (componentListEquiv s t ht) hh'
      · intro hh
        subst j
        simp [p]
    simp only [h,ite_true,he,mul_ite,mul_one,mul_zero,Finset.sum_ite_eq',Finset.mem_univ,ite_true]
    simp [p]
  · have he (j : Fin (freeBasis actualRows s t).length) :
        ¬ (((componentListEquiv s t ht).symm j).val.1 = i ∧
          ((componentListEquiv s t ht).symm j).val.2.val = m.val) := by
      intro hh
      apply h
      have hp := ((componentListEquiv s t ht).symm j).property
      simpa [hh.1,hh.2] using hp
    simp [h,he]

theorem componentList_pair (s t : Nat) (ht : t ≤ 8) (j : Fin (freeBasis actualRows s t).length) :
    componentPair s t ((componentListEquiv s t ht).symm j) = (freeBasis actualRows s t)[j.val] := by
  have h := componentToListIndex_spec s t ht ((componentListEquiv s t ht).symm j)
  have he : componentToListIndex s t ht ((componentListEquiv s t ht).symm j) = j :=
    (componentListEquiv s t ht).apply_symm_apply j
  rw [he] at h
  exact h.symm

def coordinateMatrixAction (s t : Nat)
    (v : Fin (freeBasis actualRows (s+1) t).length → ZMod 2) :
    Fin (freeBasis actualRows s t).length → ZMod 2 :=
  fun i => ∑ j, boolScalar (freeDifferential actualRows s t i j) * v j

/-- Intertwining on every coordinate vector, not merely the individual basis
entries. The matrix is exactly the one checked by the existing certificates. -/
theorem differential_extract_reconstruct (s t : Nat) (ht : t ≤ 8)
    (v : Fin (freeBasis actualRows (s+1) t).length → ZMod 2) :
    extractListComponent s t ht (actualDifferential (reconstructListComponent (s+1) t ht v)) =
      coordinateMatrixAction s t v := by
  funext i
  rw [reconstruct_as_sum,sumCoordinateVectors,map_sum]
  simp only [map_nsmul]
  unfold extractListComponent extractComponent
  rw [module_finset_sum_eval]
  simp only [module_nsmul_eval,ZMod.natCast_zmod_val,listCoordinateVector,differential_vector_entry]
  unfold coordinateMatrixAction
  apply Finset.sum_congr rfl
  intro j hj
  rw [componentList_pair,componentList_pair]
  exact mul_comm _ _

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem actualEdge_grading : ∀ i j : ActualIndex, ∀ a ∈ edgeTerms i j,
    (actualRow j).s + 1 = (actualRow i).s ∧ weight a + (actualRow j).t = (actualRow i).t := by decide

theorem differential_vector_homogeneous (p : ComponentIndex (s+1) t) :
    ModuleHomogeneous s t (actualDifferential (coordinateVector p)) := by
  intro i m hbad
  rw [actualDifferential_vector]
  unfold edgeCoefficient
  rw [← List.sum_map_mul_left,rank_sum_apply,List.map_map]
  change (((edgeTerms p.val.1 i).map fun a =>
    (polynomialRankFunctional 3 [p.val.2.val] * polynomialRankFunctional 3 [a]) m)).sum = 0
  apply List.sum_eq_zero
  intro z hz
  obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hz
  rw [single_product_apply]
  have hgr := actualEdge_grading p.val.1 i a ha
  have hp := p.property
  have hw : weight m.val ≠ weight p.val.2.val + weight a := by
    rcases hbad with hs | ht
    · have hsi : (actualRow i).s = s := by omega
      exact False.elim (hs hsi)
    · omega
  rw [product_degree_support 3 (weight p.val.2.val) (weight a) [p.val.2.val] [a]
    (by simp) (by simp) m.val m.property hw]
  rfl

theorem differential_reconstruct_homogeneous (s t : Nat) (ht : t ≤ 8)
    (v : Fin (freeBasis actualRows (s+1) t).length → ZMod 2) :
    ModuleHomogeneous s t (actualDifferential (reconstructListComponent (s+1) t ht v)) := by
  intro i m hbad
  rw [reconstruct_as_sum,sumCoordinateVectors,map_sum]
  simp only [map_nsmul]
  rw [module_finset_sum_eval]
  apply Finset.sum_eq_zero
  intro j hj
  rw [module_nsmul_eval]
  have hz := differential_vector_homogeneous ((componentListEquiv (s+1) t ht).symm j) i m hbad
  change _ * actualDifferential (coordinateVector _) i m = 0
  rw [hz,mul_zero]

/-- Actual module-level equality with the reconstructed checked matrix action,
including coefficients outside the finite coordinate list. -/
theorem differential_reconstruct (s t : Nat) (ht : t ≤ 8)
    (v : Fin (freeBasis actualRows (s+1) t).length → ZMod 2) :
    actualDifferential (reconstructListComponent (s+1) t ht v) =
      reconstructListComponent s t ht (coordinateMatrixAction s t v) := by
  rw [← differential_extract_reconstruct s t ht v]
  exact (reconstruct_extract_list s t ht _ (differential_reconstruct_homogeneous s t ht v)).symm

theorem actualDifferential_homogeneous (s t : Nat) (ht : t ≤ 8) (x : ActualFreeModule)
    (hx : ModuleHomogeneous (s+1) t x) : ModuleHomogeneous s t (actualDifferential x) := by
  rw [← reconstruct_extract_list (s+1) t ht x hx]
  exact differential_reconstruct_homogeneous s t ht _

#print axioms differential_reconstruct
#print axioms actualDifferential_homogeneous
end ExtComplexCertificates.ActualResolution
