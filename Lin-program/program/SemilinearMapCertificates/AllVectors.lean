import SemilinearMapCertificates.Import
import ModuleToModuleCertificates.Matrix
namespace SemilinearMapCertificates
open NamedElementCertificates LinearCertificates
open ModuleMapCertificates (interpretModule)

def checkColumns (coefficients images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → ModuleMapCertificates.ModuleMonomial) (target : Fin m → Polynomial)
    (a : Matrix m n) (terms : Fin n → List Term) : Bool :=
  (List.finRange n).all fun j => NamedElementCertificates.check relations
    (substitute coefficients images (source j))
    (BranchReplayCertificates.BasisSemantics.decodedBasisVector target (fun i => a i j)) (terms j)

theorem allVectors {R S M : Type} [CommRing R] [CommRing S] [CharP S 2]
    [AddCommGroup M] [Module R M] (phi : R →+* S) (f : M →ₛₗ[phi] S)
    (sourceVal : Nat → R) (targetVal : Nat → S) (generators : Nat → M)
    (coefficients images : Nat → Polynomial) (relations : List Polynomial)
    (source : Fin n → ModuleMapCertificates.ModuleMonomial) (target : Fin m → Polynomial)
    (a : Matrix m n) (terms : Fin n → List Term)
    (h : checkColumns coefficients images relations source target a terms=true)
    (hc : ∀ g, phi (sourceVal g) = evaluate targetVal (coefficients g))
    (hi : ∀ g, f (generators g) = evaluate targetVal (images g))
    (hr : ∀ r ∈ relations, evaluate targetVal r=0) (x : Vec n) :
    BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate targetVal (target i)) (eval a x) =
      f (interpretModule (fun j => evaluateMonomial sourceVal (source j).coefficient • generators (source j).generator) x) := by
  rw [BranchReplayCertificates.BasisSemantics.interpret_matrix]
  have columns (j : Fin n) :
      BranchReplayCertificates.BasisSemantics.interpret (fun i => evaluate targetVal (target i)) (fun i => a i j) =
      f (evaluateMonomial sourceVal (source j).coefficient • generators (source j).generator) := by
    rw [← BranchReplayCertificates.BasisSemantics.decoded_evaluate]
    exact (valid_semilinear phi f sourceVal targetVal generators coefficients images relations (source j) _
      (NamedElementCertificates.check_sound _ _ _ _ (List.all_eq_true.mp h j (List.mem_finRange j))) hc hi hr).symm
  rw [funext columns]
  have interpret_map : ∀ {k} (basis : Fin k → M) (y : Vec k),
      BranchReplayCertificates.BasisSemantics.interpret (fun i => f (basis i)) y = f (interpretModule basis y) := by
    intro k basis y
    induction k with
    | zero => simp [BranchReplayCertificates.BasisSemantics.interpret, interpretModule]
    | succ k ih =>
      simp only [BranchReplayCertificates.BasisSemantics.interpret, interpretModule]
      rw [ih]
      cases hy : y 0 <;> simp [hy, map_add]
  exact interpret_map _ x

def diagnose (w : Wire) : Option String :=
  if !w.shape then some "shape: version, missing/duplicate image, or numeric sentinel"
  else if w.terms.any (fun t => t.relation ≥ w.relations.length) then some "relation index out of range"
  else if !checkWire w then some "coefficient substitution/module image/relation equality failed"
  else none
end SemilinearMapCertificates
