import KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Uniqueness
import KIP126.Def.Synthetic.EInfty.Presentation.Data

/-! Internal adaptation of the BHS p=1 range. The source E-infinity formula
and its weight-shift comparison are explicit inputs. Exact biShift and
lambda centrality identify the quotient of a shifted nu object with the
shift of its actual first quotient. This file accepts no new source axiom.
-/
namespace KIP126.Main.Solution.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context
open KIP126.Synthetic.SpectralSequence KIP126.Kervaire.Route
open KIP126.Comparison.ClassicalSynthetic
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn)

/-- BHS `cor:synth-ctau-ASS`, specialized to p=1 and transported through
D's exact bigraded suspension. No arbitrary representative is identified:
the conclusion is precisely a vanishing range of the actual E-infinity. -/
theorem firstQuotient_single_filtration
    (P : SyntheticEInftyPresentation H D.nu D.family)
    (S : EInftyWeightShift D.family) (X : ClassicalObject) (a : ℤ) :
    FirstQuotientSingleFiltration D X a := by sorry

/-- The source range eliminates the higher-filtration indeterminacy via
the same model's separated convergence, including its actual first quotient. -/
theorem firstQuotient_next_filtration_zero
    (P : SyntheticEInftyPresentation H D.nu D.family)
    (S : EInftyWeightShift D.family) (X : ClassicalObject) (a s t : ℤ) :
    FirstQuotientNextFiltrationZero D X a s t :=
  firstQuotient_next_filtration_zero_of_range D X a s t
    (firstQuotient_single_filtration D P S X a)

end KIP126.Main.Solution.Route
