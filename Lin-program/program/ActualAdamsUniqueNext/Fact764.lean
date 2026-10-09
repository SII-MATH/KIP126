import ActualAdamsUniqueNext.Basic
import ActualAdamsUniqueBridge.Fact764

namespace ActualAdamsUniqueNext.Fact764
open ManualInputObligations.Reference ActualAdamsSystemBridge
open ActualAdamsUniqueBridge.Fact764

theorem unique_nonzero_e5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (b : Bool) (x : (S.element 4 degree).carrier)
    (c : ActualAdamsUniqueBridge.Certificate S 4 degree x)
    (wire : c.wire = Fact764ConstrainedE5.Actual.wire b) :
    IsOnlyNonzero S 5 degree (advance S pages 4 degree x) :=
  next_unique S pages zeros 4 degree x (ActualAdamsUniqueBridge.Fact764.unique S b x c wire)

theorem unique_by_tactic (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (x : (S.element 4 degree).carrier)
    (c : ActualAdamsUniqueBridge.Certificate S 4 degree x)
    (wire : c.wire = Fact764ConstrainedE5.Actual.wire false) :
    IsOnlyNonzero S 5 degree (advance S pages 4 degree x) := by
  rcases c with ⟨w,coordinates,named⟩
  change w = Fact764ConstrainedE5.Actual.wire false at wire
  subst w
  adams_next_unique_cert using
    (⟨ActualAdamsUniqueBridge.Fact764.certificate S false x coordinates named,zeros⟩ :
      Certificate S pages 4 degree x)

#print axioms unique_nonzero_e5
#print axioms unique_by_tactic
end ActualAdamsUniqueNext.Fact764
