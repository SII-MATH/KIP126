import KIP126.Interface.Challenge.Literature.Delivery
import KIP126.Interface.Challenge.Computation.Delivery
import KIP126.Def.ClassicalAdams.TowerNaturality.Page.Proofs

/-! Challenge2 has exactly two correlated deliveries on Def's fixed model.
Literature includes source statements and source-to-model comparisons;
computation includes program interpretations and their mathematical certificates.
Internal applications and the paper's conclusions are derived in Main. -/
namespace KIP126

/-- The Interface construction goal. Computation uses the same sources and
labels as literature, on the one mathematical background fixed in Def. -/
structure Challenge2 where
  literature : Challenge2.LiteratureInterface
  computation : Challenge2.ComputationInterface literature

namespace Challenge2
open Classical.Adams

/-- The shared route is fixed in Def, independently of either delivery. -/
noncomputable abbrev routeModel (_input : KIP126.Challenge2) := standardRouteModel

/-- Existing sphere consumers use this exact computation binding. -/
noncomputable abbrev presentation (input : KIP126.Challenge2) :=
  input.computation.bindings.presentation

def sphereBasis (input : KIP126.Challenge2) : SphereBasisInterface input.presentation :=
  input.computation.results.sphereBasis

set_option linter.defProp false in
def sphereMultiplicative (input : KIP126.Challenge2) :
    SphereMultiplicativeInterface input.presentation :=
  input.computation.results.sphereMultiplicative

/-- Generic cobar/Ext comparison is a Def proof obligation, not an external input. -/
noncomputable def cobarDerivedExt (_input : KIP126.Challenge2) : CobarDerivedExtComparison
    standardFoundation.hf2 standardMilnorCooperations :=
  Def.standardCobarDerivedExt

set_option linter.defProp false in
def adamsOneLine (input : KIP126.Challenge2) : AdamsOneLineInterface :=
  input.literature.results.adamsOneLine

/-- Combine the fixed Def context with the external Moss statement. -/
noncomputable def moss (input : KIP126.Challenge2) : StandardSphereMossInterface :=
  Def.standardSphereMossContext.withStatement input.literature.results.moss

/-- BR21's source equation is transported along the actual source isomorphism,
then identified with the same certified program endpoint classes. -/
noncomputable def tmfDifferential (input : KIP126.Challenge2) :
    TmfDifferentialInterface standardFoundation.hf2 where
  target := Def.standardTmfTarget
  coordinates := input.computation.bindings.tmfCoordinates
  br21 := by
    have h := adamsInternalE2Induced_hasDifferential standardFoundation.hf2.unit
      input.literature.bindings.route.tmfBinding.detectorIso.inv input.literature.results.br21
    rw [← input.computation.bindings.tmf_v2Sixteen,
      ← input.computation.bindings.tmf_betaGFour] at h
    simpa only [Def.standardTmfTarget, Tmf.E2Presentation.betaGFour_eq_betaFiveG] using h

set_option linter.defProp false in
def tmfMultiplicative (input : KIP126.Challenge2) :
    StandardTmfMultiplicativeInterface input.tmfDifferential :=
  input.computation.bindings.tmfMultiplicative

set_option linter.defProp false in
def sphereStaircase (input : KIP126.Challenge2) : SphereStaircaseInterface input.presentation :=
  input.computation.results.sphereStaircase

set_option linter.defProp false in
def sphereTable_sound (input : KIP126.Challenge2) (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow)
    (h : Computation.LinProofs.RawData.lookup shard offset = some row) :
    DifferentialStatement input.presentation row :=
  input.computation.results.sphereTable_sound shard offset row h

end Challenge2
end KIP126
