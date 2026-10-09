import AggregateTargetInventory.EventAudit.Indexed

namespace AggregateTargetInventory.EventAudit.Indexed
open LinProgramCertificates

private def failure (location message : String) : VerificationFailure :=
  ⟨"indexed_event", location, message⟩

private def expectNat (path : String) (actual expected : Nat) : Option VerificationFailure :=
  if actual = expected then none
  else some (failure path s!"expected {expected}, received {actual}")

private def expectEquation (path expression : String) (left right : Nat) : Option VerificationFailure :=
  if left = right then none
  else some (failure path s!"{expression}: left side {left}, right side {right}")

private def labelDetails (name : String) (center : Degree)
    (labels : List StageLabel) : Option VerificationFailure := Id.run do
  for (l, i) in labels.zipIdx do
    let base := s!"{name}[{i}]"
    let page := i + 2
    let checks := [expectNat (base ++ ".page") l.page page,
      expectNat (base ++ ".center.s") l.center.s center.s,
      expectNat (base ++ ".center.t") l.center.t center.t,
      expectEquation (base ++ ".incoming.s") "incoming.s + page = center.s" (l.incoming.s + page) center.s,
      expectEquation (base ++ ".incoming.t") "incoming.t + page = center.t + 1" (l.incoming.t + page) (center.t + 1),
      expectEquation (base ++ ".outgoing.s") "outgoing.s = center.s + page" l.outgoing.s (center.s + page),
      expectEquation (base ++ ".outgoing.t") "outgoing.t + 1 = center.t + page" (l.outgoing.t + 1) (center.t + page)]
    for result in checks do
      if let some e := result then return some e
  return none

/-- Coordinate failures report both sides of the defining shifted equality. -/
def diagnoseDetails (w : Wire) : Option VerificationFailure := Id.run do
  if w.version != 1 then return some (failure "version" s!"expected 1, received {w.version}")
  if w.eventPage < 2 then return some (failure "eventPage" "expected page at least 2")
  let checks := [expectEquation "targetDegree.s" "targetDegree.s = sourceDegree.s + eventPage" w.targetDegree.s (w.sourceDegree.s + w.eventPage),
    expectEquation "targetDegree.t" "targetDegree.t + 1 = sourceDegree.t + eventPage" (w.targetDegree.t + 1) (w.sourceDegree.t + w.eventPage),
    expectNat "sourceLabels.length" w.sourceLabels.length (w.eventPage - 2),
    expectNat "targetLabels.length" w.targetLabels.length (w.eventPage - 2),
    expectNat "finite.sourceStages.length" w.finite.sourceStages.length w.sourceLabels.length,
    expectNat "finite.targetStages.length" w.finite.targetStages.length w.targetLabels.length,
    labelDetails "sourceLabels" w.sourceDegree w.sourceLabels,
    labelDetails "targetLabels" w.targetDegree w.targetLabels]
  for result in checks do
    if let some e := result then return some e
  if let some detail := Executable.diagnose w.finite then
    return some (failure "finite" detail)
  return none

/-- The proved checker decides acceptance even if a diagnostic is incomplete. -/
def diagnoseIndexed (w : Wire) : Option VerificationFailure :=
  if check w then none
  else some ((diagnoseDetails w).getD (failure "$" "indexed event checker rejected certificate"))

theorem diagnoseIndexed_none_iff (w : Wire) :
    diagnoseIndexed w = none ↔ check w = true := by
  unfold diagnoseIndexed
  split <;> simp_all

theorem diagnoseIndexed_sound (w : Wire) (h : diagnoseIndexed w = none) : w.Valid :=
  check_sound w ((diagnoseIndexed_none_iff w).mp h)

instance (w : Wire) : DiagnosticCertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w
  diagnose := fun _ => diagnoseIndexed w

def parseDiagnosed (text : String) : Except String Wire := do
  let w ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson (w : Wire)).compress != text then
    throw "$: noncanonical JSON or unknown/duplicate field"
  if let some e := diagnoseIndexed w then throw s!"{e.location}: {e.message}"
  return w

/-- Errors include the input path and the exact indexed field path. -/
elab "indexed_event_checked% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseDiagnosed text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

end AggregateTargetInventory.EventAudit.Indexed
