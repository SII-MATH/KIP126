import KIP126.Interface.Axiom.StandardMilnor
import KIP126.Main.Axiom.LinProgram.Interpretation.Differentials.Axiom
import KIP126.Checks.AxiomInputs

/-! Check that reviewed inputs remain explicit leaves, that no bundle axiom is
retained behind projection aliases, and that the expanded table proposition
still has exactly the original public interface. This is an interface audit,
not a claim that any of these inputs have been proved. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let bundles := [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.standardMilnorCooperations,
    ``KIP126.Classical.Adams.linE2Presentation]
  let mut expected := [``KIP126.Computation.LinProofs.sphereTable_sound]
  for bundle in bundles do
    let some (.defnInfo _) := env.find? bundle
      | throwError "stage interface must be assembled, not postulated: {bundle}"
    expected := expected ++ KIP126.Checks.AxiomInputs.direct bundle
  for name in expected do
    let some (.axiomInfo _) := env.find? name
      | throwError "missing explicit reviewed stage input: {name}"
  let owners := [`KIP126.Interface.Axiom.StandardFoundation,
    `KIP126.Interface.Axiom.StandardMilnor,
    `KIP126.Main.Axiom.LinProgram.Presentation,
    `KIP126.Main.Axiom.LinProgram.Interpretation.Differentials.Axiom]
  let axioms : Array Name := env.constants.fold (init := #[]) fun names name info =>
    match info with
    | .axiomInfo _ => names.push name
    | _ => names
  for name in axioms do
    if let some idx := env.getModuleIdxFor? name then
      if let some owner := env.allImportedModuleNames[idx.toNat]? then
        if owners.contains owner && !expected.contains name then
          throwError "unreviewed additional stage input: {name}"

open KIP126.Computation.LinProofs in
example : ∀ (shard offset : Nat) (row : DifferentialRow),
    RawData.lookup shard offset = some row → DifferentialStatement row :=
  sphereTable_sound
