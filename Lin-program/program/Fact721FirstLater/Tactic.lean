import Fact721FirstLater.NoHit
import Lean.Elab.Tactic

namespace Fact721FirstLater
open ManualInputObligations ManualInputObligations.Reference
open Fact721ConstructedActual.First

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 2}
  {product : CertifiedAdamsProduct S}
  {previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial}

def ResultValid (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 2)
    (input : (S.element 2 degree).carrier) (page : Nat) : Prop :=
  initial.coordinates.equivalence input = Fact721PageCertificates.First.target ∧
    ∃ endpoint : (S.element page degree).carrier,
      Nonempty (Trace S pages degree page input endpoint) ∧ endpoint ≠ 0

theorem e6_sound (I : Input previous product) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    ResultValid S pages initial input 6 := ⟨binding,I.endpoint6.value,I.same_input6 input binding⟩

theorem zero_input_rejected (page : Nat) : ¬ ResultValid S pages initial 0 page := by
  rintro ⟨h,_⟩
  rw [initial.coordinates.zero_value] at h
  exact (show (LinearCertificates.zero : LinearCertificates.Vec 2) ≠ Fact721PageCertificates.First.target from by decide) h

syntax "fact721_first_e6_cert" " using " term " named " term : tactic
macro_rules
  | `(tactic| fact721_first_e6_cert using $cert:term named $binding:term) =>
    `(tactic| exact Fact721FirstLater.e6_sound $cert _ $binding)

syntax "fact721_first_no_hit_cert" " using " term " with " term " via " term " named " term : tactic
macro_rules
  | `(tactic| fact721_first_no_hit_cert using $cert:term with $incoming:term via $zeros:term named $binding:term) =>
    `(tactic| exact Fact721FirstLater.named_not_hit $cert $incoming $zeros _ $binding)

theorem tactic6 (I : Input previous product) : ResultValid S pages initial (raw initial) 6 := by
  fact721_first_e6_cert using I named raw_binding

include previous in
theorem tactic_no_hit (E : Incoming S) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) :
    NotHit zeros (raw initial) := by
  fact721_first_no_hit_cert using previous with E via zeros named raw_binding

example (_I : Input previous product) (impossible : False) : ResultValid S pages initial 0 6 := by
  fail_if_success fact721_first_e6_cert using _I named raw_binding
  exact impossible.elim
example (_I : Input previous product) (impossible : False) : ResultValid S pages initial (raw initial) 7 := by
  fail_if_success fact721_first_e6_cert using _I named raw_binding
  exact impossible.elim

#print axioms e6_sound
#print axioms zero_input_rejected
#print axioms tactic6
#print axioms tactic_no_hit
end Fact721FirstLater
