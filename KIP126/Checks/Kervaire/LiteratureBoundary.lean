import KIP126.Def.References.Literature.Route
import KIP126.Main.Solution.Route.LiteratureAdapters.NuCofiber
import Lean.Elab.Command

/-! A(M) is a set of explicit input types, not a new source of global
theorems, CSV data, or an independent sequence. Check the ENTIRE new
namespace, including all field types and helper constructions. Model and
comparison proof placeholders are allowed; an imported phase axiom is not. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    if (`KIP126.LinProgram).isPrefixOf m ||
        (`KIP126.Interface.Axiom).isPrefixOf m ||
        (`KIP126.Main.Challenge).isPrefixOf m ||
        (`KIP126.Main.Solution.Final).isPrefixOf m ||
        (`KIPBase).isPrefixOf m then
      throwError "A(M) imports a computation, fixed axiom, or final theorem: {m}"
  for (n, info) in env.constants.toList do
    if (`KIP126.Literature.Route).isPrefixOf n then
      if let .axiomInfo _ := info then
        throwError "A(M) must use explicit inputs, not a global axiom: {n}"
      for a in ← liftCoreM (collectAxioms n) do
        unless [``propext, ``Classical.choice, ``Quot.sound, ``sorryAx].contains a do
          throwError "A(M) declaration acquired an unproved/global dependency: {n}: {a}"

open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route KIP126.Literature.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (L : TmfLabels H)

-- The consumer receives the SAME differential, in precisely the previously
-- frozen type, without any arbitrary differential-operation parameter.
example (I : Inputs D η L) : KIP126.Main.Solution.Route.DifferentialLiftInput D :=
  I.differentialLift D η L

-- The source exponent sum and the selected-map binding are distinct.
-- The internal adapter transports the source triangle onto exactly D.
example (I : Inputs D η L) : NuCofiberLiftBinding D I.nuSource :=
  I.applicability.nuCofiber

-- Cν compatibility is a declared internal theorem, not an A field.
example (I : Inputs D η L) :
    NormalizedTriangleCompatible D.toModelData D.auxiliary.nuRouteTriangle
      (I.nuSourceResults.exponent_sum D) :=
  KIP126.Main.Solution.Route.LiteratureAdapters.nu_triangle D η L I

-- BHS q-th finite lift is followed by d_(q+1); its target has stem one less.
example (s t : ℤ) (q : ℕ) : (t+q) - (s+q+1) = (t-s)-1 := by omega

-- The high tmf label has the required degree from the actual cup product.
example : E2 H SphereSpectrum 25 150 := L.high125 M

-- Assembly retains the exact source data; it introduces no choice.
example (E : SourceApplicationData D η) (B : ModelBindings D η L E) :
    (Inputs.ofSourceAndBindings D η L E B).toSourceApplicationData = E := rfl

end
