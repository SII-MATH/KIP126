import KIP126.Challenge1
import KIP126.Def.ClassicalAdams.MilnorCooperations.Proofs
import KIP126.Def.ClassicalAdams.MapFiltration.Proofs

namespace KIP126.Def.Solution

/-- a04: a derived obligation of the actual first-page comparison. -/
theorem cobar_square_zero (c : KIP126.Challenge1) :
    KIP126.Challenge1.MilnorCobarSquareZero :=
  KIP126.Classical.Adams.milnor_differential_squared c.foundation.hf2 c.milnor

/-- a06: exactly k positive-filtration factors, each zero on HF₂ homology. -/
theorem adams_filtration_decomposition (c : KIP126.Challenge1) :
    KIP126.Challenge1.AdamsFiltrationDecomposition c.foundationInput := by
  letI := c.tensorInput
  intro X Y f k hk hf
  exact KIP126.Classical.Adams.AdamsFiltrationAtLeast.hasMod2ZeroFactorization
    c.foundationInput.hf2 c.cooperationInput.ring f k hk hf

end KIP126.Def.Solution
