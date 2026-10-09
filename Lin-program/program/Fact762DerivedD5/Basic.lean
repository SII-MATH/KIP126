import Fact762SphereGDetection.Constructed
import Fact762CsigmasqD5.Actual

namespace Fact762DerivedD5
open ManualInputObligations ManualInputObligations.Reference
open Fact762CsigmasqD5 Fact762SphereGDetection

/-- The source package supplies only its already constructed E2/E5 prefix.
The new detector supplies d5 vanishing by sphere multiplication. -/
structure Certificate (C S : AdamsSpectralSequence) (R : Type) [CommRing R] [CharP R 2] where
  source : Source.Prefix C S
  product : CertifiedAdamsProduct S
  detector : Assembly.Certificate S source.stage.input.targetPages product R
  naming : ∀ x, source.stage.previous.previous.target.equivalence x = Comparison.sphere2 →
    detector.interpretation.source x =
      NamedElementCertificates.evaluate detector.interpretation.valuation [[1,7,275]]

variable {C S : AdamsSpectralSequence} {R : Type} [CommRing R] [CharP R 2]

noncomputable def Certificate.initial (c : Certificate C S R) :
    (S.element 2 Source.sphereDegree).carrier :=
  c.source.stage.previous.previous.map c.source.raw

noncomputable def Certificate.value5 (c : Certificate C S R) :
    (S.element 5 Source.sphereDegree).carrier := c.source.stage.input.nextMap c.source.value5

theorem Certificate.named_d5_zero (c : Certificate C S R) :
    S.differential 5 Source.sphereDegree c.value5 = 0 :=
  Assembly.result_sound c.detector c.initial c.value5 c.source.sphereTrace5
    (c.naming c.initial c.source.sphere_raw)

theorem Certificate.result_sound (c : Certificate C S R)
    (input : (S.element 2 Source.sphereDegree).carrier)
    (binding : c.source.stage.previous.previous.target.equivalence input = Comparison.sphere2) :
    Fact762CsigmasqD5.Actual.ResultValid S c.source.stage.input.targetPages input := by
  have same : input = c.initial := c.source.stage.previous.previous.target.equivalence.injective
    (binding.trans c.source.sphere_raw.symm)
  subst input
  exact ⟨c.value5,⟨c.source.sphereTrace5⟩,
    Fact762CsigmasqD5.Actual.named_sphere_nonzero c.source,c.named_d5_zero⟩

noncomputable def Certificate.cycle5 (c : Certificate C S R) : PageCycle S 5 Source.sphereDegree :=
  ⟨c.value5,c.named_d5_zero.trans (S.zero_is_zero _ _).symm⟩

noncomputable def Certificate.endpoint6 (c : Certificate C S R) :
    Endpoint S c.source.stage.input.targetPages 6 Source.sphereDegree c.initial :=
  ⟨_,.step c.source.sphereTrace5 c.cycle5.property⟩

theorem Certificate.fixed_trace6 (c : Certificate C S R)
    (input : (S.element 2 Source.sphereDegree).carrier)
    (binding : c.source.stage.previous.previous.target.equivalence input = Comparison.sphere2) :
    Nonempty (Trace S c.source.stage.input.targetPages Source.sphereDegree 6 input c.endpoint6.value) := by
  have same : input = c.initial := c.source.stage.previous.previous.target.equivalence.injective
    (binding.trans c.source.sphere_raw.symm)
  subst input
  exact ⟨c.endpoint6.trace⟩

open Lean Elab Tactic
elab "fact762_derived_d5_cert" " using " c:term : tactic => do
  evalTactic (← `(tactic| exact Certificate.result_sound $c _ (by assumption)))

example (c : Certificate C S R) (input : (S.element 2 Source.sphereDegree).carrier)
    (binding : c.source.stage.previous.previous.target.equivalence input = Comparison.sphere2) :
    Fact762CsigmasqD5.Actual.ResultValid S c.source.stage.input.targetPages input := by
  fact762_derived_d5_cert using c

#print axioms Certificate.named_d5_zero
#print axioms Certificate.result_sound
#print axioms Certificate.endpoint6
#print axioms Certificate.fixed_trace6
end Fact762DerivedD5
