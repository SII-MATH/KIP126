import KIP126.Def.Comparison.Interfaces
import KIP126.Def.Kervaire.Inputs.Literature.Data
import KIP126.Def.Kervaire.Inputs.Literature.SourceMay
import KIP126.Def.Kervaire.Inputs.Literature.StandardClassicalSource
import KIP126.Def.Kervaire.Inputs.Literature.StandardTmfSource
import KIP126.Def.ClassicalAdams.Moss.StandardSource
import KIP126.LinProgram.Route.Certification.Standard
import KIP126.LinProgram.Route.Consequences

/-!
# Unified stage delivery

`Challenge2` is the single correlated Interface-to-Main delivery.  Its
`LiteratureInterface` field is A(M); its `ComputationInterface` field is C(M).
The definitions and parameterized statement languages remain in `Def/` and
`LinProgram/`.  This file only fixes the project-specific package consumed by
Main.

The route statements retained from the stage-0 refactor are fields of the same
package.  They are not separate Main axioms and do not select a second model.
-/

namespace KIP126

open CategoryTheory
open StableHomotopy Synthetic.Context Classical.Adams
open Core.SpectralSequence

namespace Challenge2

/-- Shared project comparison data.  These are model bindings, rather than
external literature conclusions or raw program output. -/
structure ModelBindings where
  cobarDerivedExt : Comparison.CobarDerivedExtComparison
    standardFoundation.hf2 standardMilnorCooperations

/-- A(M): the external results accepted by the selected proof route.  Every
source-dependent field is stated on an explicitly identified `SourceModel`;
no completed route input or paper conclusion is accepted wholesale. -/
structure LiteratureInterface (modelBindings : ModelBindings) : Prop where
  adamsOneLine : Comparison.AdamsOneLineInterface
  classical_source : Literature.Route.StandardClassicalSourceExistence
  tmf_source : Literature.Route.StandardTmfSourceExistence
  sphere_vanishing_line : Computation.Route.SphereVanishingLine standardFoundation.hf2
  sphere_separated : Computation.Route.ClassicalSphereSeparated standardFoundation.hf2
  sphere_moss : ∀
    (c : TowerDetection.Convergence standardFoundation.hf2.unit
      (SphereSpectrum (C := standardFoundation.Spectrum))),
    Moss.SphereStatement standardFoundation.hf2 standardMod2Ring
      (Moss.standardMossModel c).composition (Moss.standardMossModel c).convergence
  nu_cofiber : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G),
    Synthetic.NuCofiberCriterion standardFoundation.hf2 D.nu
  full_lift : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G),
    Synthetic.SyntheticLiftComparison standardFoundation.hf2 D.nu
  finite_lift : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G), Literature.Route.FiniteLiftCriterion D
  bockstein : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G), Literature.Route.BocksteinDifferential D
  permanent_lift : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G), Literature.Route.PermanentLiftCriterion D
  differentials : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G), Literature.Route.DifferentialRigidity D
  eInfty : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G), Nonempty (Literature.Route.EInftyInput D)
  filtration_lambda : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G), Literature.Route.FiltrationLambda D
  e2_weight_vanishing : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G), Literature.Route.E2WeightVanishing D
  realization_detection : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G),
    Literature.Route.RealizationDetection D (Literature.Route.sourceRealizationCoordinates D)
  bx : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G)
    (hη : Kervaire.Route.EtaChoice standardMilnorCooperations D.toModelData η),
    Literature.Route.BXDistinguishedInput D η
  low_ring : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G)
    (hη : Kervaire.Route.EtaChoice standardMilnorCooperations D.toModelData η),
    Nonempty (Literature.Route.TodaInputs D η)
  may_tc3 : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G)
    (T U : HoCofiberSequence (C := Syn)),
    Nonempty (Literature.Route.MayPushpullData Syn
      (Literature.Route.sourceMayTensor D η G SM) T U)
  quotient_algebras : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : Kervaire.Route.SourceModel D η G),
    Nonempty (Literature.Route.QuotientAlgebraStructures D)

/-- The certified square facts and its standard label on the actual sphere
page, through the specified comparison. -/
structure SphereSquareInterface (presentation : Classical.Adams.LinE2Presentation) : Prop where
  nonzero : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq ≠ 0
  exhaustive : ∀ x : sphereAdamsData.Page 2 (2, 128),
    x = 0 ∨ x = presentation.comparison 2 128 (by decide) LinE2.dataH6Sq
  standard_class : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq = standardH6Square

/-- C(M): all interpreted computation conclusions.  The legacy bounded sphere
presentation and the selected route certificate remain in one delivery rather
than becoming independent Main axioms. -/
structure ComputationInterface (presentation : Classical.Adams.LinE2Presentation) where
  sphereBasis : Comparison.SphereBasisInterface presentation
  sphereMultiplicative : Comparison.SphereMultiplicativeInterface presentation
  sphereStaircase : Comparison.SphereStaircaseInterface presentation
  sphereSquare : SphereSquareInterface presentation
  sphereTable_sound : ∀ (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow),
    Computation.LinProofs.RawData.lookup shard offset = some row →
      Comparison.DifferentialStatement presentation row
  basisTable_correct : ∀ (s t : ℕ), t ≤ 261 → LinE2.BasisTableCorrect s t
  route_certification : ∀ {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] (D : StandardRouteModel Syn)
    (G : Literature.Route.TmfLabels standardFoundation.hf2),
    Computation.Route.GeometricNuSourceIdentification D → G.Standard →
      Computation.Route.Certification D G

end Challenge2

/-- One correlated stage witness.  A(M), C(M), the shared comparison data and
the single Lin presentation are selected together. -/
structure Challenge2 where
  modelBindings : KIP126.Challenge2.ModelBindings
  presentation : Classical.Adams.LinE2Presentation
  literature : KIP126.Challenge2.LiteratureInterface modelBindings
  computation : KIP126.Challenge2.ComputationInterface presentation

namespace Challenge2

/-- Compatibility projections select no additional witness. -/
def sphereBasis (input : KIP126.Challenge2) :
    Comparison.SphereBasisInterface input.presentation := input.computation.sphereBasis

def sphereMultiplicative (input : KIP126.Challenge2) :
    Comparison.SphereMultiplicativeInterface input.presentation :=
  input.computation.sphereMultiplicative

def cobarDerivedExt (input : KIP126.Challenge2) :
    Comparison.CobarDerivedExtComparison standardFoundation.hf2 standardMilnorCooperations :=
  input.modelBindings.cobarDerivedExt

def adamsOneLine (input : KIP126.Challenge2) : Comparison.AdamsOneLineInterface :=
  input.literature.adamsOneLine

def sphereStaircase (input : KIP126.Challenge2) :
    Comparison.SphereStaircaseInterface input.presentation :=
  input.computation.sphereStaircase

def sphereTable_sound (input : KIP126.Challenge2) (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow)
    (h : Computation.LinProofs.RawData.lookup shard offset = some row) :
    Comparison.DifferentialStatement input.presentation row :=
  input.computation.sphereTable_sound shard offset row h

end Challenge2
end KIP126
