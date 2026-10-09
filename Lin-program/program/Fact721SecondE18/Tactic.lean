import Fact721SecondE18.Later
import Lean.Elab.Tactic
namespace Fact721SecondE18
open ManualInputObligations ManualInputObligations.Reference Fact721ConstructedActual.Second
open Fact721SecondE6 (ResultValid)
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
  {product : CertifiedAdamsProduct S}
  {P : Prefix5 S pages initial} {I : Fact721SecondE6.Input P product}
  {old : Fact721SecondE6.LaterInput P I} {previous : Fact721SecondLater.Input old}

theorem e12_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 12 := ⟨binding,L.endpoint12.value,L.same_input12 input binding⟩

theorem e13_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 13 := ⟨binding,L.endpoint13.value,L.same_input13 input binding⟩

theorem e14_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 14 := ⟨binding,L.endpoint14.value,L.same_input14 input binding⟩

theorem e15_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 15 := ⟨binding,L.endpoint15.value,L.same_input15 input binding⟩

theorem e16_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 16 := ⟨binding,L.endpoint16.value,L.same_input16 input binding⟩

theorem e17_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 17 := ⟨binding,L.endpoint17.value,L.same_input17 input binding⟩

theorem e18_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 18 := ⟨binding,L.endpoint18.value,L.same_input18 input binding⟩

open Lean Elab Tactic
syntax (name := secondE18Cert) "fact721_second_e18_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| fact721_second_e18_cert using $input:term named $binding:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``Fact721SecondE6.ResultValid do
        throwError "fact721_second_e18_cert: expected Fact721SecondE6.ResultValid with the original E2 input"
      evalTactic (← `(tactic| first
        | exact Fact721SecondE18.e12_sound $input _ $binding
        | exact Fact721SecondE18.e13_sound $input _ $binding
        | exact Fact721SecondE18.e14_sound $input _ $binding
        | exact Fact721SecondE18.e15_sound $input _ $binding
        | exact Fact721SecondE18.e16_sound $input _ $binding
        | exact Fact721SecondE18.e17_sound $input _ $binding
        | exact Fact721SecondE18.e18_sound $input _ $binding
        | fail "fact721_second_e18_cert: expected page 12 through 18 and the same named E2 input"))

theorem tactic12 (L : Input previous) : ResultValid S pages initial (raw initial) 12 := by
  fact721_second_e18_cert using L named raw_binding
#print axioms e12_sound
#print axioms tactic12
theorem tactic13 (L : Input previous) : ResultValid S pages initial (raw initial) 13 := by
  fact721_second_e18_cert using L named raw_binding
#print axioms e13_sound
#print axioms tactic13
theorem tactic14 (L : Input previous) : ResultValid S pages initial (raw initial) 14 := by
  fact721_second_e18_cert using L named raw_binding
#print axioms e14_sound
#print axioms tactic14
theorem tactic15 (L : Input previous) : ResultValid S pages initial (raw initial) 15 := by
  fact721_second_e18_cert using L named raw_binding
#print axioms e15_sound
#print axioms tactic15
theorem tactic16 (L : Input previous) : ResultValid S pages initial (raw initial) 16 := by
  fact721_second_e18_cert using L named raw_binding
#print axioms e16_sound
#print axioms tactic16
theorem tactic17 (L : Input previous) : ResultValid S pages initial (raw initial) 17 := by
  fact721_second_e18_cert using L named raw_binding
#print axioms e17_sound
#print axioms tactic17
theorem tactic18 (L : Input previous) : ResultValid S pages initial (raw initial) 18 := by
  fact721_second_e18_cert using L named raw_binding
#print axioms e18_sound
#print axioms tactic18

example (_L : Input previous) (impossible : False) : ResultValid S pages initial 0 18 := by
  fail_if_success fact721_second_e18_cert using _L named raw_binding
  exact impossible.elim

example (_L : Input previous) (impossible : False) : ResultValid S pages initial (raw initial) 19 := by
  fail_if_success fact721_second_e18_cert using _L named raw_binding
  exact impossible.elim
end Fact721SecondE18
