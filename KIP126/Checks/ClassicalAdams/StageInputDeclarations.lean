import KIP126.Def.Solution.Challenge1
import KIP126.Interface.Solution.Challenge2
import KIP126.Interface.Axiom.StandardMilnor
import KIP126.Main.Axiom.LinProgram.Interpretation.Differentials.Axiom

/-!
Check that each stage consumes one shared Challenge package, that the old
public data names remain definitions, and that the differential result is a
theorem projected from Challenge 2.  The producer and consumer declarations
state the same `Nonempty ChallengeN` type directly, so no duplicated signature
or separate type-alignment table is maintained here.

The visible Challenge 1 input groups must retain exactly the data in the old
generic records. Kernel-checked round trips below guard against strengthening
the package or losing a dependent choice during interface expansion.
-/

open KIP126 KIP126.Classical.Adams in
example (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2) :
    (Challenge1.ofFoundationMilnor F M).foundation = F := by
  rfl

open KIP126 KIP126.Classical.Adams in
example (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2) :
    (Challenge1.ofFoundationMilnor F M).milnor = M := by
  rfl

open KIP126 in
example (c : Challenge1) : Challenge1.ofFoundationMilnor c.foundation c.milnor = c := by
  rfl

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for name in [``KIP126.Interface.Axiom.challenge1,
      ``KIP126.Main.Axiom.challenge2] do
    let some (.axiomInfo _) := env.find? name
      | throwError "missing stage-boundary axiom: {name}"
  for name in [``KIP126.Classical.Adams.standardFoundation,
      ``KIP126.Classical.Adams.standardMilnorCooperations,
      ``KIP126.Classical.Adams.linE2Presentation] do
    let some (.defnInfo _) := env.find? name
      | throwError "compatibility interface must be a definition: {name}"
  let some (.thmInfo _) := env.find? ``KIP126.Computation.LinProofs.sphereTable_sound
    | throwError "sphereTable_sound must be a theorem projected from Challenge 2"
  for name in [``KIP126.Def.Solution.challenge1,
      ``KIP126.Interface.Solution.challenge2] do
    let some (.thmInfo _) := env.find? name
      | throwError "missing producer theorem: {name}"

open KIP126.Computation.LinProofs in
example : ∀ (shard offset : Nat) (row : DifferentialRow),
    RawData.lookup shard offset = some row → DifferentialStatement row :=
  sphereTable_sound
