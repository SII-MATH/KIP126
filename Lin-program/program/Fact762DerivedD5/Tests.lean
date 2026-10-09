import Fact762DerivedD5.Basic

namespace Fact762DerivedD5.Tests
open ManualInputObligations.Reference Fact762CsigmasqD5

variable {C S : AdamsSpectralSequence} {R : Type} [CommRing R] [CharP R 2]

theorem zero_input_rejected (c : Certificate C S R) :
    ¬ (c.source.stage.previous.previous.target.equivalence 0 = Comparison.sphere2) := by
  rw [c.source.stage.previous.previous.target.zero_value]
  decide

example (c : Certificate C S R) :
    Nonempty (ManualInputObligations.Trace S c.source.stage.input.targetPages
      Source.sphereDegree 6 c.initial c.endpoint6.value) :=
  c.fixed_trace6 c.initial c.source.sphere_raw

example (c : Certificate C S R) : True := by
  fail_if_success
    have : Actual.ResultValid S c.source.stage.input.targetPages 0 := by
      fact762_derived_d5_cert using c
  trivial

#print axioms zero_input_rejected
end Fact762DerivedD5.Tests
