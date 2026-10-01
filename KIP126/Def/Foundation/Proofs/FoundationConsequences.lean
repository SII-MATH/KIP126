import KIP126.Def.Foundation.Interfaces
import KIP126.Def.ClassicalAdams.MilnorCooperations.Proofs
import KIP126.Def.ClassicalAdams.MapFiltration.Proofs

namespace KIP126.Foundation.Proofs
open KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams

/-- Derived from the very same first-page comparison, without a stage package. -/
theorem cobar_square_zero (F : KIP126.Foundation.FoundationInput)
    (M : MilnorCooperations F.hf2) : KIP126.Foundation.MilnorCobarSquareZero :=
  milnor_differential_squared F.hf2 M

/-- Exactly k positive-filtration factors, each zero on HF2 homology. -/
theorem adams_filtration_decomposition (F : KIP126.Foundation.FoundationInput)
    [KIP126.Foundation.TensorInput F] (R : Mod2RingStructure F.hf2) :
    KIP126.Foundation.AdamsFiltrationDecomposition F := by
  intro X Y f k hk hf
  exact AdamsFiltrationAtLeast.hasMod2ZeroFactorization F.hf2 R f k hk hf
end KIP126.Foundation.Proofs
