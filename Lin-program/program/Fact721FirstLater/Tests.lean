import Fact721FirstLater.Tactic

namespace Fact721FirstLater.Tests
open LinearCertificates PageTransitionCertificates

theorem old_d4_complete : Fact721FirstD4Search.Constructed.wire4.m = 1 ∧
    Fact721FirstD4Search.Constructed.wire4.h = 1 ∧ Fact721FirstD4Search.Constructed.wire4.n = 0 := by decide
theorem source_d3_complete : Row2907PDeltaDetection.Descent.sourceD3.m = 2 ∧
    Row2907PDeltaDetection.Descent.sourceD3.h = 1 := by decide
theorem first_name_nonzero : Fact721PageCertificates.First.target ≠ zero := by decide

open ManualInputObligations.Reference Fact721ConstructedActual.First
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 2}
  {previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial}

example (_E : Incoming S) (_zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (_previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial) : True := by
  fail_if_success
    have : NotHit _zeros (0 : (S.element 2 degree).carrier) := by
      fact721_first_no_hit_cert using _previous with _E via _zeros named raw_binding
  trivial

#print axioms old_d4_complete
#print axioms source_d3_complete
#print axioms first_name_nonzero
end Fact721FirstLater.Tests
