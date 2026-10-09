import Fact721SecondE6.Actual
import Fact721SecondE6.Targets
import ActualAdamsSystemBridge.Basic

namespace Fact721SecondE6
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact721ConstructedActual.Second

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
  {product : CertifiedAdamsProduct S}

structure LaterInput (P : Prefix5 S pages initial) (I : Input P product) where
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages
  target6 : Targets.Stage2 S pages
  target6Step3 : Targets.Stage3 target6
  target7 : Targets.D7Input S pages
  incoming6 : Coordinates S 2 ⟨6,129⟩ 0
  incoming7 : Coordinates S 2 ⟨5,128⟩ 0

namespace LaterInput
variable {P : Prefix5 S pages initial} {I : Input P product} (L : LaterInput P I)
include L

theorem incoming6_zero (x : ActualAdamsIncomingBridge.Source S 6 degree) :
    ActualAdamsIncomingBridge.differential S 6 degree x = 0 := by
  have hx : x (by decide) = 0 :=
    Fact715IncomingTail.empty_later S pages L.zeros ⟨6,129⟩ 2
      (Fact761ConstructedActual.Local.empty_zero L.incoming6) 6 (by decide) _
  unfold ActualAdamsIncomingBridge.differential
  rw [dif_pos (show 6 ≤ degree.filtration from by decide)]
  change pageCast S 6 _ (S.differential 6 ⟨6,129⟩ (x (by decide))) = 0
  erw [hx,(S.differential 6 ⟨6,129⟩).map_zero',ActualAdamsIncomingBridge.cast_zero]

theorem incoming7_zero (x : ActualAdamsIncomingBridge.Source S 7 degree) :
    ActualAdamsIncomingBridge.differential S 7 degree x = 0 := by
  have hx : x (by decide) = 0 :=
    Fact715IncomingTail.empty_later S pages L.zeros ⟨5,128⟩ 2
      (Fact761ConstructedActual.Local.empty_zero L.incoming7) 7 (by decide) _
  unfold ActualAdamsIncomingBridge.differential
  rw [dif_pos (show 7 ≤ degree.filtration from by decide)]
  change pageCast S 7 _ (S.differential 7 ⟨5,128⟩ (x (by decide))) = 0
  erw [hx,(S.differential 7 ⟨5,128⟩).map_zero',ActualAdamsIncomingBridge.cast_zero]

theorem cycle6 : S.differential 6 degree I.endpoint6.value = S.zero 6 (AdamsTarget 6 degree) :=
  (L.target6Step3.whole_d6_zero (L.zeros 4 ⟨18,139⟩) (L.zeros 5 ⟨18,139⟩) _).trans
    (S.zero_is_zero _ _).symm

noncomputable def endpoint7 : Endpoint S pages 7 degree (raw initial) :=
  ⟨(pages.nextPage 6 degree).toNext (Quotient.mk _ (⟨I.endpoint6.value,L.cycle6⟩ : PageCycle S 6 degree)),
    .step I.endpoint6.trace L.cycle6⟩

theorem nonzero7 : L.endpoint7.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.zeros 6 degree
    (⟨I.endpoint6.value,L.cycle6⟩ : PageCycle S 6 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image S 6 degree I.endpoint6.value).mpr boundary
  exact I.nonzero6 (hy.symm.trans (L.incoming6_zero y))

theorem cycle7 : S.differential 7 degree L.endpoint7.value = S.zero 7 (AdamsTarget 7 degree) :=
  (L.target7.whole_d7_zero L.zeros _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint8 : Endpoint S pages 8 degree (raw initial) :=
  ⟨(pages.nextPage 7 degree).toNext (Quotient.mk _ (⟨L.endpoint7.value,L.cycle7⟩ : PageCycle S 7 degree)),
    .step L.endpoint7.trace L.cycle7⟩

theorem nonzero8 : L.endpoint8.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.zeros 7 degree
    (⟨L.endpoint7.value,L.cycle7⟩ : PageCycle S 7 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image S 7 degree L.endpoint7.value).mpr boundary
  exact L.nonzero7 (hy.symm.trans (L.incoming7_zero y))

theorem same_input8 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 8 input L.endpoint8.value) ∧ L.endpoint8.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint8.trace⟩,L.nonzero8⟩

#print axioms incoming6_zero
#print axioms incoming7_zero
#print axioms cycle6
#print axioms nonzero7
#print axioms cycle7
#print axioms nonzero8
#print axioms same_input8
end LaterInput
end Fact721SecondE6
