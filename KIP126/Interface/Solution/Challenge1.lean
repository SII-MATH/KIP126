import KIP126.Interface.Axiom.Challenge1

/-! Consume only the background proof from Challenge1. All types and objects
were fixed in Def before this axiom is used. Transport by implementation_eq
prevents this witness from changing the model or the standard sphere. -/
namespace KIP126.Interface.Solution

noncomputable def challenge1Witness : KIP126.Challenge1 :=
  Classical.choice KIP126.Interface.Axiom.challenge1

theorem standardSphereApplicability : Classical.Adams.BHSObjectApplicability
    KIP126.Def.fixedImplementation.foundationInput.countableProducts
    KIP126.Def.fixedImplementation.foundationInput.hf2.unit
    (StableHomotopy.SphereSpectrum
      (C := KIP126.Def.fixedImplementation.foundationInput.Spectrum)) := by
  have h := challenge1Witness.sphereApplicability
  rw [challenge1Witness.implementation_eq] at h
  exact h

end KIP126.Interface.Solution
