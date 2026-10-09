import KIP126.Def.StableHomotopy.Context.TensorSuspension.Braiding.Construction.Proofs
import KIP126.Def.StableHomotopy.Implementation.Data

namespace KIP126.Foundation.TensorInput
open KIP126.StableHomotopy

/-- The same foundation's specified left shifts are transported from its
right shifts by braiding. Hence this side of tensor-boundary compatibility
is already supplied, with no new field or ambient structure choice. -/
theorem tensorSuspensionBraidingCompatibility (F : FoundationInput) [TensorInput F] :
    TensorSuspensionBraidingCompatibility (C := F.Spectrum) :=
  tensorSuspensionBraidingCompatibility_of_leftShift_eq (TensorInput.leftShift_eq)

end KIP126.Foundation.TensorInput
