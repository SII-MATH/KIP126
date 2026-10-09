import ModuleMapCertificates.Import
import BranchReplayCertificates.BasisSemantics

namespace ModuleMapCertificates
open NamedElementCertificates LinearCertificates
open BranchReplayCertificates.BasisSemantics

/-- A decoded module vector, with F2 addition interpreted as module addition. -/
def interpretModule {M : Type*} [AddCommGroup M] :
    {n : Nat} → (Fin n → M) → Vec n → M
  | 0, _, _ => 0
  | _+1, basis, x => (if x 0 then basis 0 else 0) +
      interpretModule (fun i => basis i.succ) (fun i => x i.succ)

theorem interpretModule_linear {R M : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (f : M →ₗ[R] R) (basis : Fin n → M) (x : Vec n) :
    interpret (fun j => f (basis j)) x = f (interpretModule basis x) := by
  induction n with
  | zero => simp [interpret, interpretModule]
  | succ n ih =>
    simp only [interpret, interpretModule]
    rw [ih]
    cases hx : x 0 <;> simp [hx, map_add]

def MatrixValid (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → ModuleMonomial) (target : Fin m → Polynomial)
    (a : Matrix m n) : Prop :=
  ∀ j, MapValid images relations (source j) (decodedBasisVector target (fun i => a i j))

def checkMatrix (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → ModuleMonomial) (target : Fin m → Polynomial)
    (a : Matrix m n) (terms : Fin n → List Term) : Bool :=
  (List.finRange n).all fun j => NamedElementCertificates.check relations
    (substitute images (source j)) (decodedBasisVector target (fun i => a i j)) (terms j)

theorem checkMatrix_sound (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → ModuleMonomial) (target : Fin m → Polynomial)
    (a : Matrix m n) (terms : Fin n → List Term)
    (h : checkMatrix images relations source target a terms = true) :
    MatrixValid images relations source target a := by
  intro j
  apply NamedElementCertificates.check_sound
  exact List.all_eq_true.mp h j (List.mem_finRange j)

theorem matrixValid_linear {R M : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (f : M →ₗ[R] R) (v : Nat → R)
    (generators : Nat → M) (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → ModuleMonomial) (target : Fin m → Polynomial) (a : Matrix m n)
    (h : MatrixValid images relations source target a)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (relationsVanish : ∀ r ∈ relations, evaluate v r = 0) (x : Vec n) :
    interpret (fun i => evaluate v (target i)) (eval a x) =
      f (interpretModule (fun j => evaluateMonomial v (source j).coefficient •
        generators (source j).generator) x) := by
  rw [interpret_matrix]
  have columns : (fun j => interpret (fun i => evaluate v (target i)) (fun i => a i j)) =
      (fun j => f (evaluateMonomial v (source j).coefficient • generators (source j).generator)) := by
    funext j
    rw [← decoded_evaluate]
    exact (mapValid_linear f v generators images relations (source j) _ (h j)
      compatible relationsVanish).symm
  rw [columns, interpretModule_linear]

instance (images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → ModuleMonomial) (target : Fin m → Polynomial) (a : Matrix m n) :
    LinProgramCertificates.CertificateVerifier (MatrixValid images relations source target a) where
  Cert := Fin n → List Term
  check := checkMatrix images relations source target a
  sound := checkMatrix_sound images relations source target a
end ModuleMapCertificates
