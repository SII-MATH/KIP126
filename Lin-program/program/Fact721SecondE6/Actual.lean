import Fact721SecondE6.Bridge

namespace Fact721SecondE6
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact721ConstructedActual.Second

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
  {product : CertifiedAdamsProduct S}

structure Input (P : Prefix5 S pages initial) (product : CertifiedAdamsProduct S) where
  square : SquareInput P product
  target : Coordinates S 5 ⟨17,138⟩ 1
  incomingInitial : Coordinates S 2 ⟨7,130⟩ 0
  zero2 : LocalZeroMeaning pages 2 ⟨7,130⟩
  zero3 : LocalZeroMeaning pages 3 ⟨7,130⟩
  zero4 : LocalZeroMeaning pages 4 ⟨7,130⟩
  zero5 : LocalZeroMeaning pages 5 degree

namespace Input
variable {P : Prefix5 S pages initial} (I : Input P product)

noncomputable def incomingPage5 : Coordinates S 5 ⟨7,130⟩ 0 :=
  Fact761ConstructedActual.Local.emptyNext pages
    (Fact761ConstructedActual.Local.emptyNext pages
      (Fact761ConstructedActual.Local.emptyNext pages I.incomingInitial I.zero2) I.zero3) I.zero4

noncomputable def incoming : ActualAdamsIncomingBridge.Source S 5 degree ≃ Vec 0 :=
  (ActualAdamsIncomingBridge.sourceEquiv S 5 degree (by decide)).trans I.incomingPage5.equivalence

noncomputable def continuation : Fact713SquareContinuation.Actual.Input S pages product where
  square := I.square.witness
  target := I.target
  incomingEmpty := I.incoming
  addMeaning4 := P.step4.addMeaning
  zeroMeaning5 := I.zero5

theorem current_exact : I.continuation.current.equivalence = P.page5.coordinates.equivalence := rfl
theorem prior_endpoint_exact : I.continuation.square.source.endpoint5.value = P.endpoint.value := rfl

noncomputable def endpoint6 : Endpoint S pages 6 degree (raw initial) := I.continuation.endpoint6
noncomputable def page6 : Coordinates S 6 degree 1 := I.continuation.page6

theorem coordinate6 : I.page6.equivalence I.endpoint6.value = (fun _ => true) :=
  Fact713SquareContinuation.Actual.coordinate6 I.continuation
theorem nonzero6 : I.endpoint6.value ≠ 0 := Fact713SquareContinuation.Actual.nonzero6 I.continuation

include I in
theorem no_boundary5 : ¬ PageBoundary S 5 degree P.endpoint.value := by
  intro hb
  obtain ⟨x,hx⟩ := (ActualAdamsIncomingBridge.differential_image S 5 degree P.endpoint.value).mpr hb
  have eq : x = ActualAdamsIncomingBridge.sourceZero S 5 degree :=
    I.incoming.injective (by funext i; exact Fin.elim0 i)
  rw [eq,ActualAdamsIncomingBridge.differential_zero,S.zero_is_zero] at hx
  exact P.nonzero hx.symm

theorem same_input (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 6 input I.endpoint6.value) ∧ I.endpoint6.value ≠ 0 :=
  Fact713SquareContinuation.Actual.same_input_E6 I.continuation input binding

#print axioms incomingPage5
#print axioms current_exact
#print axioms prior_endpoint_exact
#print axioms coordinate6
#print axioms nonzero6
#print axioms no_boundary5
#print axioms same_input
end Input
end Fact721SecondE6
