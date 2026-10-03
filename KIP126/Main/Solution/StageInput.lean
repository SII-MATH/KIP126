import KIP126.Main.Axiom.Challenge2

/-! Consumer projections from the sole correlated Challenge2 witness. -/
namespace KIP126.Main.StageInput

/-- The one witness used throughout Main. -/
noncomputable def witness : KIP126.Challenge2 :=
  Classical.choice KIP126.Main.Axiom.challenge2

/-- Literature on the bindings stored in the sole stage witness. -/
noncomputable def literature :
    KIP126.Challenge2.LiteratureInterface witness.modelBindings :=
  witness.literature

/-- The geometric objects and predicates used by all geometric literature
results in the same Challenge2 witness. -/
noncomputable def geometryModel : KIP126.Challenge2.GeometryModel :=
  witness.modelBindings.geometry

/-- Source-bearing low-dimensional, HHR, and Browder results on that model. -/
noncomputable def geometryLiterature :
    KIP126.Challenge2.GeometryLiteratureInterface geometryModel :=
  literature.geometry

/-- The low-dimensional existence and high-dimensional nonexistence interface. -/
theorem geometry :
    KIP126.Challenge1.GeometryInterface geometryModel.dimension geometryModel.kervaireOne :=
  geometryLiterature.geometry

/-- Browder's criterion for the same geometric model and standard sphere classes. -/
theorem browder :
    KIP126.Challenge2.BrowderInterface geometryModel.dimension geometryModel.kervaireOne :=
  geometryLiterature.browderCriterion

/-- C(M) on the presentation stored in that same stage witness. -/
noncomputable def computation :
    KIP126.Challenge2.ComputationInterface witness.modelBindings witness.presentation :=
  witness.computation

/-- All Section 7 consumers use the model already selected by Challenge1. -/
noncomputable abbrev routeModel := KIP126.Classical.Adams.standardRouteModel
noncomputable abbrev routeLabels := witness.modelBindings.routeLabels
noncomputable abbrev tmfLabels := witness.modelBindings.tmfLabels
noncomputable abbrev routeEta := witness.modelBindings.routeEta

/-- A(M) assembled from the same shared bindings and external conclusions. -/
noncomputable def routeLiterature :
    KIP126.Literature.Route.Inputs routeModel routeEta tmfLabels :=
  KIP126.Literature.Route.Statements.toInputs routeModel routeEta tmfLabels
    literature.route witness.routeApplication

/-- C(M) on the same model and labels. This projects existing evidence. -/
noncomputable def routeComputation :
    KIP126.Computation.Route.Inputs routeModel routeLabels tmfLabels :=
  computation.route

end KIP126.Main.StageInput
