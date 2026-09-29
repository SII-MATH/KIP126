import KIP126.Checks.ClassicalAdams.StandardSquareGeneric
import KIP126.Main.Solution.Literature.StandardSphere.Proofs
import Lean.Elab.Command

/-! The fixed specialization uses the existing foundation and Milnor
coordinates projected from one Challenge1 witness. That witness now also
contains Lin-basis data, so its import closure includes the corresponding
types. The separate StandardSquareGeneric check preserves the proof's
independence from those data; this check audits the fixed stage dependency. -/

open Lean Elab Command in
run_cmd do
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  let fixed := ``KIP126.Classical.Adams.sphereH6Square_ne_zero
  let inputs := [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.standardMilnorCooperations]
  let axioms ← liftCoreM (collectAxioms fixed)
  for a in axioms do
    unless KIP126.Checks.AxiomInputs.allows (logical ++ inputs) a do
      throwError "unexpected fixed standard-square dependency: {a}"
  for a in inputs do
    unless KIP126.Checks.AxiomInputs.uses axioms a do
      throwError "missing disclosed standard-square dependency: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`KIP126.External).isPrefixOf m then
      throwError "unexpected standard-square import: {m}"

#print axioms KIP126.Classical.Adams.sphereH6Square_ne_zero
