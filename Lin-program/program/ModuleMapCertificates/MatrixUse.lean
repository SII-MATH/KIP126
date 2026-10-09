import ModuleMapCertificates.MatrixImport

namespace ModuleMapCertificates
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics

theorem MatrixWire.allVectors {R M : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (w : MatrixWire) (h : w.Valid)
    (f : M →ₗ[R] R) (v : Nat → R) (generators : Nat → M)
    (compatible : ∀ g, f (generators g) = evaluate v (w.image g))
    (relationsVanish : ∀ r ∈ w.relations, evaluate v r = 0) (x : Vec w.cols) :
    interpret (fun i => evaluate v (w.tgt i)) (eval w.matrix x) =
      f (interpretModule (fun j => evaluateMonomial v (w.src j).coefficient •
        generators (w.src j).generator) x) :=
  matrixValid_linear f v generators w.image w.relations w.src w.tgt w.matrix
    h.2 compatible relationsVanish x

end ModuleMapCertificates
