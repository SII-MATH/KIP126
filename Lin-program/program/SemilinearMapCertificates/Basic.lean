import ModuleMapCertificates.Basic
import RealMapCertificates.Substitution
namespace SemilinearMapCertificates
open NamedElementCertificates ModuleMapCertificates

def substitute (coefficients : Nat → Polynomial) (images : Nat → Polynomial)
    (input : ModuleMonomial) : Polynomial :=
  multiply (RealMapCertificates.substituteMonomial coefficients input.coefficient) (images input.generator)
def Valid (coefficients images : Nat → Polynomial) (relations : List Polynomial)
    (input : ModuleMonomial) (output : Polynomial) : Prop :=
  EqualModuloRelations relations (substitute coefficients images input) output
instance (coefficients images : Nat → Polynomial) (relations : List Polynomial)
    (input : ModuleMonomial) (output : Polynomial) :
    LinProgramCertificates.CertificateVerifier (Valid coefficients images relations input output) where
  Cert := List Term
  check := NamedElementCertificates.check relations (substitute coefficients images input) output
  sound := NamedElementCertificates.check_sound relations (substitute coefficients images input) output

theorem valid_semilinear {R S M : Type*} [CommRing R] [CommRing S] [CharP S 2]
    [AddCommGroup M] [Module R M] (phi : R →+* S) (f : M →ₛₗ[phi] S)
    (sourceVal : Nat → R) (targetVal : Nat → S) (generators : Nat → M)
    (coefficients images : Nat → Polynomial) (relations : List Polynomial)
    (input : ModuleMonomial) (output : Polynomial)
    (h : Valid coefficients images relations input output)
    (hc : ∀ g, phi (sourceVal g) = evaluate targetVal (coefficients g))
    (hi : ∀ g, f (generators g) = evaluate targetVal (images g))
    (hr : ∀ r ∈ relations, evaluate targetVal r=0) :
    f (evaluateMonomial sourceVal input.coefficient • generators input.generator) =
      evaluate targetVal output := by
  rw [map_smulₛₗ, hi]
  change phi (evaluateMonomial sourceVal input.coefficient) * evaluate targetVal (images input.generator) = _
  rw [RealMapCertificates.substitute_hom coefficients sourceVal targetVal phi hc]
  have he := equalModulo_evaluate targetVal relations _ output h hr
  simpa only [substitute, evaluate_multiply] using he
end SemilinearMapCertificates
