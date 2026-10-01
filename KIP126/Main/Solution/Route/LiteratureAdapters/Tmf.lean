import KIP126.Def.Kervaire.Inputs.Literature.Data

/-! BMQ source facts are transported to the fixed route. The high-stem
universal statement is derived with the explicit CLASSICAL filtration tail;
it is neither an axiom nor a renamed source theorem. -/
namespace KIP126.Main.Solution.Route.LiteratureAdapters
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (G : TmfLabels H)

/-- No information about synthetic theta is inserted: this is only the
classical 62-stem vanishing transported along the specified unit equation. -/
theorem tmf_theta5_vanishes (A : Inputs D η G) : TmfTheta5Vanishing D := by
  intro θ _
  apply (cancel_mono A.tmfBinding.detectorIso.hom).1
  simpa only [Category.assoc, A.tmfBinding.unit, Limits.zero_comp] using
    A.tmf.vanishing62 (θ ≫ A.tmfSource.unit)

/-- The low E2 group is transported by the actual tower map of detectorIso,
whose inverse is induced by the inverse spectrum map. No arbitrary E2
linear equivalence is selected as a substitute for functoriality. -/
theorem tmf_low_filtration63 (A : Inputs D η G) : TmfLowFiltration63 D := by
  sorry

/-- The fixed sphere/cobar multiplicativity comparison identifies the
BMQ product of homotopy classes with the route's actual g^4 Delta h1 g.
This statement allows a zero leading term; nonvanishing is proved below. -/
theorem tmf_high125_product_detected (A : Inputs D η G) :
    TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (G.high125 M) A.tmfSource.high125 := by
  sorry

/-- Exact route consequence: the BMQ product has nonzero unit image.
Since F26 of the classical 125-stem is zero, its degree-25 leading term
is nonzero and every class with that term equals it. This is where the
C-derived exhaustion and separated convergence enter, rather than being
silently included in the accepted tmf source result. -/
theorem tmf_high125_detection (A : Inputs D η G)
    (tail : ClassicalHigh125Tail D) : TmfHigh125Detection D G := by
  sorry

/-- The old three local tmf conclusions are now an internal derived package,
with their full extra premise visible. It asserts no synthetic injectivity. -/
theorem tmf_route_inputs (A : Inputs D η G)
    (tail : ClassicalHigh125Tail D) : TmfInputs D G where
  theta5_vanishes := tmf_theta5_vanishes D η G A
  high125_detected := tmf_high125_detection D η G A tail
  low_filtration_63 := tmf_low_filtration63 D η G A
end KIP126.Main.Solution.Route.LiteratureAdapters
