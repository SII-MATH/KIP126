import KIP126.Mathlib.SpectralSequence.SSData.Assembly.Proofs
import Lean.Elab.Command

/-! The generic SSData adapter must remain independent of the fixed model,
literature and computation deliveries, and the Main consumer axiom.
This audits the constructed adapter and its laws; it is not a claim that
the fixed Adams model or any specified class has been proved to survive. -/

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    if (`KIPBase).isPrefixOf m ||
        (`KIP126.Def.StageInput).isPrefixOf m ||
        (`KIP126.Interface).isPrefixOf m ||
        (`KIP126.Main).isPrefixOf m ||
        (`KIP126.LinProgram).isPrefixOf m then
      throwError "generic SSData adapter imports a fixed input: {m}"
  let declarations := #[
    ``KIP126.Core.SpectralSequence.MathlibAdapter.toMathlib,
    ``KIP126.Core.SpectralSequence.MathlibAdapter.toMathlib_page_X,
    ``KIP126.Core.SpectralSequence.MathlibAdapter.toMathlib_page_d]
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  for declaration in declarations do
    for a in ← liftCoreM (collectAxioms declaration) do
      unless logical.contains a do
        throwError "generic SSData adapter has an unfinished or project axiom: {declaration}: {a}"
