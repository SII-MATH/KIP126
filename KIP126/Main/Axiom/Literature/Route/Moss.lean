import KIP126.Main.Axiom.Literature.Route.Classical

namespace KIP126.Literature.Route
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

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
