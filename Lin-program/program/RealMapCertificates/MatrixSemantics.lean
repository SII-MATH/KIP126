import RealMapCertificates.Substitution
import BranchReplayCertificates.BasisSemantics

namespace RealMapCertificates
open LinearCertificates NamedElementCertificates
open BranchReplayCertificates.BasisSemantics

structure MatrixCertificate (m n : Nat) where
  terms : Fin n → List Term

/-- The polynomial for each output is decoded from the exact matrix column and
exact target basis. There is no separately trusted output-polynomial field. -/
def MatrixValid (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → Monomial) (target : Fin m → Polynomial) (a : Matrix m n) : Prop :=
  ∀ j, IsMapEvaluation images relations (source j)
    (decodedBasisVector target (fun i => a i j))

def checkMatrix (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → Monomial) (target : Fin m → Polynomial) (a : Matrix m n)
    (c : MatrixCertificate m n) : Bool :=
  (List.finRange n).all fun j => NamedElementCertificates.check relations
    (substituteMonomial images (source j)) (decodedBasisVector target (fun i => a i j)) (c.terms j)

theorem checkMatrix_sound (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → Monomial) (target : Fin m → Polynomial) (a : Matrix m n)
    (c : MatrixCertificate m n) (h : checkMatrix images relations source target a c = true) :
    MatrixValid images relations source target a := by
  intro j
  apply NamedElementCertificates.check_sound
  exact List.all_eq_true.mp h j (List.mem_finRange j)

theorem matrixValid_hom {R S : Type*} [CommRing R] [CharP R 2] [CommRing S] [CharP S 2]
    (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → Monomial) (target : Fin m → Polynomial) (a : Matrix m n)
    (h : MatrixValid images relations source target a)
    (sourceVal : Nat → R) (targetVal : Nat → S) (f : R →+* S)
    (compatible : ∀ g, f (sourceVal g) = evaluate targetVal (images g))
    (relationsVanish : ∀ r ∈ relations, evaluate targetVal r = 0) (x : Vec n) :
    interpret (fun i => evaluate targetVal (target i)) (eval a x) =
      f (interpret (fun j => evaluateMonomial sourceVal (source j)) x) := by
  apply all_maps
  intro j
  rw [← decoded_evaluate]
  exact (mapEvaluation_hom images relations (source j) _ (h j)
    sourceVal targetVal f compatible relationsVanish).symm

instance (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → Monomial) (target : Fin m → Polynomial) (a : Matrix m n) :
    LinProgramCertificates.CertificateVerifier (MatrixValid images relations source target a) where
  Cert := MatrixCertificate m n
  check := checkMatrix images relations source target a
  sound := checkMatrix_sound images relations source target a

end RealMapCertificates
