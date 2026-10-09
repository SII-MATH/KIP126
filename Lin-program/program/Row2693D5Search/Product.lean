import Row2693D5Search.LowH1

namespace Row2693D5Search.Product
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ActualAdamsProductTraceBridge Fact762SphereGDetection.ProductDescent

abbrev leftDegree : Bidegree := ⟨1,2⟩
abbrev rightDegree : Bidegree := ⟨9,132⟩
abbrev productDegree : Bidegree := ⟨10,134⟩
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

def h1Meaning {r : Nat} (hr : 1 < r) (current : Coordinates S r leftDegree 1)
    (target : Coordinates S r (AdamsTarget r leftDegree) 1)
    (additive : ∀ x y, current.equivalence (x+y) = add (current.equivalence x) (current.equivalence y))
    (cycle : ∀ x, S.differential r leftDegree x = 0) :
    Meaning S r leftDegree Data.left3 current where
  current_add := additive
  outgoingCoordinates := target.equivalence
  outgoing_injective := target.equivalence.injective
  outgoing_zero := target.zero_value
  outgoing := by
    intro x
    rw [cycle,target.zero_value]
    change zero = eval (matrixOf 1 1 [false]) _
    exact (show ∀ v : Vec 1, zero = eval (matrixOf 1 1 [false]) v from by decide) _
  incomingCoordinates := fun _ => zero
  incoming_surjective := by
    intro v
    exact ⟨ActualAdamsIncomingBridge.sourceZero S r leftDegree,by funext i; exact Fin.elim0 i⟩
  incoming := by
    intro x
    have h : ¬ r ≤ leftDegree.filtration := by change ¬ r ≤ 1; omega
    rw [ActualAdamsIncomingBridge.differential,dif_neg h]
    change current.equivalence (0 : (S.element r leftDegree).carrier) = eval (matrixOf 1 0 []) zero
    rw [current.zero_value]
    exact (eval_zero _).symm

structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  left : Coordinates S 2 leftDegree 1
  right : Coordinates S 2 rightDegree 2
  product : Coordinates S 2 productDegree 5
  leftMeaning : Meaning S 2 leftDegree Data.left2 left
  rightMeaning : Meaning S 2 rightDegree Data.right2 right
  productMeaning : Meaning S 2 productDegree Data.product2 product
  leftZero : LocalZeroMeaning pages 2 leftDegree
  rightZero : LocalZeroMeaning pages 2 rightDegree
  productZero : LocalZeroMeaning pages 2 productDegree
  equation : ∀ x y, product.equivalence (P.product.multiply 2 leftDegree rightDegree x y) =
    PageProductCertificates.product Data.mainTensor (left.equivalence x) (right.equivalence y)
  transition : Transition S pages P 2 leftDegree rightDegree

def Stage2.input (D : Stage2 S pages P) : Input S pages P 2 leftDegree rightDegree
    Data.left2 Data.right2 Data.product2 D.left D.right D.product where
  leftMeaning := D.leftMeaning
  rightMeaning := D.rightMeaning
  targetMeaning := D.productMeaning
  leftValid := Data.left2_valid
  rightValid := Data.right2_valid
  targetValid := Data.product2_valid
  leftZero := D.leftZero
  rightZero := D.rightZero
  targetZero := D.productZero
  tensor := Data.mainTensor
  nextTensor := Finite.tensor3
  equation := D.equation
  finite := fun x y _ _ => Finite.descent2 x y
  transition := D.transition

structure Stage3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  previous : Stage2 S pages P
  low : LowH1.Base S pages P
  detector : LowH1.Detector3 S pages P
  leftAdd : LocalAddMeaning pages 2 leftDegree
  rightMeaning : Meaning S 3 rightDegree Data.right3 previous.input.nextRight
  productMeaning : Meaning S 3 productDegree Data.product3 previous.input.nextTarget
  rightZero : LocalZeroMeaning pages 3 rightDegree
  productZero : LocalZeroMeaning pages 3 productDegree
  transition : Transition S pages P 3 leftDegree rightDegree

noncomputable def Stage3.leftMeaning (D : Stage3 S pages P) :
    Meaning S 3 leftDegree Data.left3 D.previous.input.nextLeft :=
  h1Meaning (by decide) D.previous.input.nextLeft D.detector.input.nextRight
    (nextCoordinates_add D.previous.leftMeaning pages Data.left2_valid D.previous.leftZero D.leftAdd)
    (LowH1.d3_zero D.low D.detector)

noncomputable def Stage3.input (D : Stage3 S pages P) : Input S pages P 3 leftDegree rightDegree
    Data.left3 Data.right3 Data.product3 D.previous.input.nextLeft D.previous.input.nextRight
      D.previous.input.nextTarget where
  leftMeaning := D.leftMeaning
  rightMeaning := D.rightMeaning
  targetMeaning := D.productMeaning
  leftValid := Data.left3_valid
  rightValid := Data.right3_valid
  targetValid := Data.product3_valid
  leftZero := D.low.zeros 3 leftDegree
  rightZero := D.rightZero
  targetZero := D.productZero
  tensor := Finite.tensor3
  nextTensor := Finite.tensor4
  equation := next_product_coordinates D.previous.input
  finite := fun x y _ _ => Finite.descent3 x y
  transition := D.transition

structure Stage4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  previous : Stage3 S pages P
  detector : LowH1.Detector4 S pages P
  leftAdd : LocalAddMeaning pages 3 leftDegree
  rightMeaning : Meaning S 4 rightDegree Data.right4 previous.input.nextRight
  productMeaning : Meaning S 4 productDegree Data.product4 previous.input.nextTarget
  rightZero : LocalZeroMeaning pages 4 rightDegree
  productZero : LocalZeroMeaning pages 4 productDegree
  transition : Transition S pages P 4 leftDegree rightDegree

noncomputable def Stage4.leftMeaning (D : Stage4 S pages P) :
    Meaning S 4 leftDegree Data.left4 D.previous.input.nextLeft :=
  h1Meaning (by decide) D.previous.input.nextLeft D.detector.input.nextRight
    (nextCoordinates_add D.previous.leftMeaning pages Data.left3_valid
      (D.previous.low.zeros 3 leftDegree) D.leftAdd)
    (LowH1.d4_zero D.previous.low D.detector)

noncomputable def Stage4.input (D : Stage4 S pages P) : Input S pages P 4 leftDegree rightDegree
    Data.left4 Data.right4 Data.product4 D.previous.input.nextLeft D.previous.input.nextRight
      D.previous.input.nextTarget where
  leftMeaning := D.leftMeaning
  rightMeaning := D.rightMeaning
  targetMeaning := D.productMeaning
  leftValid := Data.left4_valid
  rightValid := Data.right4_valid
  targetValid := Data.product4_valid
  leftZero := D.previous.low.zeros 4 leftDegree
  rightZero := D.rightZero
  targetZero := D.productZero
  tensor := Finite.tensor4
  nextTensor := Finite.tensor5
  equation := next_product_coordinates D.previous.input
  finite := fun x y _ _ => Finite.descent4 x y
  transition := D.transition

#print axioms h1Meaning
#print axioms Stage2.input
#print axioms Stage3.leftMeaning
#print axioms Stage3.input
#print axioms Stage4.leftMeaning
#print axioms Stage4.input
end Row2693D5Search.Product
