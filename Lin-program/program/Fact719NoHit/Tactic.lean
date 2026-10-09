import Fact719NoHit.Basic
import Fact719ConstructedActual.Tactic

namespace Fact719NoHit
open ManualInputObligations.Reference ActualAdamsSystemBridge

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact719ConstructedActual.AdditiveCoordinates S 2 1}

def ResultValid (zeros : ZeroMeaning S pages)
    (input : (S.element 2 degree).carrier) : Prop :=
  Fact719ConstructedActual.ResultValid S pages initial input ∧ NotKilled zeros input

theorem result_sound (zeros : ZeroMeaning S pages) (E : EmptySources S)
    (P : Fact719ConstructedActual.Prefix6 S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact719PageCertificates.target) :
    ResultValid (initial := initial) zeros input :=
  ⟨Fact719ConstructedActual.result_sound P input binding,named_not_killed zeros E P input binding⟩

syntax "fact719_no_hit_cert" " using " term " with " term " via " term : tactic
macro_rules
  | `(tactic| fact719_no_hit_cert using $p:term with $e:term via $z:term) =>
    `(tactic| exact result_sound $z $e $p _ (by assumption))

example (zeros : ZeroMeaning S pages) (E : EmptySources S)
    (P : Fact719ConstructedActual.Prefix6 S pages initial)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact719PageCertificates.target) :
    ResultValid (initial := initial) zeros input := by
  fact719_no_hit_cert using P with E via zeros

theorem zero_input_rejected (zeros : ZeroMeaning S pages) :
    ¬ ResultValid (initial := initial) zeros 0 :=
  fun accepted => Fact719ConstructedActual.zero_input_rejected accepted.1

example (zeros : ZeroMeaning S pages) (E : EmptySources S)
    (P : Fact719ConstructedActual.Prefix6 S pages initial) : True := by
  fail_if_success
    have : ResultValid (initial := initial) zeros 0 := by
      fact719_no_hit_cert using P with E via zeros
  trivial

#print axioms result_sound
#print axioms zero_input_rejected
end Fact719NoHit
