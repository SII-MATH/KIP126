import Row2576D4Detector.Actual
import ModuleToModuleCertificates.RingRelations

namespace Row2576D4Detector.Semantics
open NamedElementCertificates LinearCertificates ModuleToModuleCertificates
open ModuleMapCertificates (interpretModule)

/-- The checked coefficient matrix represents the actual supplied module map
on every vector, provided its generator images and imported relations agree. -/
theorem actual_all_vectors {R M N : Type} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]
    (w : ShiftedWire) (hw : w.Valid) (f : M →ₗ[R] N) (v : Nat → R)
    (source : Fin w.algebra.sourceGenerators → M)
    (target : Fin w.algebra.targetGenerators → N)
    (compatible : ∀ i, f (source i) = ModuleExpressions.evaluate v target (w.algebra.img i))
    (relationsVanish : ∀ rel ∈ w.algebra.rels, ModuleExpressions.evaluate v target rel = 0)
    (x : Vec w.algebra.cols) :
    interpretModule (fun i => ModuleExpressions.evaluate v target (w.algebra.tgt i))
      (eval w.algebra.mat x) =
    f (interpretModule (fun j => ModuleExpressions.evaluate v source (w.algebra.src j)) x) :=
  w.algebra.allVectors hw.2 f v source target compatible relationsVanish x

/-- Ring-relation lifts require only the original coefficient relation. -/
theorem ring_lift_vanishes {R N : Type} [CommRing R]
    [AddCommGroup N] [Module R N] (v : Nat → R) (g : Fin n → N)
    (r : Polynomial) (j : Fin n) (hr : evaluate v r = 0) :
    ModuleExpressions.evaluate v g (liftRingRelation n r j) = 0 :=
  liftRingRelation_vanishes v g r j hr

#print axioms actual_all_vectors
#print axioms ring_lift_vanishes
end Row2576D4Detector.Semantics
