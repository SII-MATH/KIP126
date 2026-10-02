import KIP126.Def.Kervaire.Inputs.Literature.ClassicalSource
import KIP126.Def.Kervaire.Inputs.Literature.BX
import KIP126.Def.Kervaire.Inputs.Literature.Synthetic
import KIP126.Def.Kervaire.Inputs.Literature.Realization
import KIP126.Def.Kervaire.Inputs.Literature.AlgebraBinding
import KIP126.Def.Kervaire.Inputs.Literature.May
import KIP126.Def.Kervaire.Inputs.Literature.Toda
import KIP126.Def.Kervaire.Inputs.Literature.TmfSource
import KIP126.Def.Kervaire.Inputs.Literature.Applicability

/-!
# Source-application interfaces for the Section 7 route

All fields constrain the SAME `D : Kervaire.Route.Model H M Syn`.
They are explicit source-result targets and source-transport witnesses.
The full source-to-model assembler is a separate internal construction.
Declaring these types neither proves them nor constructs a witness.

Here the parameter `M : MilnorCooperations H` is an older API name;
the mathematical M of the project is the entire context together with D.
No field supplies C(M), C₃/C₄/C₅, either Proposition 7.8/7.9, generalized
Leibniz/Mahowald, or T(M). No default instance or global axiom is installed.

The current statement inventory and the unresolved source/application qualifications
are in `docs/A_INPUT_FREEZE.md` and the adjacent `sources.json`.
-/
namespace KIP126.Literature.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (L : TmfLabels H)

/-- Source-application targets retain both external conclusions and the
internal model constructions needed by consumers. This record is NEVER
accepted wholesale as A. `ExternalLeaves` below lists the actual prior
results separately, on an identified source model. -/
structure SourceApplicationData where
  classicalSource : ClassicalSourceData H
  classicalSourceResults : ClassicalSourceResults M classicalSource
  bx : BXDistinguishedInput D η
  synthetic : SyntheticInputs D
  realization : RealizationInput D
  algebra : AlgebraInput D
  may : MayInput Syn
  toda : TodaInputs D η
  tmfSource : TmfSourceData H
  tmf : TmfSourceResults tmfSource
  moss : MossInput D
  nuSource : NuCofiberSourceData D
  nuSourceResults : NuCofiberSourceResults D nuSource

/-- The exact prior-result leaves. Every field uses the same D, eta and
specified synthetic symmetry. This is a statement language only; the
Main/Axiom declarations require the concrete SourceModel identification.
Coordinates, lambda kernel transport, normalized triangles, detector
algebra transport and all local choice/Leibniz/Mahowald results are absent. -/
structure ExternalLeaves (sym : SymmetricCategory Syn) (mayTensor : MayTensorData Syn)
    (coordinates : RealizationCoordinates D) where
  nu_cofiber : KIP126.Synthetic.NuCofiberCriterion H D.nu
  full_lift : KIP126.Synthetic.SyntheticLiftComparison H D.nu
  finite_lift : FiniteLiftCriterion D
  bockstein : BocksteinDifferential D
  permanent_lift : PermanentLiftCriterion D
  differentials : DifferentialRigidity D
  eInfty : EInftyInput D
  filtration_lambda : FiltrationLambda D
  e2_weight_vanishing : E2WeightVanishing D
  realization_detection : RealizationDetection D coordinates
  bx : BXDistinguishedInput D η
  toda : TodaInputs D η
  may : ∀ T U : HoCofiberSequence (C := Syn),
    Nonempty (MayPushpullData Syn mayTensor T U)
  quotient_algebras : letI := sym; QuotientAlgebraStructures D

/-- Mathematical-model identification obligations for one set of source
witnesses. They are not external source facts and MUST NOT be accepted by
a Main/Axiom declaration. Source-model construction/comparison theorems
supply them, with proof debt explicitly separate from literature acceptance. -/
structure ModelBindings (E : SourceApplicationData D η) where
  classical : ClassicalSourceBinding D η E.classicalSource
  /-- Identification of the selected synthetic eta, not a classical fact. -/
  synthetic_eta : EtaChoice M D.toModelData η
  algebra : AlgebraBinding D E.algebra
  tmf : TmfBinding D L E.tmfSource
  applicability : Applicability D E.nuSource

/-- A ready-to-consume package, retaining the exact source witnesses and
all same-model comparisons. It can be assembled directly from E and B;
no new existential selection or stage axiom is involved. -/
structure Inputs extends SourceApplicationData D η where
  bindings : ModelBindings D η L toSourceApplicationData

def Inputs.ofSourceAndBindings (E : SourceApplicationData D η)
    (B : ModelBindings D η L E) : Inputs D η L :=
  { toSourceApplicationData := E, bindings := B }

abbrev Inputs.classical (I : Inputs D η L) : ClassicalInputs D η :=
  classicalInputsOfSource D η I.classicalSource I.classicalSourceResults
    I.bindings.classical I.bindings.synthetic_eta

abbrev Inputs.algebraBinding (I : Inputs D η L) := I.bindings.algebra
abbrev Inputs.tmfBinding (I : Inputs D η L) := I.bindings.tmf
abbrev Inputs.applicability (I : Inputs D η L) := I.bindings.applicability

/-! The normalized nu triangle and the route tmf consequences are obtained
by the internal `LiteratureAdapters` theorems. They are not projections of
source results asserted for arbitrary normalized maps/leading terms. -/
end KIP126.Literature.Route
