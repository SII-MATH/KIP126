import Fact761ConstructedActual.Local
import Fact762IncomingCertificates.Data

namespace Fact762NonzeroE6
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open Fact761ConstructedActual.Local

abbrev incomingDegree : Bidegree := ⟨9,135⟩
abbrev degree : Bidegree := ⟨14,139⟩
abbrev source2 := AggregateD5Conditional.Data.b_S0_9_135_d2
abbrev source3 := AggregateD5Conditional.Data.b_S0_9_135_d3
abbrev source4 := AggregateD5Conditional.Data.b_S0_9_135_d4

structure Incoming2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Chart incomingDegree S 2 6
  step2 : Step incomingDegree S pages 2 source2 initial

noncomputable def Incoming2.page3 (I : Incoming2 S pages) : Chart incomingDegree S 3 4 :=
  I.step2.next (by decide)

structure Incoming3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Incoming2 S pages
  step3 : Step incomingDegree S pages 3 source3 previous.page3

noncomputable def Incoming3.page4 (I : Incoming3 S pages) : Chart incomingDegree S 4 2 :=
  I.step3.next (by decide)

structure Incoming4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  previous : Incoming3 S pages
  step4 : Step incomingDegree S pages 4 source4 previous.page4

noncomputable def Incoming4.page5 (I : Incoming4 S pages) : Coordinates S 5 incomingDegree 0 :=
  (I.step4.next (by decide)).coordinates

theorem Incoming4.source_zero (I : Incoming4 S pages)
    (x : (S.element 5 incomingDegree).carrier) : x = 0 := empty_zero I.page5 x

theorem Incoming4.whole_incoming_zero (I : Incoming4 S pages)
    (x : ActualAdamsIncomingBridge.Source S 5 degree) :
    ActualAdamsIncomingBridge.differential S 5 degree x = 0 := by
  have hx : x (by decide) = 0 := I.source_zero _
  unfold ActualAdamsIncomingBridge.differential
  rw [dif_pos (show 5 ≤ degree.filtration from by decide)]
  change pageCast S 5 _ (S.differential 5 incomingDegree (x (by decide))) = 0
  erw [hx,(S.differential 5 incomingDegree).map_zero',ActualAdamsIncomingBridge.cast_zero]

#print axioms Incoming2.page3
#print axioms Incoming3.page4
#print axioms Incoming4.page5
#print axioms Incoming4.source_zero
#print axioms Incoming4.whole_incoming_zero
end Fact762NonzeroE6
