import MilnorCertificates.Counit

namespace MilnorCertificates
open scoped BigOperators

theorem weighted_fiber_sum {α β : Type*} [DecidableEq β] (p : List α) (s : Finset β)
    (key : α → β) (w : α → ZMod 2) (f : β → ZMod 2)
    (hs : ∀ a ∈ p, key a ∈ s) :
    (p.map fun a => w a * f (key a)).sum =
      ∑ b ∈ s, ((p.map fun a => w a * (if key a = b then 1 else 0)).sum) * f b := by
  induction p with
  | nil => simp
  | cons a p ih =>
    have ha := hs a (by simp)
    have hp : ∀ a ∈ p, key a ∈ s := fun a ha => hs a (by simp [ha])
    simp only [List.map_cons,List.sum_cons]
    rw [ih hp]
    simp_rw [add_mul]
    rw [Finset.sum_add_distrib]
    simp [ha]

def dualUnit (rank : Nat) : DualFunction := counit rank

theorem dualMul_unit_left (rank : Nat) (f : DualFunction) (m : Monomial)
    (hm : m.length = rank) : dualMul rank (dualUnit rank) f m = f m := by
  classical
  let s := (m :: (coproduct rank m).map Prod.snd).toFinset
  unfold dualMul dualUnit
  rw [weighted_fiber_sum _ s Prod.snd (fun t => counit rank t.1) f (by
    intro t ht
    simp only [s,List.mem_toFinset,List.mem_cons,List.mem_map]
    exact Or.inr ⟨t,ht,rfl⟩)]
  have he : ∀ n ∈ s,
      ((coproduct rank m).map fun t => counit rank t.1 * (if t.2 = n then (1 : ZMod 2) else 0)).sum =
        if m = n then 1 else 0 := by
    intro n hn
    have hnr : n.length = rank := by
      simp only [s,List.mem_toFinset,List.mem_cons,List.mem_map] at hn
      rcases hn with rfl | ⟨t,ht,rfl⟩
      · exact hm
      · exact (coproduct_homogeneous rank m hm t ht).2.1
    exact counit_left_coeff rank m n hm hnr
  simp_rw [Finset.sum_congr rfl (fun n hn => congrArg (fun z => z * f n) (he n hn))]
  simp [s]

theorem dualMul_unit_right (rank : Nat) (f : DualFunction) (m : Monomial)
    (hm : m.length = rank) : dualMul rank f (dualUnit rank) m = f m := by
  classical
  let s := (m :: (coproduct rank m).map Prod.fst).toFinset
  unfold dualMul dualUnit
  simp only [mul_comm (f _) (counit rank _)]
  rw [weighted_fiber_sum _ s Prod.fst (fun t => counit rank t.2) f (by
    intro t ht
    simp only [s,List.mem_toFinset,List.mem_cons,List.mem_map]
    exact Or.inr ⟨t,ht,rfl⟩)]
  have he : ∀ n ∈ s,
      ((coproduct rank m).map fun t => counit rank t.2 * (if t.1 = n then (1 : ZMod 2) else 0)).sum =
        if m = n then 1 else 0 := by
    intro n hn
    have hnr : n.length = rank := by
      simp only [s,List.mem_toFinset,List.mem_cons,List.mem_map] at hn
      rcases hn with rfl | ⟨t,ht,rfl⟩
      · exact hm
      · exact (coproduct_homogeneous rank m hm t ht).1
    simpa only [mul_comm] using counit_right_coeff rank m n hm hnr
  simp_rw [Finset.sum_congr rfl (fun n hn => congrArg (fun z => z * f n) (he n hn))]
  simp [s]

theorem unitPolynomial_functional (rank : Nat) :
    polynomialFunctional [unitMonomial rank] = dualUnit rank := by
  funext m
  simp only [polynomialFunctional,coefficient,dualUnit,counit]
  by_cases h : m = unitMonomial rank
  · subst m
    simp
  · have h' : unitMonomial rank ≠ m := Ne.symm h
    simp [h,h',boolScalar]

theorem unitPolynomial_left (rank : Nat) (p : Polynomial)
    (hp : ∀ m ∈ p, m.length = rank) : IsMilnorProductAll rank [unitMonomial rank] p p := by
  refine ⟨?_,hp,hp,?_⟩
  · intro m hm
    simp only [List.mem_singleton] at hm
    subst m
    simp [unitMonomial]
  · intro m hm
    apply boolScalar_injective
    rw [pairTensor_scalar]
    change polynomialFunctional p m = dualMul rank (polynomialFunctional [unitMonomial rank]) (polynomialFunctional p) m
    rw [unitPolynomial_functional,dualMul_unit_left rank _ m hm]

theorem unitPolynomial_right (rank : Nat) (p : Polynomial)
    (hp : ∀ m ∈ p, m.length = rank) : IsMilnorProductAll rank p [unitMonomial rank] p := by
  refine ⟨hp,?_,hp,?_⟩
  · intro m hm
    simp only [List.mem_singleton] at hm
    subst m
    simp [unitMonomial]
  · intro m hm
    apply boolScalar_injective
    rw [pairTensor_scalar]
    change polynomialFunctional p m = dualMul rank (polynomialFunctional p) (polynomialFunctional [unitMonomial rank]) m
    rw [unitPolynomial_functional,dualMul_unit_right rank _ m hm]

#print axioms dualMul_unit_left
#print axioms dualMul_unit_right
#print axioms unitPolynomial_left
#print axioms unitPolynomial_right
end MilnorCertificates
