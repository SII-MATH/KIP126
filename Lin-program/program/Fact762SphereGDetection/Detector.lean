import Fact762SphereGDetection.ProductDescent
namespace Fact762SphereGDetection.Detector
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning ActualAdamsProductTraceBridge ProductDescent
abbrev leftDegree : Bidegree := ⟨4,24⟩
abbrev rightDegree : Bidegree := ⟨19,143⟩
abbrev targetDegree : Bidegree := ⟨23,167⟩
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}
structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) (P : CertifiedAdamsProduct S) where
  left : Coordinates S 2 leftDegree 1
  right : Coordinates S 2 rightDegree 2
  target : Coordinates S 2 targetDegree 5
  leftMeaning : Meaning S 2 leftDegree Data.w4_24_2 left
  leftZero : LocalZeroMeaning pages 2 leftDegree
  rightMeaning : Meaning S 2 rightDegree Data.w19_143_2 right
  rightZero : LocalZeroMeaning pages 2 rightDegree
  targetMeaning : Meaning S 2 targetDegree Data.w23_167_2 target
  targetZero : LocalZeroMeaning pages 2 targetDegree
  transition : Transition S pages P 2 leftDegree rightDegree
  equation : ∀ x y, target.equivalence (P.product.multiply 2 leftDegree rightDegree x y) =
    PageProductCertificates.product Data.product2.product (left.equivalence x) (right.equivalence y)
def Stage2.input (A : Stage2 S pages P) :
    ProductDescent.Input S pages P 2 leftDegree rightDegree Data.w4_24_2 Data.w19_143_2 Data.w23_167_2
      A.left A.right A.target where
  leftMeaning := A.leftMeaning
  leftValid := Data.w4_24_2_valid
  leftZero := A.leftZero
  rightMeaning := A.rightMeaning
  rightValid := Data.w19_143_2_valid
  rightZero := A.rightZero
  targetMeaning := A.targetMeaning
  targetValid := Data.w23_167_2_valid
  targetZero := A.targetZero
  tensor := Data.product2.product
  nextTensor := Data.product3.product
  equation := A.equation
  finite := Data.product2_next
  transition := A.transition
structure Stage3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) (P : CertifiedAdamsProduct S) where
  previous : Stage2 S pages P
  leftMeaning : Meaning S 3 leftDegree Data.w4_24_3 previous.input.nextLeft
  leftZero : LocalZeroMeaning pages 3 leftDegree
  rightMeaning : Meaning S 3 rightDegree Data.w19_143_3 previous.input.nextRight
  rightZero : LocalZeroMeaning pages 3 rightDegree
  targetMeaning : Meaning S 3 targetDegree Data.w23_167_3 previous.input.nextTarget
  targetZero : LocalZeroMeaning pages 3 targetDegree
  transition : Transition S pages P 3 leftDegree rightDegree
noncomputable def Stage3.input (A : Stage3 S pages P) :
    ProductDescent.Input S pages P 3 leftDegree rightDegree Data.w4_24_3 Data.w19_143_3 Data.w23_167_3
      A.previous.input.nextLeft A.previous.input.nextRight A.previous.input.nextTarget where
  leftMeaning := A.leftMeaning
  leftValid := Data.w4_24_3_valid
  leftZero := A.leftZero
  rightMeaning := A.rightMeaning
  rightValid := Data.w19_143_3_valid
  rightZero := A.rightZero
  targetMeaning := A.targetMeaning
  targetValid := Data.w23_167_3_valid
  targetZero := A.targetZero
  tensor := Data.product3.product
  nextTensor := Data.product4.product
  equation := next_product_coordinates A.previous.input
  finite := Data.product3_next
  transition := A.transition
structure Stage4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) (P : CertifiedAdamsProduct S) where
  previous : Stage3 S pages P
  leftMeaning : Meaning S 4 leftDegree Data.w4_24_4 previous.input.nextLeft
  leftZero : LocalZeroMeaning pages 4 leftDegree
  rightMeaning : Meaning S 4 rightDegree Data.w19_143_4 previous.input.nextRight
  rightZero : LocalZeroMeaning pages 4 rightDegree
  targetMeaning : Meaning S 4 targetDegree Data.w23_167_4 previous.input.nextTarget
  targetZero : LocalZeroMeaning pages 4 targetDegree
  transition : Transition S pages P 4 leftDegree rightDegree
noncomputable def Stage4.input (A : Stage4 S pages P) :
    ProductDescent.Input S pages P 4 leftDegree rightDegree Data.w4_24_4 Data.w19_143_4 Data.w23_167_4
      A.previous.input.nextLeft A.previous.input.nextRight A.previous.input.nextTarget where
  leftMeaning := A.leftMeaning
  leftValid := Data.w4_24_4_valid
  leftZero := A.leftZero
  rightMeaning := A.rightMeaning
  rightValid := Data.w19_143_4_valid
  rightZero := A.rightZero
  targetMeaning := A.targetMeaning
  targetValid := Data.w23_167_4_valid
  targetZero := A.targetZero
  tensor := Data.product4.product
  nextTensor := Data.product5
  equation := next_product_coordinates A.previous.input
  finite := Data.product4_next
  transition := A.transition
theorem reflects (A : Stage4 S pages P) (g : (S.element 5 leftDegree).carrier)
    (named : A.input.nextLeft.equivalence g = fun _ => true)
    (y : (S.element 5 rightDegree).carrier)
    (zero : P.product.multiply 5 leftDegree rightDegree g y = 0) : y = 0 := by
  apply A.input.nextRight.equivalence.injective
  rw [A.input.nextRight.zero_value]
  apply Data.product5_reflects
  have h := next_product_coordinates A.input g y
  rw [zero,A.input.nextTarget.zero_value,named] at h
  exact h.symm
#print axioms Stage2.input
#print axioms Stage3.input
#print axioms Stage4.input
#print axioms reflects
end Fact762SphereGDetection.Detector
