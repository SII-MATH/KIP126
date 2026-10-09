import Row2916D4Search.Maps
import ModuleToModuleCertificates.RingRelations

namespace Row2916D4Search.Semantics
open NamedElementCertificates LinearCertificates ModuleToModuleCertificates
open ModuleMapCertificates (interpretModule)

/-- The imported matrix evaluates the supplied linear map on every vector.
Generator images and original polynomial relations remain mathematical inputs. -/
theorem all_vectors {R M N : Type} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]
    (w : ShiftedWire) (valid : w.Valid) (f : M →ₗ[R] N) (v : Nat → R)
    (source : Fin w.algebra.sourceGenerators → M)
    (target : Fin w.algebra.targetGenerators → N)
    (compatible : ∀ i, f (source i) = ModuleExpressions.evaluate v target (w.algebra.img i))
    (relations : ∀ rel ∈ w.algebra.rels, ModuleExpressions.evaluate v target rel = 0)
    (x : Vec w.algebra.cols) :
    interpretModule (fun i => ModuleExpressions.evaluate v target (w.algebra.tgt i))
      (eval w.algebra.mat x) =
      f (interpretModule (fun j => ModuleExpressions.evaluate v source (w.algebra.src j)) x) :=
  w.algebra.allVectors valid.2 f v source target compatible relations x

theorem ring_lift {R N : Type} [CommRing R] [AddCommGroup N] [Module R N]
    (v : Nat → R) (g : Fin n → N) (r : Polynomial) (j : Fin n)
    (vanishes : evaluate v r = 0) :
    ModuleExpressions.evaluate v g (liftRingRelation n r j) = 0 :=
  liftRingRelation_vanishes v g r j vanishes

#print axioms all_vectors
#print axioms ring_lift
end Row2916D4Search.Semantics
