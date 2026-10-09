import ModuleToModuleCertificates.WireSemantics
namespace ModuleToModuleCertificates
open NamedElementCertificates

/-- A rank-one free target interpreted by its unit is the coefficient ring itself. -/
theorem unit_target_evaluate {R : Type*} [CommRing R] (v : Nat → R)
    (p : ModuleExpressions.Expression 1) :
    ModuleExpressions.evaluate v (fun _ : Fin 1 => (1:R)) p = evaluate v (p 0) := by
  simp [ModuleExpressions.evaluate, smul_eq_mul]

/-- Specialize the whole-matrix theorem to an R-linear map into the ring.
The target generator is explicitly 1; it is not an implicit topological assumption. -/
theorem unit_target_allVectors {R M : Type} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (w : Wire) (hb : w.targetGenerators=1)
    (h : w.Valid) (f : M →ₗ[R] R) (v : Nat → R)
    (source : Fin w.sourceGenerators → M)
    (compatible : ∀ i, f (source i) = ModuleExpressions.evaluate v
      (fun _ : Fin w.targetGenerators => (1:R)) (w.img i))
    (hr : ∀ r ∈ w.rels, ModuleExpressions.evaluate v
      (fun _ : Fin w.targetGenerators => (1:R)) r = 0) (x : LinearCertificates.Vec w.cols) :
    ModuleMapCertificates.interpretModule
      (fun i => ModuleExpressions.evaluate v (fun _ : Fin w.targetGenerators => (1:R)) (w.tgt i))
      (LinearCertificates.eval w.mat x) =
    f (ModuleMapCertificates.interpretModule
      (fun j => ModuleExpressions.evaluate v source (w.src j)) x) := by
  exact w.allVectors h f v source (fun _ => 1) compatible hr x
end ModuleToModuleCertificates
