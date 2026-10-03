import KIP126.Interface.Challenge.Challenge2
import KIP126.Def.Challenge.Challenge1
import KIP126.Def.Solution.Challenge1
import KIP126.Interface.Solution.Challenge2
import KIP126.Interface.Solution.LinProgram.BasisTable
import KIP126.Main.Solution.Computation.LinProgram.Basis.Proofs
import KIP126.Interface.Axiom.StandardMilnor
import KIP126.Main.Solution.Computation.LinProgram.Interpretation.Differentials.Certificate
import Lean.Elab.Command

/-!
Check that each stage consumes one shared Challenge package, that the old
public data names remain definitions, and that the differential result is a
theorem projected from Challenge 2. Each entire stage has one Challenge target,
one Solution producer and one temporary consumer axiom, all stating the same
`Nonempty ChallengeN` type. Internal results have no Challenge mirrors.

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

open KIP126.Computation.LinProofs in
example : ∀ (shard offset : Nat) (row : DifferentialRow),
    RawData.lookup shard offset = some row → DifferentialStatement row :=
  sphereTable_sound

-- The internal stage-one certification remains available only from Solution.
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for removed in [`KIP126.Challenge1.LinBasisInterface, `KIP126.Challenge1.linBasis,
      `KIP126.Challenge2.GeneralizedLeibnizLaw,
      `KIP126.Challenge2.GeneralizedMahowaldLaw,
      `KIP126.Challenge2.FinitePageExtensionStretchingLaw] do
    if env.contains removed then
      throwError "obsolete foundation/computation classification: {removed}"
  let some (.thmInfo _) := env.find? ``KIP126.Interface.Solution.LinE2.basisTable_correct
    | throwError "missing independent basis certification producer"
  let axs ← liftCoreM (collectAxioms ``KIP126.Interface.Solution.LinE2.basisTable_correct)
  if axs.contains ``KIP126.Main.Axiom.challenge2 then
    throwError "basis producer depends on its own stage consumer axiom"

example (s t : ℕ) (ht : t ≤ 261) : KIP126.LinE2.BasisTableCorrect s t :=
  KIP126.Interface.Solution.LinE2.basisTable_correct s t ht

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
  let boundaries := [``KIP126.Def.Challenge.challenge1,
    ``KIP126.Interface.Challenge.challenge2]
  for m in env.allImportedModuleNames do
    if (`KIP126.Def.Challenge).isPrefixOf m ||
        (`KIP126.Interface.Challenge).isPrefixOf m then
      unless [ `KIP126.Def.Challenge.Challenge1,
          `KIP126.Interface.Challenge.Challenge2].contains m do
        throwError "unexpected internal Challenge module: {m}"
  for (name, info) in env.constants.toList do
    if let .thmInfo _ := info then
      if let some moduleIdx := env.getModuleIdxFor? name then
        let owner := env.header.moduleNames[moduleIdx]!
        if (`KIP126.Def.Challenge).isPrefixOf owner ||
            (`KIP126.Interface.Challenge).isPrefixOf owner then
          unless boundaries.contains name do
            throwError "extra stage Challenge theorem: {name}"
  for (producer, boundary, consumer, package) in [
      (``KIP126.Def.Solution.challenge1, ``KIP126.Def.Challenge.challenge1,
        ``KIP126.Interface.Axiom.challenge1, ``KIP126.Challenge1),
      (``KIP126.Interface.Solution.challenge2, ``KIP126.Interface.Challenge.challenge2,
        ``KIP126.Main.Axiom.challenge2, ``KIP126.Challenge2)] do
    let some (.thmInfo p) := env.find? producer
      | throwError "missing producer theorem: {producer}"
    let some (.thmInfo b) := env.find? boundary
      | throwError "missing stage target: {boundary}"
    let some (.axiomInfo a) := env.find? consumer
      | throwError "missing stage consumer axiom: {consumer}"
    unless p.levelParams.isEmpty && b.levelParams.isEmpty && a.levelParams.isEmpty do
      throwError "stage package acquired universe parameters: {producer}"
    unless p.type == b.type && p.type == a.type do
      throwError "stage signatures differ: {producer} / {boundary} / {consumer}"
    unless p.type.getAppFn.isConstOf ``Nonempty &&
        p.type.getAppArgs == #[mkConst package] do
      throwError "stage target must be precisely Nonempty {package}"
    unless b.value.getUsedConstants.contains ``sorryAx do
      throwError "stage Challenge must remain a statement placeholder: {boundary}"
    if (← liftCoreM (collectAxioms producer)).contains consumer then
      throwError "producer depends on its matching consumer axiom: {producer}"
  -- The aggregate's field projections retain their actual proofs in Solution;
  -- their proof debt belongs to the aggregate producer, not a new stage axiom.
  for projection in [``KIP126.Interface.Solution.literatureInterface,
      ``KIP126.Interface.Solution.computationInterface] do
    let some (.thmInfo p) := env.find? projection
      | throwError "missing Solution projection: {projection}"
    if p.value.getUsedConstants.contains ``sorryAx then
      throwError "stage projection lost its existing proof: {projection}"
  -- Challenge targets coexist here solely for comparison. Walk the producers'
  -- dependencies to reject any use of those intentionally unfinished proofs.
  let mut todo : Array Name := #[``KIP126.Def.Solution.challenge1,
    ``KIP126.Interface.Solution.challenge2,
    ``KIP126.Interface.Solution.literatureInterface,
    ``KIP126.Interface.Solution.computationInterface,
    ``KIP126.Interface.Solution.LinE2.basisTable_correct]
  let mut seen : NameSet := {}
  while !todo.isEmpty do
    let name := todo.back!
    todo := todo.pop
    if seen.contains name then continue
    seen := seen.insert name
    let some info := env.find? name | throwError "missing producer dependency: {name}"
    if let some moduleIdx := env.getModuleIdxFor? name then
      let owner := env.header.moduleNames[moduleIdx]!
      if (`KIP126.Main.Challenge).isPrefixOf owner ||
          (`KIP126.Interface.Challenge).isPrefixOf owner ||
          (`KIP126.Def.Challenge).isPrefixOf owner then
        throwError "stage producer depends on a Challenge declaration: {name}: {owner}"
      unless (`KIP126).isPrefixOf owner do continue
    todo := todo ++ info.type.getUsedConstants
    if let some value := info.value? then
      todo := todo ++ value.getUsedConstants
  for name in [``KIP126.Main.StageInput.routeModel,
      ``KIP126.Main.StageInput.routeLiterature, ``KIP126.Main.StageInput.routeComputation] do
    let some (.defnInfo _) := env.find? name
      | throwError "route inputs must only be definitions: {name}"

example : ∃ modelBindings : KIP126.Challenge2.ModelBindings,
    Nonempty (KIP126.Challenge2.LiteratureInterface modelBindings) :=
  KIP126.Interface.Solution.literatureInterface

example : ∃ modelBindings : KIP126.Challenge2.ModelBindings,
    ∃ presentation : KIP126.Classical.Adams.LinE2Presentation,
      Nonempty (KIP126.Challenge2.ComputationInterface modelBindings presentation) :=
  KIP126.Interface.Solution.computationInterface
