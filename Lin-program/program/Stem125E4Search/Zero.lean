import Stem125E4Search.Product

namespace Stem125E4Search
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates

/-- Arbitrary neighboring dimensions and maps; only the current space is zero. -/
structure ZeroCenter where
  k : Nat
  n : Nat
  outgoing : Matrix k 0
  incoming : Matrix 0 n

def ZeroCenter.zeroClass (c : ZeroCenter) : Homology c.outgoing c.incoming :=
  Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

theorem zero_center_unique (c : ZeroCenter) (x : Homology c.outgoing c.incoming) :
    x = c.zeroClass := by
  induction x using Quot.inductionOn with
  | h x =>
    apply congrArg (Quot.mk _)
    apply Subtype.ext
    funext i
    exact Fin.elim0 i

def zeroCenterEquiv (c : ZeroCenter) : Homology c.outgoing c.incoming ≃ Unit where
  toFun := fun _ => ()
  invFun := fun _ => c.zeroClass
  left_inv := fun x => (zero_center_unique c x).symm
  right_inv := fun _ => rfl

abbrev ZeroProduct (centers : Fin 14 → ZeroCenter) :=
  (i : Fin 14) → Homology (centers i).outgoing (centers i).incoming

def zeroProductEquiv (centers : Fin 14 → ZeroCenter) : ZeroProduct centers ≃ Unit where
  toFun := fun _ => ()
  invFun := fun _ i => (centers i).zeroClass
  left_inv := by intro x; funext i; exact (zero_center_unique (centers i) (x i)).symm
  right_inv := fun _ => rfl

/-- A regrouping into all 31 nonzero and all 14 zero E3 centers. The concrete
index partition and each preceding dimension are checked in Product. -/
abbrev WholeE4 (branch : Bool) (zeroCenters : Fin 14 → ZeroCenter) :=
  Product.NonzeroHomology branch × ZeroProduct zeroCenters

noncomputable def wholeEquiv (branch : Bool) (zeroCenters : Fin 14 → ZeroCenter) :
    WholeE4 branch zeroCenters ≃ Vec 24 where
  toFun := fun x => Product.equivalence branch x.1
  invFun := fun v => ⟨(Product.equivalence branch).symm v, fun i => (zeroCenters i).zeroClass⟩
  left_inv := by
    intro x
    apply Prod.ext
    · exact (Product.equivalence branch).symm_apply_apply x.1
    · funext i
      exact (zero_center_unique (zeroCenters i) (x.2 i)).symm
  right_inv := fun _ => (Product.equivalence branch).apply_symm_apply _

theorem whole_cardinality (branch : Bool) (zeroCenters : Fin 14 → ZeroCenter) :
    Nat.card (WholeE4 branch zeroCenters) = 2 ^ 24 := by
  rw [Nat.card_congr (wholeEquiv branch zeroCenters)]
  simp [Vec, Nat.card_eq_fintype_card]

def wholeAdd (branch : Bool) (zeroCenters : Fin 14 → ZeroCenter)
    (x y : WholeE4 branch zeroCenters) : WholeE4 branch zeroCenters :=
  ⟨totalAdd (Product.wires branch) x.1 y.1,
   fun i => homologyAdd _ _ (x.2 i) (y.2 i)⟩

theorem whole_preserves_addition (branch : Bool) (zeroCenters : Fin 14 → ZeroCenter)
    (x y : WholeE4 branch zeroCenters) :
    wholeEquiv branch zeroCenters (wholeAdd branch zeroCenters x y) =
      add (wholeEquiv branch zeroCenters x) (wholeEquiv branch zeroCenters y) :=
  Product.preserves_addition branch x.1 y.1

#print axioms zero_center_unique
#print axioms whole_cardinality
#print axioms whole_preserves_addition
end Stem125E4Search
