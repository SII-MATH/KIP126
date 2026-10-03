import KIP126.Def.StableHomotopy.Implementation.Data
import KIP126.Def.ClassicalAdams.MilnorCooperations.Proofs
import KIP126.Def.ClassicalAdams.MapFiltration.Proofs

namespace KIP126.Def.Solution

/-- a04: a derived obligation of the actual first-page comparison. -/
theorem cobar_square_zero (F : KIP126.Challenge1.FoundationInput)
    (M : KIP126.Challenge1.MilnorInput F) :
    KIP126.Challenge1.MilnorCobarSquareZero :=
  KIP126.Classical.Adams.milnor_differential_squared F.hf2 M.toMilnor

/-- a06: exactly k positive-filtration factors, each zero on HF₂ homology. -/
theorem adams_filtration_decomposition (F : KIP126.Challenge1.FoundationInput)
    (M : KIP126.Challenge1.MilnorInput F) [KIP126.Challenge1.TensorInput F]
    (A : KIP126.Challenge1.CooperationInput F M) :
    KIP126.Challenge1.AdamsFiltrationDecomposition F := by
  intro X Y f k hk hf
  exact KIP126.Classical.Adams.AdamsFiltrationAtLeast.hasMod2ZeroFactorization
    F.hf2 A.ring f k hk hf

end KIP126.Def.Solution
