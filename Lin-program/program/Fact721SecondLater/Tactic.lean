import Fact721SecondLater.Later
import Lean.Elab.Tactic
namespace Fact721SecondLater
open ManualInputObligations ManualInputObligations.Reference Fact721ConstructedActual.Second
open Fact721SecondE6 (ResultValid)
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
  {product : CertifiedAdamsProduct S}
  {P : Prefix5 S pages initial} {I : Fact721SecondE6.Input P product}
  {previous : Fact721SecondE6.LaterInput P I}

theorem e9_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 9 := ⟨binding,L.endpoint9.value,L.same_input9 input binding⟩

theorem e10_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 10 := ⟨binding,L.endpoint10.value,L.same_input10 input binding⟩

theorem e11_sound (L : Input previous) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 11 := ⟨binding,L.endpoint11.value,L.same_input11 input binding⟩

open Lean Elab Tactic
syntax (name := secondLaterCert) "fact721_second_later_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| fact721_second_later_cert using $input:term named $binding:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``Fact721SecondE6.ResultValid do
        throwError "fact721_second_later_cert: expected Fact721SecondE6.ResultValid with the original E2 input"
      evalTactic (← `(tactic| first
        | exact Fact721SecondLater.e9_sound $input _ $binding
        | exact Fact721SecondLater.e10_sound $input _ $binding
        | exact Fact721SecondLater.e11_sound $input _ $binding
        | fail "fact721_second_later_cert: expected page 9, 10 or 11 and the same named E2 input"))

theorem tactic9 (L : Input previous) : ResultValid S pages initial (raw initial) 9 := by
  fact721_second_later_cert using L named raw_binding
#print axioms e9_sound
#print axioms tactic9
theorem tactic10 (L : Input previous) : ResultValid S pages initial (raw initial) 10 := by
  fact721_second_later_cert using L named raw_binding
#print axioms e10_sound
#print axioms tactic10
theorem tactic11 (L : Input previous) : ResultValid S pages initial (raw initial) 11 := by
  fact721_second_later_cert using L named raw_binding
#print axioms e11_sound
#print axioms tactic11

example (_L : Input previous) (impossible : False) : ResultValid S pages initial 0 11 := by
  fail_if_success fact721_second_later_cert using _L named raw_binding
  exact impossible.elim

example (_L : Input previous) (impossible : False) : ResultValid S pages initial (raw initial) 12 := by
  fail_if_success fact721_second_later_cert using _L named raw_binding
  exact impossible.elim
end Fact721SecondLater
