import Fact762NonzeroE6.Actual

namespace Fact762NonzeroE6.Tests
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference

theorem complete_d4_injective (x : Vec 2) :
    eval (matrixOf source4.k source4.m source4.outgoing) x = x := by decide +revert

theorem missing_d4_column_rejected :
    checkWire { source4 with outgoing := [true,false,false,false] } = false := by decide

variable {C S : AdamsSpectralSequence} {R : Type} [CommRing R] [CharP R 2]

theorem zero_input_rejected (c : Certificate C S R) :
    ¬ (c.previous.source.stage.previous.previous.target.equivalence 0 =
      Fact762CsigmasqD5.Comparison.sphere2) := by
  rw [c.previous.source.stage.previous.previous.target.zero_value]
  decide

example (_c : Certificate C S R) : True := by
  fail_if_success
    have : _c.ResultValid 0 := by fact762_e6_cert using _c
  trivial

#print axioms complete_d4_injective
#print axioms missing_d4_column_rejected
#print axioms zero_input_rejected
end Fact762NonzeroE6.Tests
