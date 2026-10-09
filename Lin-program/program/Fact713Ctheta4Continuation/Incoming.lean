import Row2773D4Leibniz.CoordinateBridge
import ActualAdamsHomologyCoordinates.Adapter

namespace Fact713Ctheta4Continuation.Incoming
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsProductTraceBridge
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Row2773D4Leibniz Row2773D4Leibniz.Actual Row2773D4Leibniz.CoordinateBridge

/-- These are the old row2773 product and full E3 source interpretations.
The desired incoming E4 differential equation is derived from them. -/
structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  products : Row2773D4Leibniz.Actual.Meaning S P
  old : Row2773Leibniz.Actual.Meaning S P
  eta : EtaD3Source.Actual.Meaning S P
  h0 : (S.element 3 EtaD3Source.Actual.h0Degree).carrier
  namedH0 : eta.h0 h0 = EtaD3Source.namedH0
  sourceTransition : Transition S pages P 3 etaDegree rightDegree
  leftTransition : Transition S pages P 3 leftDegree rightDegree
  rightTransition : Transition S pages P 3 etaDegree rightTargetDegree
  targetZero : LocalZeroMeaning pages 3 targetDegree
  current : Coordinates S 3 sourceDegree 2
  complete : ActualAdamsHomologyCoordinates.Meaning S 3 sourceDegree staircase3 current
  sourceZero : LocalZeroMeaning pages 3 sourceDegree
  binding : ∀ x, current.equivalence x = staircase2Coordinates.toCoordinates (old.source x)
  left : (S.element 3 etaDegree).carrier
  right : (S.element 3 rightDegree).carrier
  source : (S.element 3 sourceDegree).carrier
  namedLeft : old.eta left = Row2773Leibniz.namedEta
  namedRight : old.right right = Row2773Leibniz.namedRight
  namedSource : old.source source = Row2773Leibniz.namedSource

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S}

noncomputable def Input.page4 (D : Input S pages P) : Coordinates S 4 sourceDegree 1 :=
  D.complete.nextCoordinates pages staircase3_valid D.sourceZero

def Input.cycle3 (D : Input S pages P) : PageCycle S 3 sourceDegree :=
  ⟨D.source,(Row2773Leibniz.Actual.actual_row2773_d3_zero S P D.old D.left D.right D.source
    D.namedLeft D.namedRight D.namedSource).trans (S.zero_is_zero _ _).symm⟩

noncomputable def Input.named4 (D : Input S pages P) : (S.element 4 sourceDegree).carrier :=
  (pages.nextPage 3 sourceDegree).toNext (Quotient.mk _ D.cycle3)

theorem named_coordinate (D : Input S pages P) :
    D.page4.equivalence D.named4 = (fun _ : Fin 1 => true) :=
  actual_next_name S pages P D.old D.current D.complete D.sourceZero D.binding D.cycle3 D.namedSource

theorem named_d4_zero (D : Input S pages P) : S.differential 4 sourceDegree D.named4 = 0 :=
  actual_row2773_d4_zero S pages P D.products D.old D.eta D.h0 D.namedH0
    D.sourceTransition D.leftTransition D.rightTransition D.targetZero D.left D.right D.source
    D.namedLeft D.namedRight D.namedSource

theorem whole_d4_zero (D : Input S pages P) (x : (S.element 4 sourceDegree).carrier) :
    S.differential 4 sourceDegree x = 0 := by
  rcases (show ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) from by decide)
    (D.page4.equivalence x) with hz | hn
  · have same : x = 0 := D.page4.equivalence.injective (hz.trans D.page4.zero_value.symm)
    rw [same,(S.differential 4 sourceDegree).map_zero']
  · have same : x = D.named4 := D.page4.equivalence.injective (hn.trans (named_coordinate D).symm)
    exact (congrArg (S.differential 4 sourceDegree) same).trans (named_d4_zero D)

#print axioms Input.page4
#print axioms named_coordinate
#print axioms named_d4_zero
#print axioms whole_d4_zero
end Fact713Ctheta4Continuation.Incoming
