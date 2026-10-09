import Fact763NoHit.Basic

namespace Fact763NoHit
open ManualInputObligations.Reference ActualAdamsSystemBridge
open Fact763Continuation.Actual

syntax "fact763_no_hit_cert" " using " term " with " term " via " term " named " term : tactic
macro_rules
  | `(tactic| fact763_no_hit_cert using $cert:term with $sources:term via $zeros:term named $binding:term) =>
    `(tactic| exact Fact763NoHit.named_not_hit $cert $sources $zeros _ $binding)

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {product : CertifiedAdamsProduct S}

example (D : Input S pages product) (E : EmptySources S) (zeros : ZeroMeaning S pages)
    (input : (S.element 2 degree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    NotHit zeros input := by
  fact763_no_hit_cert using D with E via zeros named binding

example (D : Input S pages product) (E : EmptySources S) (zeros : ZeroMeaning S pages) :
    NotHit zeros D.calculation.raw := by
  fact763_no_hit_cert using D with E via zeros named
    D.calculation.stage2.product.equivalence.apply_symm_apply _

example (_D : Input S pages product) (_E : EmptySources S) (_zeros : ZeroMeaning S pages) : True := by
  fail_if_success
    have : NotHit _zeros 0 := by
      fact763_no_hit_cert using _D with _E via _zeros named
        _D.calculation.stage2.product.equivalence.apply_symm_apply _
  trivial

end Fact763NoHit
