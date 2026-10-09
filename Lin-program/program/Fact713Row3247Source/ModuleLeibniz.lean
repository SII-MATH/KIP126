import ActualAdamsProductCycleBridge.Basic

namespace Fact713Row3247Source.ModuleLeibniz
open ManualInputObligations.Reference ActualAdamsProductCycleBridge

/-- An actual bilinear action of the sphere page on another Adams page.
The equation is the complete graded module Leibniz rule. -/
structure Action (S T : AdamsSpectralSequence) where
  multiply : ∀ r d e, (S.element r d).carrier → (T.element r e).carrier →
    (T.element r (Bidegree.add d e)).carrier
  zero_left : ∀ r d e y, multiply r d e 0 y = 0
  zero_right : ∀ r d e x, multiply r d e x 0 = 0
  add_left : ∀ r d e x y z, multiply r d e (x + y) z =
    multiply r d e x z + multiply r d e y z
  add_right : ∀ r d e x y z, multiply r d e x (y + z) =
    multiply r d e x y + multiply r d e x z
  leibniz : ∀ r d e x y,
    pageCast T r (adamsTarget_add_left r d e)
      (T.differential r (Bidegree.add d e) (multiply r d e x y)) =
      multiply r (AdamsTarget r d) e (S.differential r d x) y +
      pageCast T r (adamsTarget_product_degree r d e).symm
        (multiply r d (AdamsTarget r e) x (T.differential r e y))

theorem action_differential_zero (S T : AdamsSpectralSequence) (A : Action S T)
    (r : Nat) (d e : Bidegree) (a : (S.element r d).carrier)
    (x : (T.element r e).carrier) (aCycle : S.differential r d a = 0)
    (productCycle : T.differential r (Bidegree.add d e) (A.multiply r d e a x) = 0) :
    A.multiply r d (AdamsTarget r e) a (T.differential r e x) = 0 := by
  have formula := A.leibniz r d e a x
  rw [productCycle,cast_zero,aCycle,A.zero_left,zero_add] at formula
  exact (cast_zero_iff T r (adamsTarget_product_degree r d e).symm _).mp formula.symm

#print axioms action_differential_zero
end Fact713Row3247Source.ModuleLeibniz
