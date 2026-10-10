import KIP126.Def.StableHomotopy.Implementation.TensorCompatibility.Proofs
import Lean.Elab.Command

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    if (`KIP126.Interface).isPrefixOf mod || (`KIP126.Main).isPrefixOf mod ||
        (`KIP126.LinProgram).isPrefixOf mod || (`KIP126.Def.StageInput).isPrefixOf mod then
      throwError "generic tensor compatibility imports a model or delivery: {mod}"
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  for decl in [``KIP126.StableHomotopy.tensorSuspensionBraidingCompatibility_of_leftShift_eq,
      ``KIP126.Foundation.TensorInput.tensorSuspensionBraidingCompatibility,
      ``KIP126.StableHomotopy.TensorShift.leftShift_eq_adjoint,
      ``KIP126.StableHomotopy.TensorShift.commShift_ofIso_roundtrip,
      ``KIP126.Foundation.TensorInput.leftShift_eq_adjoint,
      ``KIP126.Foundation.TensorInput.rightShift_eq_adjoint] do
    for ax in (← collectAxioms decl) do
      unless logical.contains ax do throwError "unexpected tensor compatibility axiom {decl}: {ax}"

#print axioms KIP126.Foundation.TensorInput.tensorSuspensionBraidingCompatibility

open CategoryTheory MonoidalCategory

/-- The generic theorem ranges over arbitrary adjunctions with the same
selected shift structures and the actual unit's existing compatibility. -/
example {C D : Type*} [Category C] [Category D] [HasShift C ℤ] [HasShift D ℤ]
    {L : C ⥤ D} {R : D ⥤ C} (adj : L ⊣ R)
    [s : L.CommShift ℤ] [R.CommShift ℤ] [NatTrans.CommShift adj.unit ℤ] :
    s = adj.leftAdjointCommShift ℤ :=
  KIP126.StableHomotopy.TensorShift.leftShift_eq_adjoint adj

/-- Equality of the full structure applies to every integer shift on the
same TensorInput, with no additional family compatibility input. -/
example (F : KIP126.Foundation.FoundationInput) [T : KIP126.Foundation.TensorInput F]
    (X : F.Spectrum) (n : ℤ) :
    (T.leftShift X).commShiftIso n =
      ((ihom.adjunction X).leftAdjointCommShift ℤ).commShiftIso n :=
  congrArg (fun s => s.commShiftIso n)
    (KIP126.Foundation.TensorInput.leftShift_eq_adjoint F X)

example (F : KIP126.Foundation.FoundationInput) [T : KIP126.Foundation.TensorInput F]
    (X : F.Spectrum) (n : ℤ) :
    (T.rightShift X).commShiftIso n =
      (letI := (ihom.adjunction X).leftAdjointCommShift ℤ
       Functor.CommShift.ofIso (BraidedCategory.tensorLeftIsoTensorRight X) ℤ).commShiftIso n :=
  congrArg (fun s => s.commShiftIso n)
    (KIP126.Foundation.TensorInput.rightShift_eq_adjoint F X)

#print axioms KIP126.StableHomotopy.TensorShift.leftShift_eq_adjoint
#print axioms KIP126.StableHomotopy.TensorShift.commShift_ofIso_roundtrip
#print axioms KIP126.Foundation.TensorInput.leftShift_eq_adjoint
#print axioms KIP126.Foundation.TensorInput.rightShift_eq_adjoint
