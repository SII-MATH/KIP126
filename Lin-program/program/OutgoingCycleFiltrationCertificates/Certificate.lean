import OutgoingCycleFiltrationCertificates.Basic

namespace OutgoingCycleFiltrationCertificates
open PermanentCycleCertificates OutgoingCycleCertificates

/-- A checked finite outgoing-cycle prefix and proved actual tail become a
ZInfinity statement only after the full cycle/boundary realization is given. -/
theorem checked_intersection {f : Filtration E2} {s : System}
    (r : Realization f s) (x : E2)
    (certificate : OutgoingCycleCertificates.Certificate s (r.initial x))
    (checked : OutgoingCycleCertificates.checkPrefix certificate.stages = true) : f.ZInfinity x :=
  (r.intersection_iff_alwaysCycle x).mpr
    (OutgoingCycleCertificates.check_sound s (r.initial x) certificate.stages
      certificate.meaning certificate.tail checked)

theorem permanent_in_intersection {f : Filtration E2} {s : System}
    (r : Realization f s) (x : E2) (h : s.Permanent (r.initial x)) : f.ZInfinity x :=
  (r.intersection_iff_alwaysCycle x).mpr (permanent_alwaysCycle s (r.initial x) h)

#print axioms checked_intersection
#print axioms permanent_in_intersection
end OutgoingCycleFiltrationCertificates
