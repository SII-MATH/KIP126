import MilnorCertificates.DualAlgebra

namespace MilnorCertificates
open scoped BigOperators
variable {R : Type*} [CommRing R] [CharP R 2]

def zeroVariable : Nat → R := fun _ => 0

theorem xiValue_zero (k : Nat) : xiValue (zeroVariable : Nat → R) k = if k=0 then 1 else 0 := by
  simp [xiValue,zeroVariable]

theorem generator_counit_left (v : Nat → R) (rank k : Nat) (hk : k ≤ rank) :
    tensorValue zeroVariable v (generatorCoproduct rank k) = xiValue v k := by
  rw [generatorCoproduct_value _ _ rank k hk,list_range_sum]
  rw [Finset.sum_eq_single k]
  · simp [xiValue_zero]
  · intro i hi hik
    have hik' : i < k := by have := Finset.mem_range.mp hi; omega
    have hki : k-i ≠ 0 := by omega
    simp [xiValue_zero,hki]
  · simp

theorem generator_counit_right (v : Nat → R) (rank k : Nat) (hk : k ≤ rank) :
    tensorValue v zeroVariable (generatorCoproduct rank k) = xiValue v k := by
  rw [generatorCoproduct_value _ _ rank k hk,list_range_sum]
  rw [Finset.sum_eq_single 0]
  · simp [xiValue_zero]
  · intro i hi hi0
    simp [xiValue_zero,hi0]
  · simp

theorem coproduct_counit_left_value (v : Nat → R) (rank : Nat) (m : Monomial)
    (hm : m.length = rank) : tensorValue zeroVariable v (coproduct rank m) = monomialValue v m := by
  rw [coproduct_value]
  unfold monomialValue
  rw [hm]
  apply congrArg List.prod
  apply List.map_congr_left
  intro j hj
  have hjr : j+1 ≤ rank := by have := List.mem_range.mp hj; omega
  rw [generator_counit_left v rank (j+1) hjr]
  simp [xiValue]

theorem coproduct_counit_right_value (v : Nat → R) (rank : Nat) (m : Monomial)
    (hm : m.length = rank) : tensorValue v zeroVariable (coproduct rank m) = monomialValue v m := by
  rw [coproduct_value]
  unfold monomialValue
  rw [hm]
  apply congrArg List.prod
  apply List.map_congr_left
  intro j hj
  have hjr : j+1 ≤ rank := by have := List.mem_range.mp hj; omega
  rw [generator_counit_right v rank (j+1) hjr]
  simp [xiValue]

def counit (rank : Nat) (m : Monomial) : ZMod 2 := boolScalar (m == unitMonomial rank)

theorem monomialValue_zero (rank : Nat) (m : Monomial) (hm : m.length = rank) :
    monomialValue (zeroVariable : Nat → UniversalRing) m =
      MvPolynomial.C (counit rank m) := by
  classical
  by_cases hz : m = unitMonomial rank
  · subst m
    simp [monomialValue_unit,counit,boolScalar]
  · have hex : ∃ j, j < m.length ∧ m[j]?.getD 0 ≠ 0 := by
      by_contra hn
      apply hz
      apply List.ext_getElem?
      intro j
      by_cases hj : j < m.length
      · have hjr : j < rank := by omega
        have hh : m[j]?.getD 0 = 0 := by
          have h := not_exists.mp hn j
          simp only [not_and,not_not] at h
          exact h hj
        simpa [hj,hjr,unitMonomial] using hh
      · have hjr : ¬ j < rank := by omega
        simp [hj,hjr,unitMonomial]
    obtain ⟨j,hj,hne⟩ := hex
    have hzero : monomialValue (zeroVariable : Nat → UniversalRing) m = 0 := by
      unfold monomialValue
      apply List.prod_eq_zero
      apply List.mem_map.mpr
      exact ⟨j,List.mem_range.mpr hj,by simp [zeroVariable,hne]⟩
    rw [hzero]
    simp [counit,boolScalar,hz]

theorem exponentEncoding_injective (slot : Fin 3) (a b : Monomial)
    (hab : a.length = b.length) (h : exponentEncoding slot a = exponentEncoding slot b) : a = b := by
  apply List.ext_getElem?
  intro j
  have hh := congrArg (fun e : (Fin 3 × Nat) →₀ Nat => e (slot,j)) h
  rw [exponentEncoding_apply,exponentEncoding_apply] at hh
  by_cases hj : j < a.length
  · have hjb : j < b.length := by omega
    simpa [hj,hjb] using hh
  · have hjb : ¬ j < b.length := by omega
    simp [hj,hjb]

theorem coeff_sum_list (p : List UniversalRing) (e : (Fin 3 × Nat) →₀ Nat) :
    MvPolynomial.coeff e p.sum = (p.map (MvPolynomial.coeff e)).sum := by
  induction p with
  | nil => simp
  | cons a p ih => simp [ih]

theorem counit_left_coeff (rank : Nat) (m n : Monomial)
    (hm : m.length = rank) (hn : n.length = rank) :
    ((coproduct rank m).map fun t => counit rank t.1 * (if t.2 = n then (1 : ZMod 2) else 0)).sum =
      if m = n then 1 else 0 := by
  classical
  have hv := coproduct_counit_left_value (universalVariable 0) rank m hm
  have hc := congrArg (MvPolynomial.coeff (exponentEncoding 0 n)) hv
  rw [tensorValue,coeff_sum_list,List.map_map,universalMonomial,MvPolynomial.coeff_monomial] at hc
  have hmne : exponentEncoding 0 m = exponentEncoding 0 n ↔ m = n :=
    ⟨exponentEncoding_injective 0 m n (hm.trans hn.symm),congrArg (exponentEncoding 0)⟩
  simp only [hmne] at hc
  rw [← hc]
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  have ht' := coproduct_homogeneous rank m hm t ht
  have htn : exponentEncoding 0 t.2 = exponentEncoding 0 n ↔ t.2 = n :=
    ⟨exponentEncoding_injective 0 t.2 n (ht'.2.1.trans hn.symm),congrArg (exponentEncoding 0)⟩
  simp only [Function.comp_apply]
  rw [monomialValue_zero rank t.1 ht'.1,universalMonomial,MvPolynomial.coeff_C_mul,
    MvPolynomial.coeff_monomial]
  simp only [htn]

theorem counit_right_coeff (rank : Nat) (m n : Monomial)
    (hm : m.length = rank) (hn : n.length = rank) :
    ((coproduct rank m).map fun t => (if t.1 = n then (1 : ZMod 2) else 0) * counit rank t.2).sum =
      if m = n then 1 else 0 := by
  classical
  have hv := coproduct_counit_right_value (universalVariable 0) rank m hm
  have hc := congrArg (MvPolynomial.coeff (exponentEncoding 0 n)) hv
  rw [tensorValue,coeff_sum_list,List.map_map,universalMonomial,MvPolynomial.coeff_monomial] at hc
  have hmne : exponentEncoding 0 m = exponentEncoding 0 n ↔ m = n :=
    ⟨exponentEncoding_injective 0 m n (hm.trans hn.symm),congrArg (exponentEncoding 0)⟩
  simp only [hmne] at hc
  rw [← hc]
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  have ht' := coproduct_homogeneous rank m hm t ht
  have htn : exponentEncoding 0 t.1 = exponentEncoding 0 n ↔ t.1 = n :=
    ⟨exponentEncoding_injective 0 t.1 n (ht'.1.trans hn.symm),congrArg (exponentEncoding 0)⟩
  simp only [Function.comp_apply]
  rw [monomialValue_zero rank t.2 ht'.2.1,universalMonomial,mul_comm _ (MvPolynomial.C _),MvPolynomial.coeff_C_mul,
    MvPolynomial.coeff_monomial]
  simp only [htn]
  rw [mul_comm]

#print axioms counit_left_coeff
end MilnorCertificates
