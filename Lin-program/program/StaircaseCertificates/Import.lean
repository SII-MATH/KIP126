import StaircaseCertificates.Basic
import Lean

namespace StaircaseCertificates
open LinearCertificates

structure Wire where
  version : Nat
  object : String
  s : Nat
  t : Nat
  dimension : Nat
  basis : List Bool
  inverse : List Bool
  levels : List Nat
  unknown : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Wire.certificate (w : Wire) : BasisCertificate w.dimension :=
  ⟨fun i j => w.basis[i.val * w.dimension + j.val]!,
   fun i j => w.inverse[i.val * w.dimension + j.val]!⟩

def checkWire (w : Wire) : Bool :=
  decide (w.version = 1 ∧ w.basis.length = w.dimension * w.dimension ∧
    w.inverse.length = w.dimension * w.dimension ∧ w.levels.length = w.dimension ∧
    w.unknown.length = w.dimension) && checkBasis w.certificate

theorem checkWire_sound (w : Wire) (h : checkWire w = true) : IsBasis w.certificate := by
  simp only [checkWire, Bool.and_eq_true] at h
  exact checkBasis_sound w.certificate h.2

def decode (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or duplicate/unknown field"
  return w

elab "staircase_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match decode text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

end StaircaseCertificates
