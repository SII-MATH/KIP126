import PermanentCycleCertificates.Finite
import PageTransitionCertificates.TrajectoryImport

namespace PermanentCycleCertificates
open PageTransitionCertificates

/-- This wire contains finite data only. Meaning and tail proofs are separate. -/
structure PrefixWire where
  schema : String
  version : Nat
  firstPage : Nat
  stages : List Stage
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def PrefixWire.Valid (w : PrefixWire) : Prop :=
  w.schema = "lin.permanent-prefix" ∧ w.version = 1 ∧ w.firstPage = 2 ∧
  checkPrefix w.stages = true ∧ TrajectoryValid w.stages

def checkPrefixWire (w : PrefixWire) : Bool :=
  decide (w.schema = "lin.permanent-prefix" ∧ w.version = 1 ∧ w.firstPage = 2) &&
  checkPrefix w.stages && checkTrajectory w.stages

theorem checkPrefixWire_sound (w : PrefixWire) (h : checkPrefixWire w = true) : w.Valid := by
  simp only [checkPrefixWire, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1, h.1.1.2.1, h.1.1.2.2, h.1.2, checkTrajectory_sound _ h.2⟩

def diagnosePrefixWire (w : PrefixWire) : String := Id.run do
  if w.schema != "lin.permanent-prefix" then return "schema: expected lin.permanent-prefix"
  if w.version != 1 then return "version: expected 1"
  if w.firstPage != 2 then return "firstPage: permanence prefixes must start at page 2"
  if let some error := diagnosePrefix w.stages then return error
  for (stage, i) in w.stages.zipIdx do
    if let some next := w.stages[i+1]? then
      if !decide (Linked stage next) then
        return s!"prefix[{i}] (page {i+2}): next representative differs from homology coordinates"
  return "finite prefix checker rejected input"

def parsePrefix (text : String) : Except String PrefixWire :=
  match Lean.Json.parse text with
  | .error error => .error error
  | .ok json => match (Lean.fromJson? json : Except String PrefixWire) with
    | .error error => .error error
    | .ok w =>
      if (Lean.toJson w).compress != text then .error "noncanonical JSON or unknown/duplicate field"
      else if checkPrefixWire w then .ok w else .error (diagnosePrefixWire w)

theorem parsePrefix_sound (text : String) (w : PrefixWire) (h : parsePrefix text = .ok w) :
    w.Valid := by
  unfold parsePrefix at h
  split at h
  · cases h
  · split at h
    · cases h
    · split at h
      · cases h
      · split at h
        · cases h
          apply checkPrefixWire_sound
          assumption
        · cases h

def assemble (s : System) (x : s.Page 0) (wire : PrefixWire)
    (meaning : PrefixMeaning s x wire.stages) (tail : TailVanishing s wire.stages.length) :
    Certificate s x := ⟨wire.stages, meaning, tail⟩

theorem imported_permanent (s : System) (x : s.Page 0) (wire : PrefixWire)
    (valid : wire.Valid) (meaning : PrefixMeaning s x wire.stages)
    (tail : TailVanishing s wire.stages.length) : s.Permanent x :=
  checkPermanent_sound s x wire.stages meaning tail valid.2.2.2.1

open Lean Elab Term
elab "permanent_prefix% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parsePrefix text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return toExpr w

#print axioms checkPrefixWire_sound
#print axioms parsePrefix_sound
#print axioms imported_permanent
end PermanentCycleCertificates
