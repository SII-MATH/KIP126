import Prop79NeighborCoordinates.Basic

namespace Prop79NeighborCoordinates
open LinearCertificates ManualInputObligations.Reference
open ActualAdamsHomologyCoordinates
open Prop79TargetSearch.Constructed

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates S 2 4}

/-- Both zero neighboring carriers are derived from their complete E2 and
E3 comparisons. No E4 coordinate equivalence is supplied independently. -/
noncomputable def assemble5
    (P : Prefix4 S pages initial)
    {incomingInitial : Fact721ConstructedActual.AdditiveCoordinates Incoming4.degree S 2 3}
    {outgoingInitial : Fact721ConstructedActual.AdditiveCoordinates Outgoing4.degree S 2 2}
    (incoming : Incoming4.Prefix4 S pages incomingInitial)
    (outgoing : Outgoing4.Prefix4 S pages outgoingInitial)
    (zeroMeaning : Meaning.LocalZeroMeaning pages 4 degree)
    (addMeaning : LocalAddMeaning pages 4 degree) : Prefix5 S pages initial :=
  Prop79TargetSearch.Assembly.prefix5 S pages initial P outgoing.page4.coordinates
    ((ActualAdamsIncomingBridge.sourceEquiv S 4 degree (by decide)).trans
      incoming.page4.coordinates.equivalence)
    zeroMeaning addMeaning

/-- A single future-prefix value controls the complete one-dimensional
incoming source, whose coordinates were constructed from its E2 data. -/
theorem all_incoming5_zero
    {incomingInitial : Fact721ConstructedActual.AdditiveCoordinates Incoming5.degree S 2 5}
    (incoming : Incoming5.Prefix5 S pages incomingInitial)
    (known : S.differential 5 Incoming5.degree
      (incoming.page5.coordinates.equivalence.symm (fun _ => true)) = 0) :
    ∀ x, ActualAdamsIncomingBridge.differential S 5 degree x = 0 := by
  intro x
  let y : (S.element 5 Incoming5.degree).carrier := x (by decide)
  have alternatives : incoming.page5.coordinates.equivalence y = zero ∨
      incoming.page5.coordinates.equivalence y = (fun _ => true) :=
    (show ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) from by decide) _
  have differentialZero : S.differential 5 Incoming5.degree y = 0 := by
    rcases alternatives with hz | hn
    · have same : y = 0 := incoming.page5.coordinates.equivalence.injective
        (hz.trans incoming.page5.coordinates.zero_value.symm)
      rw [same, (S.differential 5 Incoming5.degree).map_zero']
    · have same : y = incoming.page5.coordinates.equivalence.symm (fun _ => true) :=
        incoming.page5.coordinates.equivalence.injective
          (hn.trans (incoming.page5.coordinates.equivalence.apply_symm_apply _).symm)
      rw [same]
      exact known
  unfold ActualAdamsIncomingBridge.differential
  rw [dif_pos (show 5 ≤ degree.filtration from by decide)]
  change pageCast S 5 _ (S.differential 5 Incoming5.degree y) = 0
  rw [differentialZero]
  exact ActualAdamsIncomingBridge.cast_zero _ _ _

noncomputable def finalPage (P : Prefix5 S pages initial)
    {incomingInitial : Fact721ConstructedActual.AdditiveCoordinates Incoming5.degree S 2 5}
    (incoming : Incoming5.Prefix5 S pages incomingInitial)
    (known : S.differential 5 Incoming5.degree
      (incoming.page5.coordinates.equivalence.symm (fun _ => true)) = 0) : Page5Input P :=
  Prop79TargetSearch.Assembly.page5 S pages initial P
    ((ActualAdamsIncomingBridge.sourceEquiv S 5 degree (by decide)).trans
      incoming.page5.coordinates.equivalence)
    (all_incoming5_zero incoming known)

theorem requested_result (P : Prefix5 S pages initial)
    {incomingInitial : Fact721ConstructedActual.AdditiveCoordinates Incoming5.degree S 2 5}
    (incoming : Incoming5.Prefix5 S pages incomingInitial)
    (known : S.differential 5 Incoming5.degree
      (incoming.page5.coordinates.equivalence.symm (fun _ => true)) = 0)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Prop79TargetSearch.NoHit.input) :
    ResultValid S pages initial input := by
  prop79_cert using (⟨P, finalPage P incoming known⟩ : Certificate S pages initial) named binding

#print axioms assemble5
#print axioms all_incoming5_zero
#print axioms finalPage
#print axioms requested_result
end Prop79NeighborCoordinates
