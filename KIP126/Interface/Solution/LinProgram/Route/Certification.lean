import KIP126.Interface.Challenge.Challenge2
import KIP126.Interface.Solution.Challenge2
namespace KIP126.Interface.Solution.LinProgram.Route
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Computation.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- Local certification assembles seven separately provable obligations.
The fixed-data semantics and all object/label choices are supplied explicitly. -/
theorem certify_of_parts {D : Model H M Syn} (R : Realization D)
    (L : Labels H) (G : KIP126.Literature.Route.TmfLabels H)
    (basis : ∀ d ∈ Raw.degrees, BasisCorrect R d)
    (csv : ∀ d ∈ Raw.degrees, SphereBasisValue R d)
    (products : ∀ p ∈ Raw.products, ProductCorrect R p)
    (labels : LabelsCorrect R L G)
    (results : ∀ c ∈ Raw.claims, Statement R c)
    (bottom : ∀ p ∈ Raw.bottomMaps, BottomCorrect R p)
    (top : TopCorrect R) : CertifiedRealization R L G := by
  exact ⟨basis, csv, products, labels, results, bottom, top⟩

/-- Extract local certificates AND presentation agreement from the joint
Interface producer. G is retained from that same model-binding witness. -/
theorem certification :
    ∃ (routeInput : StandardRouteInput)
      (B : KIP126.Challenge2.ModelBindings routeInput) (P : LinE2Presentation)
      (R : Realization routeInput.model),
      CertifiedRealization R B.routeLabels B.tmfLabels ∧
      (∀ (s t : ℕ) (ht : t ≤ 261) (x : KIP126.LinE2.E2At s t),
        R.sphere s t x = P.comparison s t ht x) := by
  obtain ⟨I⟩ := KIP126.Interface.Solution.challenge2
  exact ⟨I.routeInput, I.modelBindings, I.presentation, I.computation.route.realization,
    I.computation.route.toCertifiedRealization, I.computation.route_presentation⟩

end KIP126.Interface.Solution.LinProgram.Route
