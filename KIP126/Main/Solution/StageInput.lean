import KIP126.Main.Axiom.Challenge2
import KIP126.Main.Solution.Computation.Tmf

/-! Consumer projections from the sole correlated Challenge2 witness. -/
namespace KIP126.Main.StageInput

/-- The one witness used throughout Main. -/
noncomputable def witness : KIP126.Challenge2 :=
  Classical.choice KIP126.Main.Axiom.challenge2

/-- Literature on the bindings stored in the sole stage witness. -/
noncomputable def literature :
    KIP126.Challenge2.LiteratureInterface witness.routeInput witness.modelBindings :=
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
    KIP126.Challenge2.ComputationInterface witness.routeInput witness.modelBindings
      witness.presentation :=
  witness.computation

/-- All Section 7 consumers use the route delivered with the same A(M)/C(M). -/
noncomputable abbrev routeModel := witness.routeModel
noncomputable abbrev routeLabels := witness.modelBindings.routeLabels
noncomputable abbrev tmfLabels := witness.modelBindings.tmfLabels
noncomputable abbrev routeEta := witness.modelBindings.routeEta

/-- C(M) on the same model and labels. This projects existing evidence. -/
noncomputable def routeComputation :
    KIP126.Computation.Route.Inputs routeModel routeLabels tmfLabels :=
  computation.route

/-- Independent infinite-range premises on the same actual standard sphere. -/
noncomputable def sphereVanishing :
    KIP126.Classical.Adams.SphereVanishingLine KIP126.Classical.Adams.standardFoundation.hf2 :=
  literature.sphereVanishing

noncomputable def sphereSeparated :
    KIP126.Classical.Adams.ClassicalSphereSeparated KIP126.Classical.Adams.standardFoundation.hf2 :=
  literature.sphereSeparated

/-- Main derives the tmf consumer facts from the same source, C(M) and tail
premises. In particular high125 survival is not a Challenge2 field. -/
noncomputable def routeTmf :
    KIP126.Literature.Route.TmfInputs routeModel tmfLabels :=
  KIP126.Main.Solution.Computation.tmf_inputs_of_computation routeModel
    routeComputation sphereVanishing sphereSeparated
    witness.modelBindings.route.tmfSource literature.route.tmf
    witness.modelBindings.route.tmfBinding
    witness.modelBindings.route.algebraBinding.classical_detection

/-- The applied consumer API combines prior sources and comparisons with
Main's tmf deduction on the same shared model. -/
noncomputable def routeLiterature :
    KIP126.Literature.Route.Inputs routeModel routeEta tmfLabels :=
  KIP126.Literature.Route.Statements.toInputs routeModel routeEta tmfLabels
    literature.route witness.routeApplication routeTmf

end KIP126.Main.StageInput
