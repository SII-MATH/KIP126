import KIP126.Def.ClassicalAdams.SphereClasses.Products.Data
import KIP126.Def.StageInput.Milnor
import KIP126.Def.StageInput.StandardSphere.Sequence.Data
import KIP126.Def.SpectralSequence.Computation.API.Predicates

/-! Human-facing names for standard sphere differentials.  The definitions
expand to the actual spectral-sequence predicates, so they preserve page
representatives and degree transport.  The nonzero-target strengthening is
kept as a separate proposition. -/

namespace KIP126.Classical.Adams.StandardSphere

open KIP126.Core.SpectralSequence

/-- The standard hᵢ class, with its bidegree computed from `i`. -/
noncomputable def standardHi (i : ℕ) :
    sphereAdamsData.Page 2 (1, ((2 ^ i : ℕ) : ℤ)) :=
  Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations i

/-- The standard h₀ hᵢ² class, with its bidegree computed from `i`. -/
noncomputable def standardH0HiSquare (i : ℕ) :
    sphereAdamsData.Page 2 (3, ((1 + 2 ^ (i + 1) : ℕ) : ℤ)) :=
  Sphere.Internal.h0HiSquare standardFoundation.hf2 standardMilnorCooperations i

/-- Readable alias for `standardHi 4`; no new class is introduced. -/
abbrev h4 : sphereAdamsData.Page 2 (1, 16) := standardHi 4

/-- Readable alias for `standardH0HiSquare 3`; no new class is introduced. -/
abbrev h0H3Sq : sphereAdamsData.Page 2 (3, 17) := standardH0HiSquare 3

/-- The standard one-line d₂ equation `d₂(h₄) = h₀ h₃²`. -/
def h4D2H0H3Sq : Prop :=
  Differential sphereAdamsData 2 h4 h0H3Sq

/-- The same equation together with the fact that its target is nonzero. -/
def h4D2H0H3SqNonzero : Prop :=
  NonzeroDifferential sphereAdamsData 2 h4 h0H3Sq

end KIP126.Classical.Adams.StandardSphere
