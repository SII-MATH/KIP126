import Mathlib.Algebra.BigOperators.Fin
import NamedElementCertificates.ModuleEvaluation
import ModuleMapCertificates.MatrixSemantics
namespace ModuleToModuleCertificates
open NamedElementCertificates
open scoped BigOperators

variable {R M N : Type*} [CommRing R] [CharP R 2]
  [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]

/-- Images of a finite source module-generator family in a finite target family. -/
def substitute : {a : Nat} → (Fin a → ModuleExpressions.Expression b) →
    ModuleExpressions.Expression a → ModuleExpressions.Expression b
  | 0, _, _ => ModuleExpressions.zero
  | _+1, images, input => ModuleExpressions.add
      (ModuleExpressions.scale (input 0) (images 0))
      (substitute (fun i => images i.succ) (fun i => input i.succ))

theorem substitute_evaluate (v : Nat → R) (g : Fin b → N)
    (images : Fin a → ModuleExpressions.Expression b) (input : ModuleExpressions.Expression a) :
    ModuleExpressions.evaluate v g (substitute images input) =
      ∑ i, evaluate v (input i) • ModuleExpressions.evaluate v g (images i) := by
  induction a with
  | zero => simp [substitute, ModuleExpressions.evaluate_zero]
  | succ a ih =>
    rw [substitute, ModuleExpressions.evaluate_add, ModuleExpressions.evaluate_scale, ih]
    rw [Fin.sum_univ_succ]

theorem substitute_linear (f : M →ₗ[R] N) (v : Nat → R)
    (source : Fin a → M) (target : Fin b → N) (images : Fin a → ModuleExpressions.Expression b)
    (h : ∀ i, f (source i) = ModuleExpressions.evaluate v target (images i)) (input : ModuleExpressions.Expression a) :
    f (ModuleExpressions.evaluate v source input) = ModuleExpressions.evaluate v target (substitute images input) := by
  rw [substitute_evaluate]
  simp only [ModuleExpressions.evaluate, map_sum, map_smul, h]

/-- Target relations are module relations, permitted to join distinct generators. -/
def Valid (images : Fin a → ModuleExpressions.Expression b) (relations : List (ModuleExpressions.Expression b))
    (input : ModuleExpressions.Expression a) (output : ModuleExpressions.Expression b) : Prop :=
  ∀ (R : Type) [CommRing R] [CharP R 2] (N : Type) [AddCommGroup N] [Module R N]
    (v : Nat → R) (target : Fin b → N),
    (∀ r ∈ relations, ModuleExpressions.evaluate v target r = 0) →
    ModuleExpressions.evaluate v target (substitute images input) = ModuleExpressions.evaluate v target output

def check (images : Fin a → ModuleExpressions.Expression b) (relations : List (ModuleExpressions.Expression b))
    (input : ModuleExpressions.Expression a) (output : ModuleExpressions.Expression b) (terms : List Term) : Bool :=
  ModuleExpressions.check relations (substitute images input) output terms

theorem check_sound (images : Fin a → ModuleExpressions.Expression b) (relations : List (ModuleExpressions.Expression b))
    (input : ModuleExpressions.Expression a) (output : ModuleExpressions.Expression b) (terms : List Term)
    (h : check images relations input output terms = true) : Valid images relations input output := by
  intro R _ _ N _ _ v target hr
  exact ModuleExpressions.check_sound_evaluate v target relations _ _ terms h hr

instance (images : Fin a → ModuleExpressions.Expression b) (relations : List (ModuleExpressions.Expression b))
    (input : ModuleExpressions.Expression a) (output : ModuleExpressions.Expression b) :
    LinProgramCertificates.CertificateVerifier (Valid images relations input output) where
  Cert := List Term
  check := check images relations input output
  sound := check_sound images relations input output
end ModuleToModuleCertificates
