import KIP126.Interface.Challenge.Challenge2
import KIP126.Def.Challenge.Challenge1
import KIP126.Def.Solution.Challenge1
import KIP126.Interface.Solution.Challenge2
import KIP126.Interface.Solution.LinProgram.BasisTable
import KIP126.Interface.Challenge.LinProgram.BasisTable
import KIP126.Main.Solution.Computation.LinProgram.Interpretation.BasisTable
import KIP126.Interface.Axiom.StandardMilnor
import KIP126.Main.Solution.Computation.LinProgram.Interpretation.Differentials.Certificate

/-!
Check that each stage consumes one shared Challenge package, that the old
public data names remain definitions, and that the differential result is a
theorem projected from Challenge 2.  The producer and consumer declarations
state the same `Nonempty ChallengeN` type directly, so no duplicated signature
or separate type-alignment table is maintained here.

Challenge 1 delivers correlated cooperation data and tensor witnesses;
fixed CSV basis certification no longer belongs to this foundation. The round trips retain every chosen datum; no
compatibility constructor may silently select fresh coordinates or a new base.
-/

open KIP126 KIP126.Classical.Adams in
example (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2)
    (T : Challenge1.TensorInput (Challenge1.FoundationInput.ofStandard F))
    (A : @Challenge1.CooperationInput (Challenge1.FoundationInput.ofStandard F) T
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates })
    (R : Challenge1.RouteInput F
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates }) :
    (Challenge1.ofFoundationMilnor F M T A R).foundation = F := by
  rfl

open KIP126 KIP126.Classical.Adams in
example (F : StandardAdamsFoundation)
    (M : @MilnorCooperations F.Spectrum F.stable F.cofiber F.hf2)
    (T : Challenge1.TensorInput (Challenge1.FoundationInput.ofStandard F))
    (A : @Challenge1.CooperationInput (Challenge1.FoundationInput.ofStandard F) T
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates })
    (R : Challenge1.RouteInput F
      { coordinates := M.coordinates, differential_coordinates := M.differential_coordinates }) :
    (Challenge1.ofFoundationMilnor F M T A R).milnor = M := by
  rfl

open KIP126 in
example (c : Challenge1) :
    Challenge1.ofFoundationMilnor c.foundation c.milnor
      c.tensorInput c.cooperationInput c.routeInput = c := by
  rfl

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for name in [``KIP126.Interface.Axiom.challenge1,
      ``KIP126.Main.Axiom.challenge2] do
    let some (.axiomInfo _) := env.find? name
      | throwError "missing stage-boundary axiom: {name}"
  for name in [``KIP126.Main.StageInput.witness,
      ``KIP126.Main.StageInput.literature,
      ``KIP126.Main.StageInput.computation,
      ``KIP126.Classical.Adams.standardFoundation,
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

example (c : KIP126.Challenge2) (s t : ℕ) (ht : t ≤ 261)
    (i : KIP126.LinE2.BasisIndex s t) :
    ((c.presentation.comparison s t ht).symm
      ((c.sphereBasis.coordinates s t ht).symm (Finsupp.single i 1))).val =
        KIP126.LinE2.basisValue (KIP126.LinE2.basisRowAt s t i) :=
  c.sphereBasis.csv_values s t ht i

-- Both route parts are projections of one witness, never separate choices.
open KIP126.Main.StageInput in
example : routeComputation = witness.computation.route := rfl

open KIP126.Main.StageInput in
example : routeLiterature = KIP126.Literature.Route.Statements.toInputs
    routeModel routeEta tmfLabels witness.literature.route witness.routeApplication := rfl

open KIP126 KIP126.Classical.Adams KIP126.Main.StageInput in
example (s t : ℕ) (ht : t ≤ 261) (x : LinE2.E2At s t) :
    routeComputation.realization.sphere s t x = witness.presentation.comparison s t ht x :=
  witness.computation.route_presentation s t ht x

open KIP126 KIP126.Classical.Adams in
example : Kervaire.Route.PermanentH6Square standardMilnorCooperations =
    Core.SpectralSequence.NonzeroSurvival sphereAdamsData (2,128) standardH6Square := rfl

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for (producer, boundary) in [
      (``KIP126.Def.Solution.challenge1, ``KIP126.Def.Challenge.challenge1),
      (``KIP126.Interface.Solution.challenge2, ``KIP126.Interface.Challenge.challenge2),
      (``KIP126.Interface.Solution.literatureInterface, ``KIP126.Interface.Challenge.literatureInterface),
      (``KIP126.Interface.Solution.computationInterface, ``KIP126.Interface.Challenge.computationInterface)] do
    let some p := env.find? producer | throwError "missing producer {producer}"
    let some b := env.find? boundary | throwError "missing boundary {boundary}"
    unless ← liftTermElabM (Lean.Meta.isDefEq p.type b.type) do
      throwError "stage signatures differ: {producer} / {boundary}"
  for name in [``KIP126.Main.StageInput.routeModel,
      ``KIP126.Main.StageInput.routeLiterature, ``KIP126.Main.StageInput.routeComputation] do
    let some (.defnInfo _) := env.find? name
      | throwError "route inputs must only be definitions: {name}"
