import PermanentMapTailCertificates.Certificate
import PermanentCycleCertificates.Import
import OutgoingCycleCertificates.Import

namespace PermanentMapTailCertificates
open PermanentCycleCertificates

/-- Reuse the canonical finite prefix wire; no parser supplies tail mathematics. -/
def assemble (s : System) (x : s.Page 0) (wire : PrefixWire)
    (meaning : PrefixMeaning s x wire.stages) (tail : MapTail s wire.stages.length) :
    Certificate s x := ⟨wire.stages, meaning, tail⟩

theorem imported_permanent (s : System) (x : s.Page 0) (wire : PrefixWire)
    (valid : wire.Valid) (meaning : PrefixMeaning s x wire.stages)
    (tail : MapTail s wire.stages.length) : s.Permanent x :=
  checkPermanent_sound s x wire.stages meaning tail valid.2.2.2.1

def assembleCycle (s : System) (x : s.Page 0) (wire : OutgoingCycleCertificates.Wire)
    (meaning : PrefixMeaning s x wire.stages) (tail : OutgoingMapTail s wire.stages.length) :
    CycleCertificate s x := ⟨wire.stages, meaning, tail⟩

theorem imported_cycle (s : System) (x : s.Page 0) (wire : OutgoingCycleCertificates.Wire)
    (valid : wire.Valid) (meaning : PrefixMeaning s x wire.stages)
    (tail : OutgoingMapTail s wire.stages.length) : OutgoingCycleCertificates.AlwaysCycle s x :=
  checkCycle_sound s x wire.stages meaning tail valid.2.2.2.1

#print axioms imported_permanent
#print axioms imported_cycle
end PermanentMapTailCertificates
