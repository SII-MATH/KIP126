import NamedElementCertificates.Evaluation

namespace RealMapCertificates
open NamedElementCertificates

def substituteMonomial (images : Nat → Polynomial) : Monomial → Polynomial
  | [] => [[]]
  | g :: gs => multiply (images g) (substituteMonomial images gs)

def IsMapEvaluation (images : Nat → Polynomial) (relations : List Polynomial)
    (input : Monomial) (output : Polynomial) : Prop :=
  EqualModuloRelations relations (substituteMonomial images input) output

instance (images : Nat → Polynomial) (relations : List Polynomial)
    (input : Monomial) (output : Polynomial) :
    LinProgramCertificates.CertificateVerifier (IsMapEvaluation images relations input output) where
  Cert := List Term
  check := NamedElementCertificates.check relations (substituteMonomial images input) output
  sound := NamedElementCertificates.check_sound relations (substituteMonomial images input) output

variable {R S : Type*} [CommRing R] [CommRing S]

theorem substitute_evaluate (images : Nat → Polynomial) (v : Nat → S) (m : Monomial) :
    evaluate v (substituteMonomial images m) =
      evaluateMonomial (fun g => evaluate v (images g)) m := by
  induction m with
  | nil => simp [substituteMonomial, evaluate, evaluateMonomial]
  | cons g gs ih =>
    rw [substituteMonomial, evaluate_multiply, ih]
    rfl

theorem substitute_hom (images : Nat → Polynomial) (source : Nat → R) (target : Nat → S)
    (f : R →+* S) (compatible : ∀ g, f (source g) = evaluate target (images g))
    (m : Monomial) : f (evaluateMonomial source m) = evaluate target (substituteMonomial images m) := by
  rw [substitute_evaluate]
  induction m with
  | nil => simp [evaluateMonomial]
  | cons g gs ih =>
    change f (source g * evaluateMonomial source gs) = _
    rw [map_mul, compatible, ih]
    rfl

theorem mapEvaluation_hom [CharP S 2] (images : Nat → Polynomial)
    (relations : List Polynomial) (m : Monomial) (output : Polynomial)
    (h : IsMapEvaluation images relations m output)
    (source : Nat → R) (target : Nat → S) (f : R →+* S)
    (compatible : ∀ g, f (source g) = evaluate target (images g))
    (relationsVanish : ∀ r ∈ relations, evaluate target r = 0) :
    f (evaluateMonomial source m) = evaluate target output := by
  rw [substitute_hom images source target f compatible m]
  exact equalModulo_evaluate target relations _ output h relationsVanish

end RealMapCertificates
