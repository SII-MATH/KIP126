import OutgoingCycleCertificates.Basic
import PageTransitionCertificates.TrajectoryImport

namespace OutgoingCycleCertificates
open PageTransitionCertificates PermanentCycleCertificates

structure Wire where
  schema : String
  version : Nat
  firstPage : Nat
  stages : List Stage
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def linked : List Stage → Bool
  | [] => true
  | [_] => true
  | a :: b :: rest => decide (Linked a b) && linked (b :: rest)

def Wire.Valid (w : Wire) : Prop :=
  w.schema = "lin.outgoing-cycle-prefix" ∧ w.version = 1 ∧ w.firstPage = 2 ∧
  checkPrefix w.stages = true ∧ linked w.stages = true

def checkWire (w : Wire) : Bool :=
  decide (w.schema = "lin.outgoing-cycle-prefix" ∧ w.version = 1 ∧ w.firstPage = 2) &&
  checkPrefix w.stages && linked w.stages

theorem checkWire_sound (w : Wire) (h : checkWire w = true) : w.Valid := by
  simpa only [checkWire, Bool.and_eq_true, decide_eq_true_eq, Wire.Valid, and_assoc] using h

def diagnoseWire (w : Wire) : String := Id.run do
  if w.schema != "lin.outgoing-cycle-prefix" then return "schema: expected lin.outgoing-cycle-prefix"
  if w.version != 1 then return "version: expected 1"
  if w.firstPage != 2 then return "firstPage: expected 2"
  if let some error := diagnose w.stages then return error
  for (stage, i) in w.stages.zipIdx do
    if let some next := w.stages[i+1]? then
      if !decide (Linked stage next) then return s!"prefix[{i}]: next representative mismatch"
  return "outgoing cycle prefix rejected"

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if !checkWire w then throw (diagnoseWire w)
  return w

def assemble (s : System) (x : s.Page 0) (w : Wire)
    (meaning : PrefixMeaning s x w.stages) (tail : OutgoingTail s w.stages.length) :
    Certificate s x := ⟨w.stages, meaning, tail⟩

theorem imported_cycle (s : System) (x : s.Page 0) (w : Wire) (valid : w.Valid)
    (meaning : PrefixMeaning s x w.stages) (tail : OutgoingTail s w.stages.length) :
    AlwaysCycle s x := check_sound s x w.stages meaning tail valid.2.2.2.1

def checkBatch (wires : List Wire) : Bool := wires.all checkWire

theorem checkBatch_sound (wires : List Wire) (h : checkBatch wires = true) :
    ∀ w ∈ wires, w.Valid := by
  intro w hw
  exact checkWire_sound w ((List.all_eq_true.mp h) w hw)

open Lean Elab Term
elab "outgoing_prefix% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error error => throwError "{path.getString}: {error}"
  | .ok w => return toExpr w

#print axioms checkWire_sound
#print axioms imported_cycle
#print axioms checkBatch_sound
end OutgoingCycleCertificates
