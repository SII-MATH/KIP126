import KIP126.Interface.Challenge.Computation.Sphere
import KIP126.Interface.Challenge.Computation.Route
import KIP126.Interface.Challenge.Computation.Tmf
import KIP126.Interface.Challenge.Literature.Delivery

/-! Computation delivery on the fixed Def model and the same literature sources.
Program comparisons are explicit mathematical certificates, not metadata. -/
namespace KIP126.Challenge2
open Classical.Adams Core.SpectralSequence

/-- One interpretation of all fixed program data, including tmf coordinate
and source-class comparisons. No extra tmf object or route is chosen. -/
structure ComputationBindings (literature : LiteratureInterface) where
  presentation : LinE2Presentation
  routeRealization : Computation.Route.Realization standardRouteModel
  tmfCoordinates : Tmf.E2Presentation standardFoundation.hf2 Def.standardTmfTarget
  tmfMultiplicative : StandardTmfModelMultiplicativeInterface
    { target := Def.standardTmfTarget, coordinates := tmfCoordinates }
  tmf_v2Sixteen : tmfCoordinates.v2Sixteen =
    adamsInternalE2Induced standardFoundation.hf2.unit
      literature.bindings.route.tmfBinding.detectorIso.inv (16, 112)
      literature.bindings.br21Classes.v2Sixteen
  tmf_betaGFour : tmfCoordinates.betaGFour =
    adamsInternalE2Induced standardFoundation.hf2.unit
      literature.bindings.route.tmfBinding.detectorIso.inv (19, 114)
      literature.bindings.br21Classes.betaGFour

/-- The nonstandard x-labels are these exact program images. Their full
coordinate, product and differential correctness remains a certificate. -/
noncomputable def ComputationBindings.routeLabels {literature : LiteratureInterface}
    (bindings : ComputationBindings literature) :
    Kervaire.Route.Labels standardFoundation.hf2 where
  x_126_8_4 := bindings.routeRealization.sphere 8 134 (Computation.Near126.atom .x_126_8_4)
  x_126_8 := bindings.routeRealization.sphere 8 134 (Computation.Near126.atom .x_126_8)
  x_124_8 := bindings.routeRealization.sphere 8 132 (Computation.Near126.atom .x_124_8)
  x_109_12 := bindings.routeRealization.sphere 12 121 (Computation.Near126.atom .x_109_12)

/-- Model-bound program conclusions on the one supplied interpretation. -/
structure ComputationResults (literature : LiteratureInterface)
    (bindings : ComputationBindings literature) where
  sphereBasis : SphereBasisInterface bindings.presentation
  sphereMultiplicative : SphereMultiplicativeInterface bindings.presentation
  sphereStaircase : SphereStaircaseInterface bindings.presentation
  sphereSquare : SphereSquareInterface bindings.presentation
  sphereTable_sound : ∀ (shard offset : Nat) (row : Computation.LinProofs.DifferentialRow),
    Computation.LinProofs.RawData.lookup shard offset = some row →
      DifferentialStatement bindings.presentation row
  route : Computation.Route.CertifiedRealization bindings.routeRealization
    bindings.routeLabels literature.bindings.tmfLabels
  route_presentation : ∀ (s t : ℕ) (ht : t ≤ 261) (x : LinE2.E2At s t),
    bindings.routeRealization.sphere s t x = bindings.presentation.comparison s t ht x

/-- Computation bindings and certificates depend on the same literature delivery. -/
structure ComputationInterface (literature : LiteratureInterface) where
  bindings : ComputationBindings literature
  results : ComputationResults literature bindings

/-- The existing consumer view uses the certified interpretation without a new choice. -/
noncomputable def ComputationInterface.route {literature : LiteratureInterface}
    (computation : ComputationInterface literature) : Computation.Route.Inputs
    standardRouteModel computation.bindings.routeLabels literature.bindings.tmfLabels :=
  computation.results.route.toInputs

end KIP126.Challenge2
