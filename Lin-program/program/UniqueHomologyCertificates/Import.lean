import UniqueHomologyCertificates.Basic

namespace UniqueHomologyCertificates
open LinearCertificates PageTransitionCertificates

structure Wire where
  version : Nat
  comparison : WireComparison
  named : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Wire.Valid (w : Wire) : Prop :=
  w.version = 1 ∧ IsUniqueNonzeroClass
    (matrixOf w.comparison.k w.comparison.m w.comparison.outgoing)
    (matrixOf w.comparison.m w.comparison.n w.comparison.incoming)
    (Stage.vector ⟨w.comparison, w.named⟩)

def checkWire (w : Wire) : Bool := decide (w.version = 1) && check w.comparison w.named

theorem checkWire_sound (w : Wire) (h : checkWire w = true) : w.Valid := by
  simp only [checkWire, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1, sound w.comparison w.named h.2⟩

def diagnose (w : Wire) : String :=
  if w.version != 1 then "version: expected 1"
  else if !PageTransitionCertificates.checkWire w.comparison then
    "comparison: " ++ (PageTransitionCertificates.diagnose w.comparison).getD "rejected"
  else if w.comparison.h != 1 then "comparison.h: entire homology must have dimension 1"
  else if w.named.length != w.comparison.m then "named: vector dimension mismatch"
  else "named: expected a cycle representing a nonzero homology class"

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if !checkWire w then throw (diagnose w)
  return w

open Lean Elab Term
elab "unique_homology% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return toExpr w

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkWire w
  sound := fun _ => checkWire_sound w

def checkBatch (wires : List Wire) : Bool := wires.all checkWire

theorem checkBatch_sound (wires : List Wire) (h : checkBatch wires = true) :
    ∀ w ∈ wires, w.Valid := by
  intro w hw
  exact checkWire_sound w ((List.all_eq_true.mp h) w hw)

#print axioms checkWire_sound
#print axioms checkBatch_sound
end UniqueHomologyCertificates
