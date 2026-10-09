import Stem125E5Search.Product

namespace Stem125E5Search
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates

abbrev ZeroProduct (centers : Fin 28 → Stem125E4Search.ZeroCenter) :=
  (i : Fin 28) → Homology (centers i).outgoing (centers i).incoming

abbrev WholeE5 (choice : Product.Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :=
  Product.PositiveHomology choice × ZeroProduct zeroCenters

noncomputable def wholeEquiv (choice : Product.Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    WholeE5 choice zeroCenters ≃ Vec (Product.dimension choice) where
  toFun := fun x => Product.equivalence choice x.1
  invFun := fun v => ⟨(Product.equivalence choice).symm v, fun i => (zeroCenters i).zeroClass⟩
  left_inv := by
    intro x
    apply Prod.ext
    · exact (Product.equivalence choice).symm_apply_apply x.1
    · funext i
      exact (Stem125E4Search.zero_center_unique (zeroCenters i) (x.2 i)).symm
  right_inv := fun _ => (Product.equivalence choice).apply_symm_apply _

theorem whole_cardinality (choice : Product.Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter) :
    Nat.card (WholeE5 choice zeroCenters) = 2 ^ Product.dimension choice := by
  rw [Nat.card_congr (wholeEquiv choice zeroCenters)]
  simp [Vec, Nat.card_eq_fintype_card]

def wholeAdd (choice : Product.Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter)
    (x y : WholeE5 choice zeroCenters) : WholeE5 choice zeroCenters :=
  ⟨totalAdd (Product.wires choice) x.1 y.1,
   fun i => homologyAdd _ _ (x.2 i) (y.2 i)⟩

theorem whole_preserves_addition (choice : Product.Choice) (zeroCenters : Fin 28 → Stem125E4Search.ZeroCenter)
    (x y : WholeE5 choice zeroCenters) :
    wholeEquiv choice zeroCenters (wholeAdd choice zeroCenters x y) =
      add (wholeEquiv choice zeroCenters x) (wholeEquiv choice zeroCenters y) :=
  Product.preserves_addition choice x.1 y.1

theorem range_of_coordinate_count (choice : Product.Choice) :
    2 ≤ Product.dimension choice ∧ Product.dimension choice ≤ 7 := Product.dimension_bounds choice

#print axioms whole_cardinality
#print axioms whole_preserves_addition
end Stem125E5Search
