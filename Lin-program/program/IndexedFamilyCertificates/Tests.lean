import IndexedFamilyCertificates.Import
import LinProgramCertificates.Tactic

namespace IndexedFamilyCertificates.Tests
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit

def actual : Indexed.Wire := indexed_event%
  "FiniteEventProducer/ThreeProduct/indexed-event3744.json"

def sourceStage (page : Nat) : Entry :=
  ⟨keyAt "S0" page actual.sourceDegree,
    (actual.finite.sourceStages[if page = 2 then 0 else 1]'(by split <;> decide)).wire⟩
def targetStage (page : Nat) : Entry :=
  ⟨keyAt "S0" page actual.targetDegree,
    (actual.finite.targetStages[if page = 2 then 0 else 1]'(by split <;> decide)).wire⟩
def finalEntry : Entry := ⟨keyAt "S0" 4 actual.sourceDegree, actual.finite.event⟩
def family : Family :=
  [finalEntry, sourceStage 2, sourceStage 3, targetStage 2, targetStage 3]

theorem actual_valid : Valid family "S0" actual := by lin_cert using ()
theorem actual_differential :
    DifferentialAt family (keyAt "S0" 4 actual.sourceDegree)
      actual.finite.source actual.finite.target := actual_valid.differential

example : check family "tmf" actual = false := by decide
example : check family "" actual = false := by decide
example : True := by
  fail_if_success have : Valid family "tmf" actual := by lin_cert using ()
  trivial

def shifted (d : Indexed.Degree) : Indexed.Degree := { d with t := d.t + 100 }
def shiftedLabel (l : Indexed.StageLabel) : Indexed.StageLabel :=
  { l with
    center := shifted l.center
    incoming := shifted l.incoming
    outgoing := shifted l.outgoing }
def shiftedEvent : Indexed.Wire :=
  { actual with
    sourceDegree := shifted actual.sourceDegree
    targetDegree := shifted actual.targetDegree
    sourceLabels := actual.sourceLabels.map shiftedLabel
    targetLabels := actual.targetLabels.map shiftedLabel }

example : Indexed.check shiftedEvent = true := by decide
example : check family "S0" shiftedEvent = false := by decide

/-- A different full differential with the same dimensions and selected
value has its own valid contraction. Binding must still reject it. -/
def alternateComparison : WireComparison :=
  { actual.finite.event with
    outgoing := [false, true, false, false, false, true]
    down := [false, false, true, false, false, true] }
def alternateEvent : Indexed.Wire :=
  { actual with finite := { actual.finite with event := alternateComparison } }

example : Indexed.check alternateEvent = true := by decide
example : alternateComparison.k = actual.finite.event.k ∧
    alternateComparison.m = actual.finite.event.m ∧
    alternateComparison.n = actual.finite.event.n ∧
    alternateComparison.h = actual.finite.event.h := by decide
example : check family "S0" alternateEvent = false := by decide
example : True := by
  fail_if_success have : Valid family "S0" alternateEvent := by lin_cert using ()
  trivial

def duplicateFamily : Family := family ++ [finalEntry]
def conflictingFamily : Family :=
  family ++ [⟨finalEntry.key, alternateComparison⟩]

example : lookup duplicateFamily finalEntry.key = some actual.finite.event := by decide
example : lookup conflictingFamily finalEntry.key = some actual.finite.event := by decide
example : check duplicateFamily "S0" actual = false := by decide
example : check conflictingFamily "S0" actual = false := by decide

def missingStageFamily : Family :=
  [finalEntry, sourceStage 2, targetStage 2, targetStage 3]
def truncatedIncoming : WireComparison :=
  { (sourceStage 3).wire with incoming := [] }
def truncatedFamily : Family :=
  [finalEntry, sourceStage 2, ⟨(sourceStage 3).key, truncatedIncoming⟩,
   targetStage 2, targetStage 3]

example : check missingStageFamily "S0" actual = false := by decide
example : check truncatedFamily "S0" actual = false := by decide
example : checkWire truncatedIncoming = false := by decide

/-- Change a previously all-zero incoming column, preserving dimensions.
The outgoing and selected representative alone cannot detect completeness. -/
def nonzeroIncoming : WireComparison :=
  { (sourceStage 3).wire with incoming := [true, false, false, false, false, false] }
def nonzeroIncomingFamily : Family :=
  [finalEntry, sourceStage 2, ⟨(sourceStage 3).key, nonzeroIncoming⟩,
   targetStage 2, targetStage 3]
def matchingInvalidEvent : Indexed.Wire :=
  { actual with
    finite := { actual.finite with
      sourceStages := [actual.finite.sourceStages[0],
        { actual.finite.sourceStages[1] with wire := nonzeroIncoming }] } }

example : nonzeroIncoming.incoming.length = (sourceStage 3).wire.incoming.length := by decide
example : check nonzeroIncomingFamily "S0" actual = false := by decide
example : Binding nonzeroIncomingFamily "S0" matchingInvalidEvent := by decide
example : Indexed.check matchingInvalidEvent = false := by decide
example : check nonzeroIncomingFamily "S0" matchingInvalidEvent = false := by decide

/-- This API checks the selected event's entries, not every unused family
entry. Whole-family coherence/realization remains a different contract. -/
def unusedInvalidFamily : Family :=
  family ++ [⟨⟨"unused", 0, 0, 0⟩, truncatedIncoming⟩]
theorem unrelated_entry_not_covered : Valid unusedInvalidFamily "S0" actual := by
  lin_cert using ()

def bound : BoundWire := ⟨1, "S0", actual⟩
example : bound.Valid family := by indexed_family_cert using ()
example : checkBound family { bound with version := 2 } = false := by decide
example : (diagnose family { bound with object := "tmf" }).map (·.message) =
    some "event: missing or different full comparison at tmf:18,144:d4" := by decide
example : (diagnose missingStageFamily bound).map (·.message) =
    some "sourceStages[1]: missing or different full comparison at S0:18,144:d3" := by decide
example : (diagnose conflictingFamily bound).map (·.message) =
    some "family.entries: duplicate object/page/degree key" := by decide

#eval do
  let encodeFamily (f : Family) := (Lean.toJson (FamilyEnvelope.mk 1 f)).compress
  match parseFamily (encodeFamily family) with
  | .error e => throw (IO.userError s!"valid family rejected: {e}")
  | .ok parsed =>
    match parseBound (Lean.toJson bound).compress with
    | .error e => throw (IO.userError s!"valid bound event rejected: {e}")
    | .ok event => unless checkBound parsed event do
        throw (IO.userError "parsed actual event did not recheck")
  for f in [duplicateFamily, conflictingFamily] do
    match parseFamily (encodeFamily f) with
    | .ok _ => throw (IO.userError "duplicate/conflicting family key imported")
    | .error _ => pure ()
  for text in ["{}", "{\"version\":1,\"version\":1}", "{\"entries\":null}"] do
    match parseFamily text with
    | .ok _ => throw (IO.userError "malformed family imported")
    | .error _ => pure ()
    match parseBound text with
    | .ok _ => throw (IO.userError "malformed bound event imported")
    | .error _ => pure ()
  for event in [{ bound with version := 2 }, { bound with object := "" }] do
    match parseBound (Lean.toJson event).compress with
    | .ok _ => throw (IO.userError "invalid bound envelope imported")
    | .error _ => pure ()
  IO.println "Indexed family: actual round-trip, full matrix binding, duplicate keys, malformed envelope and field diagnostics checked"

#print axioms actual_valid
#print axioms actual_differential
#print axioms unrelated_entry_not_covered
end IndexedFamilyCertificates.Tests
