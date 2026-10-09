import Fact721SecondE6.Later
import Lean.Elab.Tactic

namespace Fact721SecondE6
open ManualInputObligations ManualInputObligations.Reference
open Fact721ConstructedActual.Second

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
  {product : CertifiedAdamsProduct S}

def ResultValid (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3)
    (input : (S.element 2 degree).carrier) (page : Nat) : Prop :=
  initial.coordinates.equivalence input = Fact721PageCertificates.Second.target ∧
    ∃ endpoint : (S.element page degree).carrier,
      Nonempty (Trace S pages degree page input endpoint) ∧ endpoint ≠ 0

theorem e6_sound {P : Prefix5 S pages initial} (I : Input P product)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 6 := ⟨binding,I.endpoint6.value,I.same_input input binding⟩

theorem e8_sound {P : Prefix5 S pages initial} {I : Input P product} (L : LaterInput P I)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    ResultValid S pages initial input 8 := ⟨binding,L.endpoint8.value,L.same_input8 input binding⟩

theorem zero_input_rejected (page : Nat) : ¬ ResultValid S pages initial 0 page := by
  rintro ⟨h,_⟩
  rw [initial.coordinates.zero_value] at h
  exact (show (LinearCertificates.zero : LinearCertificates.Vec 3) ≠ Fact721PageCertificates.Second.target from by decide) h

open Lean Elab Tactic
syntax (name := secondE6Cert) "fact721_second_e6_cert" " using " term " named " term : tactic
syntax (name := secondE8Cert) "fact721_second_e8_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| fact721_second_e6_cert using $input:term named $binding:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``ResultValid do
        throwError "fact721_second_e6_cert: expected Fact721SecondE6.ResultValid for the exact E2 input and page6"
      evalTactic (← `(tactic| exact Fact721SecondE6.e6_sound $input _ $binding))
  | `(tactic| fact721_second_e8_cert using $input:term named $binding:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``ResultValid do
        throwError "fact721_second_e8_cert: expected Fact721SecondE6.ResultValid for the exact E2 input and page8"
      evalTactic (← `(tactic| exact Fact721SecondE6.e8_sound $input _ $binding))

theorem tactic6 {P : Prefix5 S pages initial} (I : Input P product) :
    ResultValid S pages initial (raw initial) 6 := by
  fact721_second_e6_cert using I named raw_binding
theorem tactic8 {P : Prefix5 S pages initial} {I : Input P product} (L : LaterInput P I) :
    ResultValid S pages initial (raw initial) 8 := by
  fact721_second_e8_cert using L named raw_binding

example {P : Prefix5 S pages initial} (_I : Input P product) (impossible : False) :
    ResultValid S pages initial 0 6 := by
  fail_if_success fact721_second_e6_cert using _I named raw_binding
  exact impossible.elim
example {P : Prefix5 S pages initial} (_I : Input P product) (impossible : False) :
    ResultValid S pages initial (raw initial) 8 := by
  fail_if_success fact721_second_e6_cert using _I named raw_binding
  exact impossible.elim

#print axioms e6_sound
#print axioms e8_sound
#print axioms zero_input_rejected
#print axioms tactic6
#print axioms tactic8
end Fact721SecondE6
