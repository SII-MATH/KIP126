import KIP126.External.Computation.LinProofs
import Lean.Elab.Command

open Lean Elab Command in
run_cmd do
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  let expected := logical ++ [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.linE2Presentation,
    ``KIP126.Computation.LinProofs.sphereTable_sound]
  for decl in [``KIP126.Computation.LinProofs.differential_of_lookup,
      ``KIP126.Computation.LinProofs.row5541] do
    let axioms ← liftCoreM (collectAxioms decl)
    unless axioms.contains ``KIP126.Computation.LinProofs.sphereTable_sound do
      throwError "missing explicit database trust boundary: {decl}"
    for a in axioms do
      unless expected.contains a do
        throwError "unexpected Lin proofs dependency: {decl}: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m ||
        (`KIP126.Challenge).isPrefixOf m then
      throwError "unexpected Lin proofs import: {m}"

set_option maxRecDepth 2048 in
example : KIP126.Computation.LinProofs.RawData.lookup 86 0 = none := by rfl
set_option maxRecDepth 2048 in
example : KIP126.Computation.LinProofs.RawData.lookup 0 128 = none := by rfl

#print axioms KIP126.Computation.LinProofs.row5541
