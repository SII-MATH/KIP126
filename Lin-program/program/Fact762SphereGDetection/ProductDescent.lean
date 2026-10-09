import Fact762SphereGDetection.Data
import ActualAdamsHomologyCoordinates.Adapter
import ActualAdamsProductTraceBridge.Basic

namespace Fact762SphereGDetection.ProductDescent
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning ActualAdamsProductTraceBridge

structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (r : Nat) (a b : Bidegree)
    (wa wb wc : WireComparison)
    (ca : Coordinates S r a wa.m) (cb : Coordinates S r b wb.m)
    (cc : Coordinates S r (Bidegree.add a b) wc.m) where
  leftMeaning : Meaning S r a wa ca
  rightMeaning : Meaning S r b wb cb
  targetMeaning : Meaning S r (Bidegree.add a b) wc cc
  leftValid : wa.Valid
  rightValid : wb.Valid
  targetValid : wc.Valid
  leftZero : LocalZeroMeaning pages r a
  rightZero : LocalZeroMeaning pages r b
  targetZero : LocalZeroMeaning pages r (Bidegree.add a b)
  tensor : PageProductCertificates.Tensor wa.m wb.m wc.m
  nextTensor : PageProductCertificates.Tensor wa.h wb.h wc.h
  equation : ∀ x y, cc.equivalence (P.product.multiply r a b x y) =
    PageProductCertificates.product tensor (ca.equivalence x) (cb.equivalence y)
  finite : ∀ x y, InKernel (matrixOf wa.k wa.m wa.outgoing) x →
    InKernel (matrixOf wb.k wb.m wb.outgoing) y →
    eval wc.comparison.projection (PageProductCertificates.product tensor x y) =
    PageProductCertificates.product nextTensor (eval wa.comparison.projection x)
      (eval wb.comparison.projection y)
  transition : Transition S pages P r a b

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {r : Nat} {a b : Bidegree}
  {wa wb wc : WireComparison} {ca : Coordinates S r a wa.m}
  {cb : Coordinates S r b wb.m} {cc : Coordinates S r (Bidegree.add a b) wc.m}

noncomputable def Input.nextLeft (D : Input S pages P r a b wa wb wc ca cb cc) :=
  D.leftMeaning.nextCoordinates pages D.leftValid D.leftZero
noncomputable def Input.nextRight (D : Input S pages P r a b wa wb wc ca cb cc) :=
  D.rightMeaning.nextCoordinates pages D.rightValid D.rightZero
noncomputable def Input.nextTarget (D : Input S pages P r a b wa wb wc ca cb cc) :=
  D.targetMeaning.nextCoordinates pages D.targetValid D.targetZero

theorem next_product_coordinates (D : Input S pages P r a b wa wb wc ca cb cc)
    (x : (S.element (r+1) a).carrier) (y : (S.element (r+1) b).carrier) :
    D.nextTarget.equivalence (P.product.multiply (r+1) a b x y) =
      PageProductCertificates.product D.nextTensor
        (D.nextLeft.equivalence x) (D.nextRight.equivalence y) := by
  obtain ⟨qx,rfl⟩ := (pageEquiv pages (r := r) (degree := a)).surjective x
  obtain ⟨qy,rfl⟩ := (pageEquiv pages (r := r) (degree := b)).surjective y
  refine Quotient.inductionOn qx ?_
  intro x
  refine Quotient.inductionOn qy ?_
  intro y
  change D.nextTarget.equivalence (P.product.multiply (r+1) a b
    ((pages.nextPage r a).toNext (Quotient.mk _ x))
    ((pages.nextPage r b).toNext (Quotient.mk _ y))) = _
  rw [← D.transition.formula x y]
  change (D.targetMeaning.nextCoordinates pages D.targetValid D.targetZero).equivalence _ =
    PageProductCertificates.product D.nextTensor
      ((D.leftMeaning.nextCoordinates pages D.leftValid D.leftZero).equivalence
        ((pages.nextPage r a).toNext (Quotient.mk _ x)))
      ((D.rightMeaning.nextCoordinates pages D.rightValid D.rightZero).equivalence
        ((pages.nextPage r b).toNext (Quotient.mk _ y)))
  rw [D.targetMeaning.nextCoordinates_quotient, D.leftMeaning.nextCoordinates_quotient,
    D.rightMeaning.nextCoordinates_quotient]
  change eval wc.comparison.projection (cc.equivalence (P.product.multiply r a b x.val y.val)) = _
  rw [D.equation]
  exact D.finite _ _ ((D.leftMeaning.cycle_iff _).mp x.property)
    ((D.rightMeaning.cycle_iff _).mp y.property)

#print axioms next_product_coordinates
end Fact762SphereGDetection.ProductDescent
