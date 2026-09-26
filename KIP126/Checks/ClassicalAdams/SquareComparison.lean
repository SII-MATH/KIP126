import KIP126.Mathlib.ClassicalAdams.FinalComparison.Proofs
import Lean.Elab.Command

/-! Guard the elimination of the named class-comparison axiom. The proof
must be complete and disclose exactly the three remaining fixed inputs. -/

open Lean Elab Command in
run_cmd do
  let declaration := ``KIP126.Classical.Adams.h6Square_comparison
  let some (.thmInfo _) := (← getEnv).find? declaration
    | throwError "the specified-class comparison must be a theorem, not an axiom"
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  let inputs := [``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.standardMilnorCooperations,
    ``KIP126.Classical.Adams.linE2Presentation]
  let axioms ← liftCoreM (collectAxioms declaration)
  for a in axioms do
    unless (logical ++ inputs).contains a do
      throwError "unexpected specified-class comparison dependency: {a}"
  for a in inputs do
    unless axioms.contains a do
      throwError "missing disclosed specified-class comparison input: {a}"

#print axioms KIP126.Classical.Adams.h6Square_comparison
