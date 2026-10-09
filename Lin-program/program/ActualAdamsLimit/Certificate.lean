import ActualAdamsLimit.Basic
import PermanentMapTailCertificates.Certificate

namespace ActualAdamsLimit
open ManualInputObligations.Reference ActualAdamsSystemBridge
open ActualAdamsFiltration ActualAdamsAdditiveFiltration

theorem checked_intersection (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (x : (S.element 2 d).carrier)
    (c : PermanentMapTailCertificates.CycleCertificate
      (system S pages (additive.zeroMeaning S pages) d) x)
    (checked : OutgoingCycleCertificates.checkPrefix c.stages = true) :
    x ∈ ZInfinity S pages additive d :=
  (actualRealization S pages (additive.zeroMeaning S pages) d).intersection_iff_alwaysCycle x
    |>.mpr (c.sound checked)

theorem checked_nonzero_limit (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (additive : AddMeaning S pages) (d : Bidegree) (x : ZInfinity S pages additive d)
    (c : PermanentMapTailCertificates.Certificate
      (system S pages (additive.zeroMeaning S pages) d) x.val)
    (checked : PermanentCycleCertificates.checkPrefix c.stages = true) :
    (QuotientAddGroup.mk x : Limit S pages additive d) ≠ 0 :=
  (permanent_iff_nonzero_limit S pages additive d x).mp (c.sound checked)

syntax "adams_intersection_cert" " using " term : tactic
macro_rules
  | `(tactic| adams_intersection_cert using $c:term) => `(tactic|
      exact ActualAdamsLimit.checked_intersection _ _ _ _ _ $c (by first | rfl | decide))

syntax "adams_limit_cert" " using " term : tactic
macro_rules
  | `(tactic| adams_limit_cert using $c:term) => `(tactic|
      exact ActualAdamsLimit.checked_nonzero_limit _ _ _ _ _ $c (by first | rfl | decide))

#print axioms checked_intersection
#print axioms checked_nonzero_limit
end ActualAdamsLimit
