import ResolutionCertificates.Basic
import Lean.Data.Json

namespace ResolutionCertificates
open LinearCertificates

structure WireContraction where
  version : Nat
  k : Nat
  m : Nat
  n : Nat
  outgoing : List Bool
  incoming : List Bool
  up : List Bool
  down : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def matrixOf (rows cols : Nat) (bits : List Bool) : Matrix rows cols :=
  fun i j => bits[i.val * cols + j.val]?.getD false

def WireContraction.contraction (w : WireContraction) : Contraction w.k w.m w.n :=
  ⟨matrixOf w.n w.m w.up, matrixOf w.m w.k w.down⟩

def WireContraction.Valid (w : WireContraction) : Prop :=
  ExactAt (matrixOf w.k w.m w.outgoing) (matrixOf w.m w.n w.incoming)

def checkWire (w : WireContraction) : Bool :=
  decide (w.version = 1 ∧ w.outgoing.length = w.k * w.m ∧
    w.incoming.length = w.m * w.n ∧ w.up.length = w.n * w.m ∧
    w.down.length = w.m * w.k) &&
  checkContraction (matrixOf w.k w.m w.outgoing)
    (matrixOf w.m w.n w.incoming) w.contraction

theorem checkWire_sound (w : WireContraction) (h : checkWire w = true) : w.Valid := by
  simp only [checkWire, Bool.and_eq_true] at h
  exact checkContraction_sound _ _ _ h.2

instance (w : WireContraction) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkWire w
  sound := fun _ => checkWire_sound w

def parse (text : String) : Except String WireContraction := do
  let w : WireContraction ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if w.version != 1 then throw "version: expected 1"
  if w.outgoing.length != w.k * w.m then throw "outgoing: incorrect matrix size"
  if w.incoming.length != w.m * w.n then throw "incoming: incorrect matrix size"
  if w.up.length != w.n * w.m then throw "up: incorrect matrix size"
  if w.down.length != w.m * w.k then throw "down: incorrect matrix size"
  return w

def diagnose (w : WireContraction) : List String := Id.run do
  let outgoing := matrixOf w.k w.m w.outgoing
  let incoming := matrixOf w.m w.n w.incoming
  let c := w.contraction
  let mut errors := []
  for i in List.finRange w.k do
    for j in List.finRange w.n do
      if compose outgoing incoming i j then
        errors := errors ++ [s!"complex identity failed at ({i.val},{j.val})"]
  for i in List.finRange w.m do
    for j in List.finRange w.m do
      if matrixAdd (compose incoming c.up) (compose c.down outgoing) i j !=
          identityMatrix w.m i j then
        errors := errors ++ [s!"contraction identity failed at ({i.val},{j.val})"]
  return errors

open Lean Elab Term
elab "resolution_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return toExpr w

end ResolutionCertificates
