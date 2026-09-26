import KIP126.Def.ClassicalAdams.ComputationalDifferential.LongLayer.Lifting.Proofs
import Lean.Elab.Command

open Lean Elab Command in
run_cmd do
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  let inputs := [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.linE2Presentation]
  for declaration in [``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_boundaryLifts,
      ``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_firstCycleProductRule] do
    let axioms ← liftCoreM (collectAxioms declaration)
    for a in axioms do
      unless (logical ++ inputs).contains a do
        throwError "unexpected fixed boundary-lift dependency: {declaration}: {a}"
    for a in inputs do
      unless axioms.contains a do
        throwError "missing disclosed fixed boundary-lift input: {declaration}: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.StandardMilnor).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.MilnorCooperations).isPrefixOf m then
      throwError "unexpected fixed boundary-lift import: {m}"

#print axioms KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_boundaryLifts
#print axioms KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_firstCycleProductRule
