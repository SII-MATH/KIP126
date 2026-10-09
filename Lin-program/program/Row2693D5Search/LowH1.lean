import Row2693D5Search.Finite
import Fact762SphereGDetection.Trace
import Fact761ConstructedActual.Local

namespace Row2693D5Search.LowH1
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ActualAdamsProductTraceBridge ActualAdamsProductCycleBridge
open Fact762SphereGDetection.ProductDescent

abbrev h0Degree : Bidegree := ⟨1,1⟩
abbrev h1Degree : Bidegree := ⟨1,2⟩
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

structure Detector3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  left : Coordinates S 2 h0Degree 1
  right : Coordinates S 2 ⟨4,4⟩ 1
  target : Coordinates S 2 ⟨5,5⟩ 1
  leftMeaning : Meaning S 2 h0Degree Data.h02 left
  rightMeaning : Meaning S 2 ⟨4,4⟩ Data.tower42 right
  targetMeaning : Meaning S 2 ⟨5,5⟩ Data.tower52 target
  leftZero : LocalZeroMeaning pages 2 h0Degree
  rightZero : LocalZeroMeaning pages 2 ⟨4,4⟩
  targetZero : LocalZeroMeaning pages 2 ⟨5,5⟩
  equation : ∀ x y, target.equivalence (P.product.multiply 2 h0Degree ⟨4,4⟩ x y) =
    PageProductCertificates.product Data.low3Tensor (left.equivalence x) (right.equivalence y)
  transition : Transition S pages P 2 h0Degree ⟨4,4⟩

def Detector3.input (D : Detector3 S pages P) :
    Input S pages P 2 h0Degree ⟨4,4⟩ Data.h02 Data.tower42 Data.tower52 D.left D.right D.target where
  leftMeaning := D.leftMeaning
  rightMeaning := D.rightMeaning
  targetMeaning := D.targetMeaning
  leftValid := Data.h02_valid
  rightValid := Data.tower42_valid
  targetValid := Data.tower52_valid
  leftZero := D.leftZero
  rightZero := D.rightZero
  targetZero := D.targetZero
  tensor := Data.low3Tensor
  nextTensor := Finite.unitTensor
  equation := D.equation
  finite := fun x y _ _ => Finite.low3_descent x y
  transition := D.transition

structure Detector4Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  left : Coordinates S 2 h0Degree 1
  right : Coordinates S 2 ⟨5,5⟩ 1
  target : Coordinates S 2 ⟨6,6⟩ 1
  leftMeaning : Meaning S 2 h0Degree Data.h02 left
  rightMeaning : Meaning S 2 ⟨5,5⟩ Data.tower52 right
  targetMeaning : Meaning S 2 ⟨6,6⟩ Data.tower62 target
  leftZero : LocalZeroMeaning pages 2 h0Degree
  rightZero : LocalZeroMeaning pages 2 ⟨5,5⟩
  targetZero : LocalZeroMeaning pages 2 ⟨6,6⟩
  equation : ∀ x y, target.equivalence (P.product.multiply 2 h0Degree ⟨5,5⟩ x y) =
    PageProductCertificates.product Data.low4Tensor (left.equivalence x) (right.equivalence y)
  transition : Transition S pages P 2 h0Degree ⟨5,5⟩

def Detector4Stage2.input (D : Detector4Stage2 S pages P) :
    Input S pages P 2 h0Degree ⟨5,5⟩ Data.h02 Data.tower52 Data.tower62 D.left D.right D.target where
  leftMeaning := D.leftMeaning
  rightMeaning := D.rightMeaning
  targetMeaning := D.targetMeaning
  leftValid := Data.h02_valid
  rightValid := Data.tower52_valid
  targetValid := Data.tower62_valid
  leftZero := D.leftZero
  rightZero := D.rightZero
  targetZero := D.targetZero
  tensor := Data.low4Tensor
  nextTensor := Finite.unitTensor
  equation := D.equation
  finite := fun x y _ _ => Finite.low4_descent2 x y
  transition := D.transition

structure Detector4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  previous : Detector4Stage2 S pages P
  leftMeaning : Meaning S 3 h0Degree Data.h03 previous.input.nextLeft
  rightMeaning : Meaning S 3 ⟨5,5⟩ Data.tower53 previous.input.nextRight
  targetMeaning : Meaning S 3 ⟨6,6⟩ Data.tower63 previous.input.nextTarget
  leftZero : LocalZeroMeaning pages 3 h0Degree
  rightZero : LocalZeroMeaning pages 3 ⟨5,5⟩
  targetZero : LocalZeroMeaning pages 3 ⟨6,6⟩
  transition : Transition S pages P 3 h0Degree ⟨5,5⟩

noncomputable def Detector4.input (D : Detector4 S pages P) :
    Input S pages P 3 h0Degree ⟨5,5⟩ Data.h03 Data.tower53 Data.tower63
      D.previous.input.nextLeft D.previous.input.nextRight D.previous.input.nextTarget where
  leftMeaning := D.leftMeaning
  rightMeaning := D.rightMeaning
  targetMeaning := D.targetMeaning
  leftValid := Data.h03_valid
  rightValid := Data.tower53_valid
  targetValid := Data.tower63_valid
  leftZero := D.leftZero
  rightZero := D.rightZero
  targetZero := D.targetZero
  tensor := Finite.unitTensor
  nextTensor := Finite.unitTensor
  equation := next_product_coordinates D.previous.input
  finite := fun x y _ _ => Finite.low4_descent3 x y
  transition := D.transition

theorem reflects {r : Nat} {right : Bidegree}
    (a : Coordinates S r h0Degree 1) (b : Coordinates S r right 1)
    (c : Coordinates S r (Bidegree.add h0Degree right) 1)
    (equation : ∀ x y, c.equivalence (P.product.multiply r h0Degree right x y) =
      PageProductCertificates.product Finite.unitTensor (a.equivalence x) (b.equivalence y))
    (x : (S.element r h0Degree).carrier) (hx : a.equivalence x = Finite.leftName)
    (y : (S.element r right).carrier) (hz : P.product.multiply r h0Degree right x y = 0) : y = 0 := by
  apply b.equivalence.injective
  rw [b.zero_value]
  apply Finite.unit_reflects
  have h := equation x y
  rw [hz,c.zero_value,hx] at h
  exact h.symm

structure Base (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages
  productEmpty : Coordinates S 2 ⟨2,3⟩ 0
  h0Target3 : Coordinates S 2 ⟨4,3⟩ 0
  h0Target4 : Coordinates S 2 ⟨5,4⟩ 0
  transitions : ∀ q, 2 ≤ q → q < 4 → Transition S pages P q h0Degree h1Degree

theorem empty_later (B : Base S pages P) {d : Bidegree} (C : Coordinates S 2 d 0)
    (n : Nat) (x : (S.element (n+2) d).carrier) : x = 0 := by
  obtain ⟨x0,⟨trace⟩⟩ := Fact762SphereGDetection.Trace.exists_initial S pages d n x
  exact Fact762SphereGDetection.Trace.zero_endpoint S pages B.zeros d trace
    (Fact761ConstructedActual.Local.empty_zero C x0)

theorem product_zero (B : Base S pages P) {n : Nat} (bound : n+2 ≤ 4)
    (x : (S.element (n+2) h0Degree).carrier) (y : (S.element (n+2) h1Degree).carrier) :
    P.product.multiply (n+2) h0Degree h1Degree x y = 0 := by
  obtain ⟨y0,⟨trace⟩⟩ := Fact762SphereGDetection.Trace.exists_initial S pages h1Degree n y
  exact Fact762SphereGDetection.Trace.annihilator S pages B.zeros P h0Degree h1Degree n y0 y trace
    (fun z => Fact761ConstructedActual.Local.empty_zero B.productEmpty _)
    (fun q hq hl => B.transitions q hq (by omega)) x

theorem h1_zero {r : Nat} (x : (S.element r h0Degree).carrier)
    (y : (S.element r h1Degree).carrier)
    (hx : S.differential r h0Degree x = 0)
    (hz : P.product.multiply r h0Degree h1Degree x y = 0)
    (detect : ∀ v, P.product.multiply r h0Degree (AdamsTarget r h1Degree) x v = 0 → v = 0) :
    S.differential r h1Degree y = 0 := by
  have h := P.leibniz.formula r h0Degree h1Degree x y
  rw [hz,(S.differential r _).map_zero',cast_zero,hx,P.product.zero_left,zero_add] at h
  exact detect _ ((cast_zero_iff S r (adamsTarget_product_degree r h0Degree h1Degree).symm _).mp h.symm)

theorem d3_zero (B : Base S pages P) (D : Detector3 S pages P)
    (y : (S.element 3 h1Degree).carrier) : S.differential 3 h1Degree y = 0 := by
  let x := D.input.nextLeft.equivalence.symm Finite.leftName
  apply h1_zero x y (empty_later B B.h0Target3 1 _) (product_zero B (by decide) x y)
  intro v hv
  exact reflects D.input.nextLeft D.input.nextRight D.input.nextTarget
    (next_product_coordinates D.input) x (D.input.nextLeft.equivalence.apply_symm_apply _) v hv

theorem d4_zero (B : Base S pages P) (D : Detector4 S pages P)
    (y : (S.element 4 h1Degree).carrier) : S.differential 4 h1Degree y = 0 := by
  let x := D.input.nextLeft.equivalence.symm Finite.leftName
  apply h1_zero x y (empty_later B B.h0Target4 2 _) (product_zero B (by decide) x y)
  intro v hv
  exact reflects D.input.nextLeft D.input.nextRight D.input.nextTarget
    (next_product_coordinates D.input) x (D.input.nextLeft.equivalence.apply_symm_apply _) v hv

#print axioms Detector3.input
#print axioms Detector4Stage2.input
#print axioms Detector4.input
#print axioms reflects
#print axioms empty_later
#print axioms product_zero
#print axioms h1_zero
#print axioms d3_zero
#print axioms d4_zero
end Row2693D5Search.LowH1
