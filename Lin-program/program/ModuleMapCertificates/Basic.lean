import Mathlib.Algebra.Module.LinearMap.Defs
import NamedElementCertificates.ModuleEvaluation
import RealMapCertificates.Substitution

namespace ModuleMapCertificates
open NamedElementCertificates

/-- Source coefficient monomial plus the trailing module-generator ID. -/
structure ModuleMonomial where
  coefficient : Monomial
  generator : Nat
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def substitute (images : Nat → Polynomial) (m : ModuleMonomial) : Polynomial :=
  multiply [m.coefficient] (images m.generator)

def MapValid (images : Nat → Polynomial) (relations : List Polynomial)
    (input : ModuleMonomial) (output : Polynomial) : Prop :=
  EqualModuloRelations relations (substitute images input) output

instance (images : Nat → Polynomial) (relations : List Polynomial)
    (input : ModuleMonomial) (output : Polynomial) :
    LinProgramCertificates.CertificateVerifier (MapValid images relations input output) where
  Cert := List Term
  check := NamedElementCertificates.check relations (substitute images input) output
  sound := NamedElementCertificates.check_sound relations (substitute images input) output

/-- Cnu -> S0 is linear over the same S0 coefficient ring; its coefficient-ring
map is identity. Images of module generators are explicit compatibility hypotheses. -/
theorem mapValid_linear {R M : Type*} [CommRing R] [CharP R 2]
    [AddCommGroup M] [Module R M] (f : M →ₗ[R] R) (v : Nat → R)
    (generators : Nat → M) (images : Nat → Polynomial)
    (relations : List Polynomial) (input : ModuleMonomial) (output : Polynomial)
    (h : MapValid images relations input output)
    (compatible : ∀ g, f (generators g) = evaluate v (images g))
    (relationsVanish : ∀ r ∈ relations, evaluate v r = 0) :
    f (evaluateMonomial v input.coefficient • generators input.generator) = evaluate v output := by
  rw [map_smul, compatible]
  change evaluateMonomial v input.coefficient * evaluate v (images input.generator) = _
  have he := equalModulo_evaluate v relations (substitute images input) output h relationsVanish
  rw [substitute, evaluate_multiply] at he
  simpa [evaluate] using he
end ModuleMapCertificates
