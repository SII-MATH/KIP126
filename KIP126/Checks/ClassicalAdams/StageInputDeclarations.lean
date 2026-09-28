import KIP126.Def.Solution.Challenge1
import KIP126.Interface.Solution.Challenge2
import KIP126.Interface.Solution.LinProgram.BasisTable
import KIP126.Interface.Challenge.LinProgram.BasisTable
import KIP126.Main.Axiom.LinProgram.Interpretation.BasisTable
import KIP126.Interface.Axiom.StandardMilnor
import KIP126.Main.Axiom.LinProgram.Interpretation.Differentials.Axiom

/-!
Check that each stage consumes one shared Challenge package, that the old
public data names remain definitions, and that the differential result is a
theorem projected from Challenge 2.  The producer and consumer declarations
state the same `Nonempty ChallengeN` type directly, so no duplicated signature
or separate type-alignment table is maintained here.

Challenge 1 now also delivers correlated cooperation data, tensor witnesses
without CSV basis certification; the latter is a Challenge2 field. The round trips retain every chosen datum; no
compatibility constructor may silently select fresh coordinates or a new base.
-/

open KIP126 KIP126.Classical.Adams in
example (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2)
    (T : Challenge1.TensorInput (Challenge1.FoundationInput.ofStandard F))
    (A : @Challenge1.CooperationInput (Challenge1.FoundationInput.ofStandard F) T
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates }) :
    (Challenge1.ofFoundationMilnor F M T A).foundation = F := by
  rfl

open KIP126 KIP126.Classical.Adams in
example (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2)
    (T : Challenge1.TensorInput (Challenge1.FoundationInput.ofStandard F))
    (A : @Challenge1.CooperationInput (Challenge1.FoundationInput.ofStandard F) T
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates }) :
    (Challenge1.ofFoundationMilnor F M T A).milnor = M := by
  rfl

open KIP126 in
example (c : Challenge1) :
    Challenge1.ofFoundationMilnor c.foundation c.milnor
      c.tensorInput c.cooperationInput = c := by
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

-- The stage-one producer and its target retain precisely the same certificate.
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for removed in [`KIP126.Challenge1.LinBasisInterface, `KIP126.Challenge1.linBasis,
      `KIP126.Challenge2.GeneralizedLeibnizLaw,
      `KIP126.Challenge2.GeneralizedMahowaldLaw,
      `KIP126.Challenge2.FinitePageExtensionStretchingLaw] do
    if env.contains removed then
      throwError "obsolete foundation/computation classification: {removed}"
  let some ci := env.find? ``KIP126.Interface.Challenge.LinE2.basisTable_correct
    | throwError "missing basis certification target"
  let some si := env.find? ``KIP126.Interface.Solution.LinE2.basisTable_correct
    | throwError "missing independent basis certification producer"
  unless ci.type == si.type do
    throwError "basis certification producer/target mismatch"
  let axs ← liftCoreM (collectAxioms ``KIP126.Interface.Solution.LinE2.basisTable_correct)
  if axs.contains ``KIP126.Main.Axiom.challenge2 then
    throwError "basis producer depends on its own stage consumer axiom"

example (c : KIP126.Challenge2) (s t : ℕ) (ht : t ≤ 261) :
    KIP126.LinE2.BasisTableCorrect s t := c.linBasis.correct s t ht
