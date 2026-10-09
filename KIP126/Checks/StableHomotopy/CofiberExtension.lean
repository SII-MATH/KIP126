import KIP126.Def.StableHomotopy.Context.CofiberExtension.Proofs
import Lean.Elab.Command

/-! The shifted-cofiber extension keeps the vanishing composite as an explicit
premise. It does not read the fixed model, any delivery, or native artifacts. -/

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    if (`KIP126.Main).isPrefixOf mod || (`KIP126.Interface).isPrefixOf mod ||
        (`KIP126.LinProgram).isPrefixOf mod then
      throwError "generic cofiber extension imports an actual delivery or artifact: {mod}"
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  for decl in [``KIP126.StableHomotopy.CofiberExtension.exists_extension_of_shift_comp_zero,
      ``KIP126.StableHomotopy.CofiberExtension.exists_eta_nu_extension] do
    for ax in (← collectAxioms decl) do
      unless logical.contains ax do
        throwError "unexpected axiom in shifted cofiber extension {decl}: {ax}"

#print axioms KIP126.StableHomotopy.CofiberExtension.exists_extension_of_shift_comp_zero
#print axioms KIP126.StableHomotopy.CofiberExtension.exists_eta_nu_extension
