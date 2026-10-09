import IndexedFamilyCertificates.Basic

namespace IndexedFamilyCertificates
open LinProgramCertificates
open AggregateTargetInventory.EventAudit

structure FamilyEnvelope where
  version : Nat
  entries : Family
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

structure BoundWire where
  version : Nat
  object : String
  event : Indexed.Wire
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def BoundWire.Valid (family : Family) (w : BoundWire) : Prop :=
  w.version = 1 ∧ IndexedFamilyCertificates.Valid family w.object w.event

def checkBound (family : Family) (w : BoundWire) : Bool :=
  decide (w.version = 1) && check family w.object w.event

theorem checkBound_sound (family : Family) (w : BoundWire)
    (h : checkBound family w = true) : w.Valid family := by
  simp only [checkBound, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1, check_sound family w.object w.event h.2⟩

instance (family : Family) (w : BoundWire) : CertificateVerifier (w.Valid family) where
  Cert := Unit
  check := fun _ => checkBound family w
  sound := fun _ => checkBound_sound family w

private def bindingDetails (family : Family) (w : BoundWire) : Option String := Id.run do
  if w.version != 1 then return some "version: expected 1"
  if w.object == "" then return some "object: empty object key"
  if !decide (UniqueKeys family) then return some "family.entries: duplicate object/page/degree key"
  let event := w.event
  let k := keyAt w.object event.eventPage event.sourceDegree
  if lookup family k != some event.finite.event then
    return some s!"event: missing or different full comparison at {w.object}:{k.s},{k.t}:d{k.page}"
  for (label, center, stages) in
      [("sourceStages", event.sourceDegree, event.finite.sourceStages),
       ("targetStages", event.targetDegree, event.finite.targetStages)] do
    for (stage, i) in stages.zipIdx do
      let k := keyAt w.object (i + 2) center
      if lookup family k != some stage.wire then
        return some s!"{label}[{i}]: missing or different full comparison at {w.object}:{k.s},{k.t}:d{k.page}"
  return none

def diagnose (family : Family) (w : BoundWire) : Option VerificationFailure :=
  if checkBound family w then none
  else match bindingDetails family w with
  | some message => some ⟨"indexed_family", "$", message⟩
  | none => some ((Indexed.diagnoseIndexed w.event).getD
      ⟨"indexed_family", "$", "family event checker rejected certificate"⟩)

theorem diagnose_none_iff (family : Family) (w : BoundWire) :
    diagnose family w = none ↔ checkBound family w = true := by
  unfold diagnose
  split
  · simp_all
  · split <;> simp_all

def parseFamily (text : String) : Except String Family := do
  let input : FamilyEnvelope ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson input).compress != text then
    throw "family: noncanonical JSON or unknown/duplicate field"
  if input.version != 1 then throw "family.version: expected 1"
  if !decide (UniqueKeys input.entries) then throw "family.entries: duplicate key"
  return input.entries

def parseBound (text : String) : Except String BoundWire := do
  let input : BoundWire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson input).compress != text then
    throw "event: noncanonical JSON or unknown/duplicate field"
  if input.version != 1 then throw "event.version: expected 1"
  if input.object == "" then throw "event.object: empty object key"
  return input

elab "family_input% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseFamily text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok family => return Lean.toExpr family

elab "bound_event% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseBound text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok event => return Lean.toExpr event

syntax "indexed_family_cert" " using " term : tactic
macro_rules
  | `(tactic| indexed_family_cert using $c:term) => `(tactic| lin_cert using $c)

#print axioms checkBound_sound
#print axioms Valid.differential
#print axioms diagnose_none_iff
end IndexedFamilyCertificates
