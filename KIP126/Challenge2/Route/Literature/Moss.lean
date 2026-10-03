import KIP126.Challenge2.Route.Literature.ClassicalSource

namespace KIP126.Literature.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Main.Solution.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- The local Moss source statement on the CLASSICAL sphere resolution.
It has no synthetic-model parameter. A source acceptance must identify the
displayed convergence with the comparison from that actual multiplicative
Adams resolution; an arbitrary associated-graded isomorphism does not
establish applicability. All defining-system, crossing and residual
hypotheses are retained. This definition does not assert the statement. -/
def MossSourceInput (M : MilnorCooperations H)
    (convergence : TowerDetection.Convergence H.unit SphereSpectrum) : Prop :=
  ∀ (B : E2 H SphereSpectrum 8 70)
    (θ β : HomotopyGroup (C := C) 62 SphereSpectrum)
    (two : HomotopyGroup (C := C) 0 SphereSpectrum),
    two = (shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _) →
    TowerDetection.Detects convergence (2,64) (Sphere.Internal.hiSquare H M 5) θ →
    TowerDetection.Detects convergence (1,1) (Sphere.Internal.hi H M 0) two →
    TowerDetection.Detects convergence (8,70) B β →
    θ + θ = 0 → β + β = 0 →
    (ThetaBMassey M B).Nonempty →
    ¬ SphereMossCrossing (H := H) 3 (3,65) →
    ¬ SphereMossCrossing (H := H) 3 (9,71) →
    TowerDetection.ResidualInjectivity H.unit (SphereSpectrum (C := C)) →
    ∃ (z : E2 H SphereSpectrum 9 134)
      (ξ : HomotopyGroup (C := C) 125 SphereSpectrum),
      ThetaBMasseyDefiningSystem M B z ∧
      TowerDetection.Detects convergence (9,134) z ξ ∧ ThetaBToda θ β ξ

/-- Moss (1970), Theorem 1.2, in the precise local specialization used by
LWX Lemma 7.16. The defining systems, two null products, two no-crossing
conditions and residual-tower condition remain explicit hypotheses.
It asserts existence of a detected bracket member, not that every member
is permanent or that the bracket has zero indeterminacy. The statement and
crossing convention were also checked against Belmont--Kong (2021),
Theorem 1.1 / 4.11 and Definition 2.10. Moss's original scan was unavailable;
the source inventory does not advertise it as independently read. -/
abbrev MossInput := KIP126.Main.Solution.Route.ThetaBMossInput D

/-- The residual-tower hypothesis for the selected complete classical
sphere. This is an applicability obligation for the Moss source theorem,
not a computational no-crossing or Massey-value assertion. -/
abbrev MossTowerApplicability :=
  TowerDetection.ResidualInjectivity H.unit (SphereSpectrum (C := C))
end KIP126.Literature.Route
