import Row3143D0Leibniz.Binding

namespace Row3143D0Leibniz.Assembly
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact721ConstructedActual

/-- The complete E2 input constructs the E3 coordinates; no E3 equivalence
or zero-dimensional carrier is asserted from an inventory label. -/
structure E2Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (degree : Bidegree) (w : WireComparison) where
  current : AdditiveCoordinates degree S 2 w.m
  step : StepInput degree S pages 2 w current

noncomputable def E2Input.next (I : E2Input S pages degree w) (accepted : checkWire w = true) :
    AdditiveCoordinates degree S 3 w.h := I.step.next accepted

structure DetectorE2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  current : E2Input S pages Descent.detectorDegree Data.rightTarget
  target : E2Input S pages Descent.detectorTargetDegree Data.detectorTarget
  incoming : E2Input S pages ⟨14,123⟩ Data.detectorIncoming
  outgoing : E2Input S pages ⟨20,127⟩ Data.detectorOutgoing
  targetIncoming : E2Input S pages ⟨18,126⟩ Data.detectorTargetIncoming
  targetOutgoing : E2Input S pages ⟨24,130⟩ Data.detectorTargetOutgoing
  zeroMeaning : LocalZeroMeaning pages 3 Descent.detectorDegree
  addMeaning : LocalAddMeaning pages 3 Descent.detectorDegree
  targetZeroMeaning : LocalZeroMeaning pages 3 Descent.detectorTargetDegree
  targetAddMeaning : LocalAddMeaning pages 3 Descent.detectorTargetDegree

noncomputable def DetectorE2.assemble (D : DetectorE2 S pages) : Descent.Prefix S pages where
  current := D.current.next (by decide)
  target := D.target.next (by decide)
  outgoing := (D.outgoing.next (by decide)).coordinates
  incoming := (ActualAdamsIncomingBridge.sourceEquiv S 3 Descent.detectorDegree (by decide)).trans
    (D.incoming.next (by decide)).coordinates.equivalence
  targetOutgoing := (D.targetOutgoing.next (by decide)).coordinates
  targetIncoming := (ActualAdamsIncomingBridge.sourceEquiv S 3 Descent.detectorTargetDegree (by decide)).trans
    (D.targetIncoming.next (by decide)).coordinates.equivalence
  zeroMeaning := D.zeroMeaning
  addMeaning := D.addMeaning
  targetZeroMeaning := D.targetZeroMeaning
  targetAddMeaning := D.targetAddMeaning

/-- The recorded nonzero d4 is interpreted on the actual classes obtained
from the checked E2 homology and d3 quotients of the same spectral sequence. -/
noncomputable def DetectorE2.known (D : DetectorE2 S pages)
    (recorded : S.differential 4 Descent.detectorDegree
      ((pages.nextPage 3 Descent.detectorDegree).toNext
        (Quotient.mk _ (Binding.detectorCycle D.assemble))) =
      (pages.nextPage 3 Descent.detectorTargetDegree).toNext
        (Quotient.mk _ (Binding.detectorTargetCycle D.assemble))) :
    Descent.KnownDifferential S pages := Binding.knownFromNamed D.assemble recorded

#print axioms E2Input.next
#print axioms DetectorE2.assemble
#print axioms DetectorE2.known
end Row3143D0Leibniz.Assembly
