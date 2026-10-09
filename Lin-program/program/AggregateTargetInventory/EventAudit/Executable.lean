import PageTransitionCertificates.Trajectory

namespace AggregateTargetInventory.EventAudit.Executable
open LinearCertificates PageTransitionCertificates

/-- The final vector is an explicit quotient coordinate, including its dimension. -/
def EndsAt (stage : Stage) (final : List Bool) : Prop :=
  stage.wire.h = final.length ∧
  ∀ i : Fin stage.wire.h, eval stage.wire.comparison.projection stage.vector i =
    final[i.val]?.getD false
instance (stage : Stage) (final : List Bool) : Decidable (EndsAt stage final) :=
  inferInstanceAs (Decidable (_ ∧ _))

def PathValid : List Stage → List Bool → Prop
  | [], _ => True
  | [s], final => s.Valid ∧ EndsAt s final
  | a :: b :: rest, final => a.Valid ∧ Linked a b ∧ PathValid (b :: rest) final

def checkPath : List Stage → List Bool → Bool
  | [], _ => true
  | [s], final => checkStage s && decide (EndsAt s final)
  | a :: b :: rest, final => checkStage a && decide (Linked a b) && checkPath (b :: rest) final

theorem checkPath_sound (stages : List Stage) (final : List Bool)
    (h : checkPath stages final = true) : PathValid stages final := by
  induction stages with
  | nil => trivial
  | cons a rest ih =>
    cases rest with
    | nil =>
      simp only [checkPath, Bool.and_eq_true, decide_eq_true_eq] at h
      exact ⟨checkStage_sound a h.1,h.2⟩
    | cons b rest =>
      simp only [checkPath, Bool.and_eq_true, decide_eq_true_eq] at h
      exact ⟨checkStage_sound a h.1.1,h.1.2,ih h.2⟩

def firstVector (stages : List Stage) (final : List Bool) : List Bool :=
  match stages with | [] => final | s :: _ => s.representative

structure Wire where
  version : Nat
  rawSource : List Bool
  rawTarget : List Bool
  sourceStages : List Stage
  targetStages : List Stage
  event : WireComparison
  source : List Bool
  target : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Wire.sourceVector (w : Wire) : Vec w.event.m := fun i => w.source[i.val]?.getD false
def Wire.targetVector (w : Wire) : Vec w.event.k := fun i => w.target[i.val]?.getD false

def Shape (w : Wire) : Prop := w.version = 1 ∧ w.source.length = w.event.m ∧
  w.target.length = w.event.k ∧ w.rawSource = firstVector w.sourceStages w.source ∧
  w.rawTarget = firstVector w.targetStages w.target
instance (w : Wire) : Decidable (Shape w) := inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _))

def Equation (w : Wire) : Prop := ∀ i,
  eval (matrixOf w.event.k w.event.m w.event.outgoing) w.sourceVector i = w.targetVector i
instance (w : Wire) : Decidable (Equation w) := inferInstanceAs (Decidable (∀ _, _))

def Wire.Valid (w : Wire) : Prop := Shape w ∧ w.event.Valid ∧
  PathValid w.sourceStages w.source ∧ PathValid w.targetStages w.target ∧
  eval (matrixOf w.event.k w.event.m w.event.outgoing) w.sourceVector = w.targetVector ∧
  w.targetVector ≠ zero

def check (w : Wire) : Bool := decide (Shape w) && checkWire w.event &&
  checkPath w.sourceStages w.source && checkPath w.targetStages w.target &&
  decide (Equation w) && decide (∃ i : Fin w.event.k, w.targetVector i = true)

theorem check_sound (w : Wire) (h : check w = true) : w.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  refine ⟨h.1.1.1.1.1,checkWire_sound _ h.1.1.1.1.2,
    checkPath_sound _ _ h.1.1.1.2,checkPath_sound _ _ h.1.1.2,funext h.1.2,?_⟩
  obtain ⟨i,hi⟩ := h.2
  intro hz
  have hzi := congrFun hz i
  rw [hi] at hzi
  contradiction

theorem Wire.Valid.source_not_kernel {w : Wire} (h : w.Valid) :
    ¬ InKernel (matrixOf w.event.k w.event.m w.event.outgoing) w.sourceVector := by
  intro hk
  exact h.2.2.2.2.2 (h.2.2.2.2.1.symm.trans hk)

theorem Wire.Valid.source_nonzero {w : Wire} (h : w.Valid) : w.sourceVector ≠ zero := by
  intro hz
  apply h.source_not_kernel
  rw [hz]
  exact eval_zero _

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w

def diagnosePath (name : String) (stages : List Stage) (final : List Bool) : Option String := Id.run do
  for (s,j) in stages.zipIdx do
    if !checkStage s then return some s!"{name}[{j}]: comparison, dimensions, cycle or nonboundary failed"
    if h : j + 1 < stages.length then
      if !decide (Linked s stages[j+1]) then return some s!"{name}[{j}]: next representative mismatch"
    else if !decide (EndsAt s final) then return some s!"{name}[{j}]: final projection mismatch"
  return none

def diagnose (w : Wire) : Option String :=
  if !decide (Shape w) then some "version, event dimensions or raw endpoint mismatch"
  else if !checkWire w.event then some "event: complete comparison failed"
  else match diagnosePath "sourceStages" w.sourceStages w.source with
  | some e => some e
  | none => match diagnosePath "targetStages" w.targetStages w.target with
    | some e => some e
    | none => if !decide (Equation w) then some "event: differential value mismatch"
      else if !decide (∃ i : Fin w.event.k, w.targetVector i = true) then some "event: zero target"
      else none

def parse (text : String) : Except String Wire := do
  let w ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson (w : Wire)).compress != text then
    throw "noncanonical JSON or unknown/duplicate field"
  if !decide (Shape w) then throw "version, event dimensions or raw endpoint mismatch"
  return w

elab "finite_event% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

end AggregateTargetInventory.EventAudit.Executable
