import Fact721SecondNoHit.Basic

namespace Fact721SecondNoHit
open ManualInputObligations.Reference Fact721ConstructedActual.Second

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
    {product : CertifiedAdamsProduct S} {P : Prefix5 S pages initial}
    {I : Fact721SecondE6.Input P product}

syntax "fact721_second_no_hit_cert" " using " term " with " term : tactic
macro_rules
  | `(tactic| fact721_second_no_hit_cert using $cert:term with $evidence:term) =>
    `(tactic| first
      | exact named_not_hit $cert $evidence _ (by assumption)
      | exact raw_not_hit $cert $evidence)

example (L : Fact721SecondE6.LaterInput P I) (E : Fact721SecondLater.Incoming S)
    (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    NotHit L.zeros input := by fact721_second_no_hit_cert using L with E

example (L : Fact721SecondE6.LaterInput P I) (E : Fact721SecondLater.Incoming S) :
    NotHit L.zeros (raw initial) := by fact721_second_no_hit_cert using L with E

example (_L : Fact721SecondE6.LaterInput P I) (_E : Fact721SecondLater.Incoming S) : True := by
  fail_if_success
    have : NotHit _L.zeros (0 : (S.element 2 degree).carrier) := by
      fact721_second_no_hit_cert using _L with _E
  trivial

#print axioms named_not_hit
end Fact721SecondNoHit
