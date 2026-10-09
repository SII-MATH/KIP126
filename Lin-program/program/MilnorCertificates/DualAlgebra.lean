import MilnorCertificates.PolynomialExtraction
import MilnorCertificates.GeneralTactic

namespace MilnorCertificates
open scoped BigOperators

abbrev DualFunction := Monomial → ZMod 2

def dualMul (rank : Nat) (f g : DualFunction) (m : Monomial) : ZMod 2 :=
  ((coproduct rank m).map fun t => f t.1 * g t.2).sum

theorem sum_by_multiplicity {α : Type*} [DecidableEq α] (p : List α) (s : Finset α)
    (hs : ∀ a ∈ p, a ∈ s) (f : α → ZMod 2) :
    (p.map f).sum = ∑ a ∈ s, ((p.filter (· == a)).length : ZMod 2) * f a := by
  induction p with
  | nil => simp
  | cons x p ih =>
    have hx := hs x (by simp)
    have hp : ∀ a ∈ p, a ∈ s := fun a ha => hs a (by simp [ha])
    rw [List.map_cons,List.sum_cons,ih hp]
    have hcount (a : α) : (((x::p).filter (· == a)).length : ZMod 2) =
        (if x = a then 1 else 0) + ((p.filter (· == a)).length : ZMod 2) := by
      by_cases h : x = a <;> simp [h,add_comm]
    simp_rw [hcount,add_mul]
    rw [Finset.sum_add_distrib]
    simp [hx]

theorem weighted_sum_of_parity {α : Type*} [DecidableEq α] (p q : List α)
    (h : ∀ a, (p.filter (· == a)).length % 2 = (q.filter (· == a)).length % 2)
    (f : α → ZMod 2) : (p.map f).sum = (q.map f).sum := by
  let s := (p++q).toFinset
  rw [sum_by_multiplicity p s (fun a ha => by simp [s,ha]) f,
    sum_by_multiplicity q s (fun a ha => by simp [s,ha]) f]
  apply Finset.sum_congr rfl
  intro a ha
  have hc : ((p.filter (· == a)).length : ZMod 2) = ((q.filter (· == a)).length : ZMod 2) := by
    apply ZMod.val_injective
    simpa only [ZMod.val_natCast] using h a
  rw [hc]

theorem dualMul_left (rank : Nat) (f g h : DualFunction) (m : Monomial) :
    dualMul rank (dualMul rank f g) h m =
      ((coproductLeft rank m).map fun t => f t.1 * g t.2.1 * h t.2.2).sum := by
  unfold dualMul coproductLeft
  rw [List.map_flatMap,sum_flatMap_value]
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  rw [← List.sum_map_mul_right,List.map_map]
  rfl

theorem dualMul_right (rank : Nat) (f g h : DualFunction) (m : Monomial) :
    dualMul rank f (dualMul rank g h) m =
      ((coproductRight rank m).map fun t => f t.1 * g t.2.1 * h t.2.2).sum := by
  unfold dualMul coproductRight
  rw [List.map_flatMap,sum_flatMap_value]
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  rw [← List.sum_map_mul_left,List.map_map]
  simp only [Function.comp_def,mul_assoc]

/-- Associativity of the dual product of the actual executable Milnor
coproduct, deduced from its proved coefficientwise coassociativity. -/
theorem dualMul_assoc (rank : Nat) (f g h : DualFunction) (m : Monomial)
    (hm : m.length = rank) :
    dualMul rank (dualMul rank f g) h m = dualMul rank f (dualMul rank g h) m := by
  rw [dualMul_left,dualMul_right]
  apply weighted_sum_of_parity
  intro t
  have hc := coproduct_coassociative rank m hm t
  have he : ((List.filter (fun x => x == t) (coproductLeft rank m)).length % 2 = 1) ↔
      ((List.filter (fun x => x == t) (coproductRight rank m)).length % 2 = 1) := by
    simpa only [tripleCoefficient,beq_iff_eq] using Iff.of_eq (congrArg (fun b => b = true) hc)
  have parity_nat (a b : Nat) (h : (a % 2 = 1 ↔ b % 2 = 1)) : a % 2 = b % 2 := by
    omega
  have norm (p : List TripleMonomial) :
      p.filter (fun x => @BEq.beq TripleMonomial (instBEqOfDecidableEq) x t) = p.filter (fun x => x == t) := by
    apply List.filter_congr
    intro x hx
    exact Bool.eq_iff_iff.mpr (by simp)
  simp only [norm]
  exact parity_nat _ _ he

def boolScalar (b : Bool) : ZMod 2 := if b then 1 else 0

def polynomialFunctional (p : Polynomial) : DualFunction := fun m => boolScalar (coefficient p m)

theorem boolScalar_injective : Function.Injective boolScalar := by
  intro a b h
  cases a <;> cases b <;> simp_all [boolScalar]

theorem scalar_parity (n : Nat) : boolScalar (n % 2 == 1) = (n : ZMod 2) := by
  apply ZMod.val_injective
  have hn : n % 2 < 2 := Nat.mod_lt n (by decide)
  by_cases h : n % 2 = 1
  · simp [boolScalar,h]
    rfl
  · have hz : n % 2 = 0 := by omega
    simp [boolScalar,h,hz]

theorem filter_scalar_sum {α : Type*} (p : List α) (f : α → Bool) :
    ((p.filter f).length : ZMod 2) = (p.map fun a => boolScalar (f a)).sum := by
  induction p with
  | nil => simp
  | cons a p ih => cases h : f a <;> simp [h,ih,boolScalar,add_comm]

theorem pairTensor_scalar (left right : Polynomial) (terms : List TensorMonomial) :
    boolScalar (pairTensor left right terms) =
      (terms.map fun t => polynomialFunctional left t.1 * polynomialFunctional right t.2).sum := by
  rw [pairTensor,scalar_parity,filter_scalar_sum]
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  unfold polynomialFunctional
  cases coefficient left t.1 <;> cases coefficient right t.2 <;> simp [boolScalar]

theorem certified_dualMul (rank : Nat) (left right output : Polynomial)
    (hc : IsMilnorProductAll rank left right output) (m : Monomial) (hm : m.length = rank) :
    polynomialFunctional output m = dualMul rank (polynomialFunctional left) (polynomialFunctional right) m := by
  unfold polynomialFunctional
  rw [hc.2.2.2 m hm,pairTensor_scalar]
  rfl

theorem dualMul_congr (rank : Nat) (f f' g g' : DualFunction)
    (hf : ∀ a, a.length = rank → f a = f' a)
    (hg : ∀ a, a.length = rank → g a = g' a)
    (m : Monomial) (hm : m.length = rank) : dualMul rank f g m = dualMul rank f' g' m := by
  unfold dualMul
  apply congrArg List.sum
  apply List.map_congr_left
  intro t ht
  have h := coproduct_homogeneous rank m hm t ht
  rw [hf t.1 h.1,hg t.2 h.2.1]

/-- Existing all-degree product certificates in both parenthesizations imply
identical output coefficients. No associativity premise or external answer is trusted. -/
theorem certified_products_associative (rank : Nat) (a b c ab bc left right : Polynomial)
    (hab : IsMilnorProductAll rank a b ab) (hbc : IsMilnorProductAll rank b c bc)
    (hl : IsMilnorProductAll rank ab c left) (hr : IsMilnorProductAll rank a bc right)
    (m : Monomial) (hm : m.length = rank) : coefficient left m = coefficient right m := by
  apply boolScalar_injective
  change polynomialFunctional left m = polynomialFunctional right m
  rw [certified_dualMul rank ab c left hl m hm,certified_dualMul rank a bc right hr m hm]
  calc
    dualMul rank (polynomialFunctional ab) (polynomialFunctional c) m =
        dualMul rank (dualMul rank (polynomialFunctional a) (polynomialFunctional b)) (polynomialFunctional c) m :=
      dualMul_congr rank _ _ _ _ (certified_dualMul rank a b ab hab) (fun _ _ => rfl) m hm
    _ = dualMul rank (polynomialFunctional a) (dualMul rank (polynomialFunctional b) (polynomialFunctional c)) m :=
      dualMul_assoc rank _ _ _ m hm
    _ = dualMul rank (polynomialFunctional a) (polynomialFunctional bc) m :=
      dualMul_congr rank _ _ _ _ (fun _ _ => rfl)
        (fun n hn => (certified_dualMul rank b c bc hbc n hn).symm) m hm

#print axioms dualMul_assoc
#print axioms certified_dualMul
#print axioms certified_products_associative
end MilnorCertificates
