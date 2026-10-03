import KIP126.Def.StableHomotopy.Implementation.Fixed
import KIP126.Def.ClassicalAdams.Convergence.BHS.Predicates

/-! The first stage proves the completion and convergence background for
the implementation already fixed in Def.
The equality is actual dependent data: a consuming choice cannot replace
Def's spectrum category, sphere, or Milnor coordinates. -/
namespace KIP126

structure Challenge1 where
  implementation : KIP126.Implementation
  implementation_eq : implementation = KIP126.Def.fixedImplementation
  /-- Completion and strong convergence for the actual HF₂ Adams tower of
  the selected completed sphere; no specified cycle or stem is assumed. -/
  sphereApplicability : Classical.Adams.BHSObjectApplicability
    implementation.foundationInput.countableProducts implementation.foundationInput.hf2.unit
    (StableHomotopy.SphereSpectrum (C := implementation.foundationInput.Spectrum))

namespace Challenge1

abbrev foundationInput (c : KIP126.Challenge1) := c.implementation.foundationInput
abbrev milnorInput (c : KIP126.Challenge1) := c.implementation.milnorInput
abbrev tensorInput (c : KIP126.Challenge1) := c.implementation.tensorInput
abbrev cooperationInput (c : KIP126.Challenge1) := c.implementation.cooperationInput
abbrev sourceComparison (c : KIP126.Challenge1) := c.implementation.sourceComparison
abbrev sourceTensor (c : KIP126.Challenge1) := c.implementation.sourceTensor
abbrev foundation (c : KIP126.Challenge1) := c.implementation.foundation
abbrev milnor (c : KIP126.Challenge1) := c.implementation.milnor

/-- Any boundary witness delivers the same entire dependent implementation. -/
theorem sameImplementation (c d : KIP126.Challenge1) :
    c.implementation = d.implementation :=
  c.implementation_eq.trans d.implementation_eq.symm

end Challenge1
end KIP126
