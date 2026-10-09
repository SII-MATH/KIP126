import NamedElementCertificates.ModuleImport
import Mathlib.Algebra.BigOperators.Fin

namespace Fact762CsigmasqD5.D2
open NamedElementCertificates
open ModuleExpressions

structure Wire where
  coefficient : Polynomial
  coefficientDifferential : Polynomial
  top : Bool
  reduction : ModuleExpressions.Wire
  deriving Lean.FromJson, Lean.ToJson, Lean.ToExpr

def Wire.expanded (w : Wire) : List Polynomial :=
  if w.top then [multiply w.coefficient [[3,3]],w.coefficientDifferential]
  else [w.coefficientDifferential,[]]

def check (w : Wire) : Bool :=
  decide (w.reduction.rank = 2 ∧ w.reduction.input = w.expanded) && w.reduction.valid &&
  ModuleExpressions.check (w.reduction.relations.map (toExpression 2))
    (toExpression 2 w.reduction.input) (toExpression 2 w.reduction.output) w.reduction.terms

def Wire.Valid (w : Wire) : Prop :=
  w.reduction.rank = 2 ∧ w.reduction.input = w.expanded ∧ w.reduction.valid = true ∧
  ModuleExpressions.check (w.reduction.relations.map (toExpression 2))
    (toExpression 2 w.reduction.input) (toExpression 2 w.reduction.output) w.reduction.terms = true

theorem check_sound (w : Wire) (h : check w = true) : w.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1,h.1.1.2,h.1.2,h.2⟩

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w

variable {R M : Type} [CommRing R] [CharP R 2] [AddCommGroup M] [Module R M]

/-- Only the finite d2 action is interpreted. There is no permanence input. -/
theorem differential_value (w : Wire) (hw : w.Valid) (v : Nat → R) (g : Fin 2 → M)
    (dR : R →+ R) (dM : M →+ M)
    (leibniz : ∀ a x, dM (a • x) = dR a • x + a • dM x)
    (coefficient : dR (NamedElementCertificates.evaluate v w.coefficient) =
      NamedElementCertificates.evaluate v w.coefficientDifferential)
    (bottom : dM (g 0) = 0)
    (top : dM (g 1) = NamedElementCertificates.evaluate v [[3,3]] • g 0)
    (relations : ∀ rel ∈ w.reduction.relations,
      ModuleExpressions.evaluate v g (toExpression 2 rel) = 0) :
    dM (NamedElementCertificates.evaluate v w.coefficient • g (if w.top then 1 else 0)) =
      ModuleExpressions.evaluate v g (toExpression 2 w.reduction.output) := by
  have hc : ModuleExpressions.check (w.reduction.relations.map (toExpression 2))
      (toExpression 2 w.reduction.input) (toExpression 2 w.reduction.output)
      w.reduction.terms = true := hw.2.2.2
  have equality := ModuleExpressions.check_sound_evaluate v g _ _ _ _ hc (by
    intro rel hr
    obtain ⟨raw,hm,he⟩ := List.mem_map.mp hr
    rw [← he]
    exact relations raw hm)
  rw [hw.2.1] at equality
  rw [← equality, leibniz, coefficient]
  cases ht : w.top <;>
    simp [Wire.expanded,ht,ModuleExpressions.evaluate,toExpression,
      Fin.sum_univ_succ,bottom,top,evaluate_multiply,mul_smul,add_comm]
  simp [NamedElementCertificates.evaluate]

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/duplicate/unknown d2 field"
  if !check w then throw "d2 coefficient expansion or module reduction failed"
  return w

open Lean Elab Term
elab "csigmasq_d2% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return toExpr w

#print axioms check_sound
#print axioms differential_value
end Fact762CsigmasqD5.D2
