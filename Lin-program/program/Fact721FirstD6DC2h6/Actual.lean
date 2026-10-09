import Fact721FirstD6DC2h6.First
import Fact721FirstD6DC2h6.Target
import Fact721FirstD6DC2h6.Incoming4
import Fact721FirstD6DC2h6.Incoming5

namespace Fact721FirstD6DC2h6.Actual
open ManualInputObligations ManualInputObligations.Reference

variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}
  {P : CertifiedAdamsProduct S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates First.degree S 2 2}
  {previous : Fact721FirstD4Search.Constructed.Prefix5 S sp initial}
  {old : Fact721FirstLater.Input previous P}

/-- No first-class d6 value, E7 endpoint, or target E6 injectivity is supplied.
They follow from the same map, complete E2 charts, and source rules. -/
structure Input (old : Fact721FirstLater.Input previous P) where
  action : ModuleAction.Action S T
  stage : ExtraSource.Stage2 S T sp tp
  extra : ExtraSource.Meaning stage action
  incoming4 : Incoming4.Input (P := P) stage extra
  target : Target.Stage2 stage
  targetMeaning : Target.Meaning target incoming4.map
  square : Row2684D5Search.Actual.Witness S sp P
  incoming5 : Incoming5.Input square incoming4.map
  first : First.Input incoming4.map previous
  sphereZeros : ActualAdamsSystemBridge.ZeroMeaning S sp
  detectorZeros : ActualAdamsSystemBridge.ZeroMeaning T tp

namespace Input
variable (I : Input (T := T) (tp := tp) old)
include I

theorem reflects4 (x : (S.element 4 Target.degree).carrier)
    (hx : I.incoming4.map.map 4 Target.degree x = 0) : x = 0 :=
  I.targetMeaning.reflects4 I.sphereZeros I.detectorZeros x hx

theorem incoming4_zero (x : ActualAdamsIncomingBridge.Source T 4 Target.degree) :
    ActualAdamsIncomingBridge.differential T 4 Target.degree x = 0 :=
  Reflection.indexed_zero 4 Target.degree (by decide) I.incoming4.whole_d4_zero x

theorem incoming5_zero (x : ActualAdamsIncomingBridge.Source T 5 Target.degree) :
    ActualAdamsIncomingBridge.differential T 5 Target.degree x = 0 :=
  Reflection.indexed_zero 5 Target.degree (by decide) I.incoming5.whole_d5_zero x

theorem reflects5 (x : (S.element 5 Target.degree).carrier)
    (hx : I.incoming4.map.map 5 Target.degree x = 0) : x = 0 :=
  Reflection.next_reflects I.incoming4.map 4 Target.degree I.sphereZeros I.detectorZeros
    I.reflects4 I.incoming4_zero x hx

theorem reflects6 (x : (S.element 6 Target.degree).carrier)
    (hx : I.incoming4.map.map 6 Target.degree x = 0) : x = 0 :=
  Reflection.next_reflects I.incoming4.map 5 Target.degree I.sphereZeros I.detectorZeros
    I.reflects5 I.incoming5_zero x hx

theorem d6_zero : S.differential 6 First.degree old.endpoint6.value = 0 := by
  apply I.reflects6
  rw [← I.incoming4.map.naturality,I.first.image6_zero old I.detectorZeros,
    (T.differential 6 First.degree).map_zero']

noncomputable def cycle6 : PageCycle S 6 First.degree :=
  ⟨old.endpoint6.value,I.d6_zero.trans (S.zero_is_zero _ _).symm⟩

noncomputable def endpoint7 : Endpoint S sp 7 First.degree (Fact721ConstructedActual.First.raw initial) :=
  ⟨(sp.nextPage 6 First.degree).toNext (Quotient.mk _ I.cycle6),.step old.endpoint6.trace I.cycle6.property⟩

theorem nonzero7 : I.endpoint7.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S sp I.sphereZeros 6 First.degree I.cycle6).mp
    (hz.trans (S.zero_is_zero _ _).symm)
  exact old.incoming.no_boundary I.sphereZeros 6 (by decide) _ old.nonzero6 boundary

theorem same_input7 (input : (S.element 2 First.degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    Nonempty (Trace S sp First.degree 7 input I.endpoint7.value) ∧ I.endpoint7.value ≠ 0 := by
  have same : input = Fact721ConstructedActual.First.raw initial :=
    initial.coordinates.equivalence.injective (binding.trans Fact721ConstructedActual.First.raw_binding.symm)
  subst input
  exact ⟨⟨I.endpoint7.trace⟩,I.nonzero7⟩

end Input
#print axioms Input.reflects4
#print axioms Input.incoming4_zero
#print axioms Input.incoming5_zero
#print axioms Input.reflects5
#print axioms Input.reflects6
#print axioms Input.d6_zero
#print axioms Input.nonzero7
#print axioms Input.same_input7
end Fact721FirstD6DC2h6.Actual
