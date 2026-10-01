import KIP126.Main.Axiom.Challenge2

/-! Consumer-side selection and projections from the sole stage witness. -/
namespace KIP126.Main.StageInput

open CategoryTheory
open KIP126.StableHomotopy KIP126.Synthetic.Context KIP126.Classical.Adams

noncomputable def witness : KIP126.Challenge2 :=
  Classical.choice KIP126.Main.Axiom.challenge2

noncomputable def literature :
    KIP126.Challenge2.LiteratureInterface witness.modelBindings := witness.literature

noncomputable def computation : KIP126.Challenge2.ComputationInterface witness.presentation :=
  witness.computation

theorem classical_source : KIP126.Literature.Route.StandardClassicalSourceExistence :=
  literature.classical_source

theorem tmf_source : KIP126.Literature.Route.StandardTmfSourceExistence :=
  literature.tmf_source

theorem sphere_vanishing_line :
    KIP126.Computation.Route.SphereVanishingLine standardFoundation.hf2 :=
  literature.sphere_vanishing_line

theorem sphere_separated :
    KIP126.Computation.Route.ClassicalSphereSeparated standardFoundation.hf2 :=
  literature.sphere_separated

theorem sphere_moss
    (c : TowerDetection.Convergence standardFoundation.hf2.unit
      (SphereSpectrum (C := standardFoundation.Spectrum))) :
    Moss.SphereStatement standardFoundation.hf2 standardMod2Ring
      (Moss.standardMossModel c).composition (Moss.standardMossModel c).convergence :=
  literature.sphere_moss c

theorem nu_cofiber {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Synthetic.NuCofiberCriterion standardFoundation.hf2 D.nu :=
  literature.nu_cofiber D η G SM

theorem full_lift {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Synthetic.SyntheticLiftComparison standardFoundation.hf2 D.nu :=
  literature.full_lift D η G SM

theorem finite_lift {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Literature.Route.FiniteLiftCriterion D :=
  literature.finite_lift D η G SM

theorem bockstein {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Literature.Route.BocksteinDifferential D :=
  literature.bockstein D η G SM

theorem permanent_lift {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Literature.Route.PermanentLiftCriterion D :=
  literature.permanent_lift D η G SM

theorem differentials {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Literature.Route.DifferentialRigidity D :=
  literature.differentials D η G SM

theorem eInfty {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    Nonempty (KIP126.Literature.Route.EInftyInput D) :=
  literature.eInfty D η G SM

theorem filtration_lambda {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Literature.Route.FiltrationLambda D :=
  literature.filtration_lambda D η G SM

theorem e2_weight_vanishing {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Literature.Route.E2WeightVanishing D :=
  literature.e2_weight_vanishing D η G SM

theorem realization_detection {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    KIP126.Literature.Route.RealizationDetection D
      (KIP126.Literature.Route.sourceRealizationCoordinates D) :=
  literature.realization_detection D η G SM

theorem bx {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G)
    (hη : KIP126.Kervaire.Route.EtaChoice standardMilnorCooperations D.toModelData η) :
    KIP126.Literature.Route.BXDistinguishedInput D η :=
  literature.bx D η G SM hη

theorem low_ring {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G)
    (hη : KIP126.Kervaire.Route.EtaChoice standardMilnorCooperations D.toModelData η) :
    Nonempty (KIP126.Literature.Route.TodaInputs D η) :=
  literature.low_ring D η G SM hη

theorem may_tc3 {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G)
    (T U : HoCofiberSequence (C := Syn)) :
    Nonempty (KIP126.Literature.Route.MayPushpullData Syn
      (KIP126.Literature.Route.sourceMayTensor D η G SM) T U) :=
  literature.may_tc3 D η G SM T U

theorem quotient_algebras {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] [SymmetricCategory Syn]
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (SM : KIP126.Kervaire.Route.SourceModel D η G) :
    Nonempty (KIP126.Literature.Route.QuotientAlgebraStructures D) :=
  literature.quotient_algebras D η G SM

theorem basisTable_correct (s t : ℕ) (ht : t ≤ 261) :
    KIP126.LinE2.BasisTableCorrect s t :=
  computation.basisTable_correct s t ht

theorem route_certification {Syn : Type 1} [SyntheticCategory.{1,0} Syn]
    [HasFunctorialCofiber (C := Syn)] (D : StandardRouteModel Syn)
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (hnu : KIP126.Computation.Route.GeometricNuSourceIdentification D)
    (hG : G.Standard) : KIP126.Computation.Route.Certification D G :=
  computation.route_certification D G hnu hG

end KIP126.Main.StageInput
