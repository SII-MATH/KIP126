import AggregateTargetInventory.EventAudit.IndexedDiagnostics
import LinProgramCertificates.Tactic

namespace AggregateTargetInventory.EventAudit.Indexed
private def fixture : Wire := indexed_event%
  "AggregateTargetInventory/EventAudit/indexed-batch/event2492.json"

private def corruptSecond (labels : List StageLabel) : List StageLabel :=
  labels.zipIdx.map fun (l, i) =>
    if i = 1 then { l with incoming := { l.incoming with t := l.incoming.t + 1 } } else l

private def badLabel : Wire := { fixture with sourceLabels := corruptSecond fixture.sourceLabels }
private def badCount : Wire := { fixture with sourceLabels := [] }
private def badStages : Wire := { fixture with finite := { fixture.finite with targetStages := [] } }
private def badTarget : Wire := { fixture with targetDegree := { fixture.targetDegree with s := 0 } }
private def location (w : Wire) : Option String := (diagnoseIndexed w).map (·.location)

example : location badLabel = some "sourceLabels[1].incoming.t" := by decide
example : location badCount = some "sourceLabels.length" := by decide
example : location badStages = some "finite.targetStages.length" := by decide
example : location badTarget = some "targetDegree.s" := by decide
example : check badLabel = false := by decide
example : check badCount = false := by decide
example : check badStages = false := by decide
example : check badTarget = false := by decide

#eval do
  match parseDiagnosed (Lean.toJson fixture).compress with
  | .ok _ => pure ()
  | .error e => throw (IO.userError s!"valid fixture rejected: {e}")
  for w in [badLabel, badCount, badStages, badTarget] do
    let text := (Lean.toJson w).compress
    match parseDiagnosed text with
    | .ok _ => throw (IO.userError "corrupt certificate unexpectedly imported")
    | .error e => IO.println e

example (w : Wire) (h : check w = true) : w.Valid :=
  (inferInstance : LinProgramCertificates.DiagnosticCertificateVerifier w.Valid).sound () h

#print axioms diagnoseIndexed_none_iff
#print axioms diagnoseIndexed_sound
end AggregateTargetInventory.EventAudit.Indexed
