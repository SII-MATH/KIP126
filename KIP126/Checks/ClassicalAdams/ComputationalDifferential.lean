import KIP126.Def.ClassicalAdams.ComputationalDifferential.Proofs
import Lean.Elab.Command

open Lean Elab Command in
run_cmd do
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  for a in ← liftCoreM (collectAxioms ``KIP126.Classical.Adams.linE2_add_self_eq_zero) do
    unless logical.contains a do
      throwError "unexpected pure characteristic-two dependency: {a}"
  for declaration in [``KIP126.Classical.Adams.sphereE2SecondDifferential_h6_square,
      ``KIP126.Classical.Adams.LinE2Presentation.secondDifferential_eq_zero_iff,
      ``KIP126.Classical.Adams.LinE2Presentation.secondDifferential_square_eq_zero] do
    for a in ← liftCoreM (collectAxioms declaration) do
      unless (logical ++ [``KIP126.Classical.Adams.standardFoundation]).contains a do
        throwError "unexpected coordinate differential dependency: {declaration}: {a}"
  let declaration := ``KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_leibniz
  let axioms ← liftCoreM (collectAxioms declaration)
  let inputs := [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.linE2Presentation]
  for a in axioms do
    unless (logical ++ inputs).contains a do
      throwError "unexpected conditional square differential dependency: {a}"
  for a in inputs do
    unless axioms.contains a do
      throwError "missing disclosed conditional square input: {a}"
  for m in (← getEnv).allImportedModuleNames do
    if (`KIP126.Mathlib).isPrefixOf m || (`KIPBase).isPrefixOf m ||
        (`Mathlib.Algebra.Homology.SpectralSequence).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.StandardMilnor).isPrefixOf m ||
        (`KIP126.Def.ClassicalAdams.MilnorCooperations).isPrefixOf m then
      throwError "unexpected coordinate differential import: {m}"

#print axioms KIP126.Classical.Adams.computedH6Square_d_two_eq_zero_of_leibniz
