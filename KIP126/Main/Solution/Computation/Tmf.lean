import KIP126.Main.Solution.Computation.Route
import KIP126.Def.Kervaire.Route.Tmf.Predicates

/-! The high125 tmf consequences are Main deductions. The source supplies
one actual product with nonzero tmf image. Its nonzero associated grade at
filtration 25 additionally uses C(M), the vanishing line, and separation.
No theorem here consumes the assembled route literature or a stage axiom. -/
namespace KIP126.Main.Solution.Computation
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Core.SpectralSequence KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route KIP126.Literature.Route

universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) {L : Labels H} {G : TmfLabels H}

/-- Multiplicative detection puts the source product kappaBar^4*w in F25
with leading label G.high125. Its tmf image is nonzero by the source result.
The finite E5 exhaustion, vanishing line and separated filtration give F26=0
via `classical_stem125_filtration26_zero`; hence that leading grade is nonzero.
This argument does not assume the already assembled `TmfInputs` conclusion. -/
theorem high125_nonzero_survival_of_computation
    (I : KIP126.Computation.Route.Inputs D L G)
    (V : SphereVanishingLine H) (separated : ClassicalSphereSeparated H)
    (source : TmfSourceData H) (hsource : TmfSourceResults source)
    (binding : TmfBinding D G source)
    (multiplicative : ClassicalProductDetection D) :
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
      (25,150) (G.high125 M) := by
  sorry

/-- Exact source-to-model tmf comparison using the actual product and canonical
detection. It supplies one detected high class, and retains its leading-term
survival as an explicit premise. Representative independence is a further
Main deduction using the higher-filtration tail. -/
theorem tmf_of_source (G : TmfLabels H) (source : TmfSourceData H)
    (hsource : TmfSourceResults source) (binding : TmfBinding D G source)
    (multiplicative : ClassicalProductDetection D)
    (hhigh : NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
      (25,150) (G.high125 M)) : TmfInputs D G := by
  sorry

/-- Produce the tmf consumer package after the finite computation and the
independent infinite-range premises have been supplied on the same model. -/
theorem tmf_inputs_of_computation
    (I : KIP126.Computation.Route.Inputs D L G)
    (V : SphereVanishingLine H) (separated : ClassicalSphereSeparated H)
    (source : TmfSourceData H) (hsource : TmfSourceResults source)
    (binding : TmfBinding D G source)
    (multiplicative : ClassicalProductDetection D) : TmfInputs D G :=
  tmf_of_source D G source hsource binding multiplicative
    (high125_nonzero_survival_of_computation D I V separated source hsource
      binding multiplicative)

end
end KIP126.Main.Solution.Computation
