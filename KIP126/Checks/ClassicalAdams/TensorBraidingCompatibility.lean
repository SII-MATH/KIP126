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
      ``KIP126.Foundation.TensorInput.tensorSuspensionBraidingCompatibility] do
    for ax in (← collectAxioms decl) do
      unless logical.contains ax do throwError "unexpected tensor compatibility axiom {decl}: {ax}"

#print axioms KIP126.Foundation.TensorInput.tensorSuspensionBraidingCompatibility
