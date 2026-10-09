import Fact721SecondE6.Data
import Fact721SecondE6.Bridge
import Fact715IncomingTail.Basic

namespace Fact721SecondE6.Targets
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact761ConstructedActual.Local

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  current : Chart ⟨18,139⟩ S 2 3
  currentStep : Step ⟨18,139⟩ S pages 2 Data.d6target2 current
  incoming : Chart ⟨15,137⟩ S 2 2
  incomingStep : Step ⟨15,137⟩ S pages 2 Data.d6incoming2 incoming
  outgoing : Chart ⟨21,141⟩ S 2 4
  outgoingStep : Step ⟨21,141⟩ S pages 2 Data.d6outgoing2 outgoing

noncomputable def Stage2.current3 (I : Stage2 S pages) : Chart ⟨18,139⟩ S 3 2 :=
  I.currentStep.next (by decide)
noncomputable def Stage2.incoming3 (I : Stage2 S pages) : Chart ⟨15,137⟩ S 3 1 :=
  I.incomingStep.next (by decide)
noncomputable def Stage2.outgoing3 (I : Stage2 S pages) : Chart ⟨21,141⟩ S 3 3 :=
  I.outgoingStep.next (by decide)

/-- These full d3 equations interpret the recorded row3068 and row2909
events, in charts constructed from their complete d2 neighborhoods. -/
structure Stage3 (I : Stage2 S pages) where
  outgoing : ∀ x, I.outgoing3.coordinates.equivalence (S.differential 3 ⟨18,139⟩ x) =
    eval (matrixOf 3 2 Data.d6target3.outgoing) (I.current3.coordinates.equivalence x)
  incoming : ∀ x, I.current3.coordinates.equivalence
    (ActualAdamsIncomingBridge.differential S 3 ⟨18,139⟩ x) =
      eval (matrixOf 2 1 Data.d6target3.incoming)
        (I.incoming3.coordinates.equivalence (x (by decide)))
  zero3 : LocalZeroMeaning pages 3 ⟨18,139⟩
  add3 : LocalAddMeaning pages 3 ⟨18,139⟩

noncomputable def Stage3.step3 {I : Stage2 S pages} (T : Stage3 I) :
    Step ⟨18,139⟩ S pages 3 Data.d6target3 I.current3 where
  outgoingTarget := I.outgoing3.coordinates
  outgoing := T.outgoing
  incomingSource := (ActualAdamsIncomingBridge.sourceEquiv S 3 ⟨18,139⟩ (by decide)).trans
    I.incoming3.coordinates.equivalence
  incoming := T.incoming
  zeroMeaning := T.zero3
  addMeaning := T.add3

noncomputable def Stage3.page4 {I : Stage2 S pages} (T : Stage3 I) : Coordinates S 4 ⟨18,139⟩ 0 :=
  (T.step3.next (by decide)).coordinates

noncomputable def Stage3.page6 {I : Stage2 S pages} (T : Stage3 I)
    (zero4 : LocalZeroMeaning pages 4 ⟨18,139⟩) (zero5 : LocalZeroMeaning pages 5 ⟨18,139⟩) :
    Coordinates S 6 ⟨18,139⟩ 0 := emptyNext pages (emptyNext pages T.page4 zero4) zero5

theorem Stage3.whole_d6_zero {I : Stage2 S pages} (T : Stage3 I)
    (zero4 : LocalZeroMeaning pages 4 ⟨18,139⟩) (zero5 : LocalZeroMeaning pages 5 ⟨18,139⟩)
    (x : (S.element 6 Fact721ConstructedActual.Second.degree).carrier) :
    S.differential 6 Fact721ConstructedActual.Second.degree x = 0 :=
  empty_zero (T.page6 zero4 zero5) _

structure D7Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Chart ⟨19,140⟩ S 2 1
  step2 : Step ⟨19,140⟩ S pages 2 Data.d7target2 initial

theorem D7Input.whole_d7_zero (I : D7Input S pages) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (x : (S.element 7 Fact721ConstructedActual.Second.degree).carrier) :
    S.differential 7 Fact721ConstructedActual.Second.degree x = 0 :=
  Fact715IncomingTail.empty_later S pages zeros ⟨19,140⟩ 3
    (empty_zero (I.step2.next (by decide)).coordinates) 7 (by decide) _

#print axioms Stage3.step3
#print axioms Stage3.page4
#print axioms Stage3.page6
#print axioms Stage3.whole_d6_zero
#print axioms D7Input.whole_d7_zero
end Fact721SecondE6.Targets
