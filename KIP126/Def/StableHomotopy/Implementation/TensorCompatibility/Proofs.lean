import KIP126.Def.StableHomotopy.Context.TensorSuspension.Adjunction.Proofs
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

open CategoryTheory MonoidalCategory
set_option backward.isDefEq.respectTransparency false
set_option backward.defeqAttrib.useBackward true

/-- The existing internal-Hom unit compatibility reconstructs the complete
specified left-tensor shift structure, for all objects and integer shifts. -/
theorem leftShift_eq_adjoint (F : FoundationInput) [T : TensorInput F]
    (X : F.Spectrum) :
    T.leftShift X = (ihom.adjunction X).leftAdjointCommShift ℤ := by
  letI := TensorInput.ihom_unit_shift X
  exact StableHomotopy.TensorShift.leftShift_eq_adjoint (ihom.adjunction X)

/-- Reconstructing through the same internal-Hom shifts and braiding gives
the original entire right-tensor shift structure. This does not supply its
separate right-parameter naturality or associator compatibility. -/
theorem rightShift_eq_adjoint (F : FoundationInput) [T : TensorInput F]
    (X : F.Spectrum) :
    T.rightShift X =
      (letI := (ihom.adjunction X).leftAdjointCommShift ℤ
       Functor.CommShift.ofIso (BraidedCategory.tensorLeftIsoTensorRight X) ℤ) := by
  rw [← leftShift_eq_adjoint F X]
  have hl := TensorInput.leftShift_eq (F := F) X
  rw [hl]
  exact (StableHomotopy.TensorShift.commShift_ofIso_roundtrip
    (BraidedCategory.tensorLeftIsoTensorRight X)).symm

end KIP126.Foundation.TensorInput
