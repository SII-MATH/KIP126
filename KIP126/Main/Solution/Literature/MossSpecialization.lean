import KIP126.Main.Axiom.Literature.Moss
import KIP126.Def.Kervaire.Inputs.Literature.Moss

/-! Source specialization and signs are an internal proof responsibility.
The E3 product here is formed from d2 on E2; no unprovided comparison
between a cobar DGA Massey product and an E2 Massey product is invoked.
The two E2 products are transported using StandardMossModel.product;
the tower, common representatives and detection use its other bindings.
-/
namespace KIP126.Main.Solution.Literature
open KIP126.Classical.Adams KIP126.StableHomotopy

theorem moss_specialization
    (c : TowerDetection.Convergence standardFoundation.hf2.unit
      (SphereSpectrum (C := standardFoundation.Spectrum)))
    (h : Moss.SphereStatement standardFoundation.hf2 standardMod2Ring
      (Moss.standardMossModel c).composition (Moss.standardMossModel c).convergence) :
    KIP126.Literature.Route.MossSourceInput standardMilnorCooperations c := by
  sorry

/-- The only source acceptance used by this adapter is sphere_moss.
The remaining sorry is the displayed internal specialization above. -/
theorem accepted_moss
    (c : TowerDetection.Convergence standardFoundation.hf2.unit
      (SphereSpectrum (C := standardFoundation.Spectrum))) :
    KIP126.Literature.Route.MossSourceInput standardMilnorCooperations c := by
  exact moss_specialization c (KIP126.Main.Axiom.Literature.sphere_moss c)

end KIP126.Main.Solution.Literature
