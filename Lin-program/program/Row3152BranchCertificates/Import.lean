import Row3152BranchCertificates.Generic
import AggregateTargetInventory.EventAudit.Executable
import AggregateTargetInventory.EventAudit.Indexed
import IndexedFamilyCertificates.Basic

namespace Row3152BranchCertificates
open LinearCertificates PageTransitionCertificates AggregateTargetInventory.EventAudit

deriving instance DecidableEq for Stage

/-- The event carries a whole outgoing matrix and two complete predecessor
paths. It deliberately makes no incoming-source dimension assertion. -/
structure PathEvent where
  version : Nat
  branch : Bool
  eventPage : Nat
  sourceDegree : Indexed.Degree
  targetDegree : Indexed.Degree
  sourceLabels : List Indexed.StageLabel
  targetLabels : List Indexed.StageLabel
  rawSource : List Bool
  rawTarget : List Bool
  sourceStages : List Stage
  targetStages : List Stage
  source : List Bool
  target : List Bool
  outgoing : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def BranchMatches (w : PathEvent) : Prop :=
  match w.sourceStages[2]? with
  | none => False
  | some stage => stage.wire.m = 2 ∧ stage.wire.k = 1 ∧ stage.wire.n = 2 ∧ stage.wire.h = 1 ∧
    stage.wire.incoming = [w.branch,true,false,false] ∧ stage.wire.outgoing = [false,false]

instance (w : PathEvent) : Decidable (BranchMatches w) := by
  unfold BranchMatches
  cases w.sourceStages[2]? <;> infer_instance

def Shape (w : PathEvent) : Prop :=
  w.version = 1 ∧ w.eventPage = 5 ∧ w.sourceDegree = ⟨15,140⟩ ∧
  w.targetDegree = ⟨20,144⟩ ∧ w.sourceStages.length = 3 ∧ w.targetStages.length = 3 ∧
  w.source.length = 1 ∧ w.target.length = 1 ∧ w.outgoing.length = 1 ∧
  w.rawSource = Executable.firstVector w.sourceStages w.source ∧
  w.rawTarget = Executable.firstVector w.targetStages w.target ∧ BranchMatches w ∧
  w.rawSource = [false,false,true,false,false] ∧ w.rawTarget = [true,false] ∧
  w.sourceLabels.length = 3 ∧ w.targetLabels.length = 3 ∧
  Indexed.LabelsValid w.sourceDegree w.sourceLabels ∧ Indexed.LabelsValid w.targetDegree w.targetLabels

instance (w : PathEvent) : Decidable (Shape w) := inferInstanceAs (Decidable (_ ∧ _))

def PathEvent.Valid (w : PathEvent) : Prop :=
  Shape w ∧ Executable.PathValid w.sourceStages w.source ∧
  Executable.PathValid w.targetStages w.target ∧
  eval (matrixOf 1 1 w.outgoing) (fun i => w.source[i.val]?.getD false) =
    (fun i => w.target[i.val]?.getD false) ∧
  (fun i : Fin 1 => w.target[i.val]?.getD false) ≠ zero

def check (w : PathEvent) : Bool :=
  decide (Shape w) && Executable.checkPath w.sourceStages w.source &&
  Executable.checkPath w.targetStages w.target &&
  decide (eval (matrixOf 1 1 w.outgoing) (fun i => w.source[i.val]?.getD false) =
    (fun i => w.target[i.val]?.getD false)) &&
  decide (∃ i : Fin 1, w.target[i.val]?.getD false = true)

theorem check_sound (w : PathEvent) (h : check w = true) : w.Valid := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq] at h
  refine ⟨h.1.1.1.1,Executable.checkPath_sound _ _ h.1.1.1.2,
    Executable.checkPath_sound _ _ h.1.1.2,h.1.2,?_⟩
  obtain ⟨i,hi⟩ := h.2
  intro hz
  have bad := congrFun hz i
  rw [hi] at bad
  contradiction

instance (w : PathEvent) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w

def diagnose (w : PathEvent) : Option String :=
  if !decide (Shape w) then some "event: fixed degree/page, dimensions, raw endpoint or stage count mismatch"
  else match Executable.diagnosePath "sourceStages" w.sourceStages w.source with
  | some e => some e
  | none => match Executable.diagnosePath "targetStages" w.targetStages w.target with
    | some e => some e
    | none => if check w then none else some "event.outgoing: value mismatch or zero target"

instance (w : PathEvent) : LinProgramCertificates.DiagnosticCertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w
  diagnose := fun _ => (diagnose w).map fun message => ⟨"row3152","path",message⟩

/-- The caller supplies all input matrices, raw endpoints and the final
input/output vectors independently of the checking certificate. -/
structure Input where
  branch : Bool
  rawSource : List Bool
  rawTarget : List Bool
  sourceStages : List Stage
  targetStages : List Stage
  outgoing : List Bool

def PathEvent.input (w : PathEvent) : Input :=
  ⟨w.branch,w.rawSource,w.rawTarget,w.sourceStages,w.targetStages,w.outgoing⟩

def Matches (input : Input) (source target : List Bool) (w : PathEvent) : Prop :=
  w.branch = input.branch ∧ w.rawSource = input.rawSource ∧ w.rawTarget = input.rawTarget ∧
  w.sourceStages = input.sourceStages ∧ w.targetStages = input.targetStages ∧
  w.outgoing = input.outgoing ∧ w.source = source ∧ w.target = target

instance (input : Input) (source target : List Bool) (w : PathEvent) :
    Decidable (Matches input source target w) := inferInstanceAs (Decidable (_ ∧ _))

def ResultValid (input : Input) (source target : List Bool) : Prop :=
  input.rawSource = Executable.firstVector input.sourceStages source ∧
  input.rawTarget = Executable.firstVector input.targetStages target ∧
  Executable.PathValid input.sourceStages source ∧ Executable.PathValid input.targetStages target ∧
  eval (matrixOf 1 1 input.outgoing) (fun i => source[i.val]?.getD false) =
    (fun i => target[i.val]?.getD false) ∧
  (fun i : Fin 1 => target[i.val]?.getD false) ≠ zero

def checkResult (input : Input) (source target : List Bool) (w : PathEvent) : Bool :=
  check w && decide (Matches input source target w)

theorem checkResult_sound (input : Input) (source target : List Bool) (w : PathEvent)
    (h : checkResult input source target w = true) : ResultValid input source target := by
  simp only [checkResult,Bool.and_eq_true,decide_eq_true_eq] at h
  have valid := check_sound w h.1
  obtain ⟨_,rs,rt,ss,ts,om,sv,tv⟩ := h.2
  obtain ⟨shape,sourcePath,targetPath,value,nonzero⟩ := valid
  obtain ⟨_,_,_,_,_,_,_,_,_,rawSource,rawTarget,_⟩ := shape
  refine ⟨?_,?_,?_,?_,?_,?_⟩
  · simpa only [rs,ss,sv] using rawSource
  · simpa only [rt,ts,tv] using rawTarget
  · simpa only [ss,sv] using sourcePath
  · simpa only [ts,tv] using targetPath
  · simpa only [om,sv,tv] using value
  · simpa only [tv] using nonzero

def diagnoseResult (input : Input) (source target : List Bool) (w : PathEvent) :
    Option LinProgramCertificates.VerificationFailure :=
  if checkResult input source target w then none
  else if w.source != source then some ⟨"row3152","result.source","input vector differs from goal"⟩
  else if w.target != target then some ⟨"row3152","result.target","output vector differs from goal"⟩
  else if !decide (Matches input source target w) then
    some ⟨"row3152","result.input","raw endpoint, branch or full stage matrix differs from goal"⟩
  else some ⟨"row3152","path",(diagnose w).getD "path rejected"⟩

instance (input : Input) (source target : List Bool) :
    LinProgramCertificates.DiagnosticCertificateVerifier (ResultValid input source target) where
  Cert := PathEvent
  check := checkResult input source target
  sound := checkResult_sound input source target
  diagnose := diagnoseResult input source target

syntax "row3152_cert" " using " term : tactic
macro_rules
  | `(tactic| row3152_cert using $certificate:term) =>
    `(tactic| lin_cert_diagnose using $certificate)

def parse (text : String) : Except String PathEvent := do
  let w : PathEvent ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical, unknown or duplicate field"
  if !decide (Shape w) then throw "fixed degree/page, dimensions or endpoint shape"
  return w

elab "row3152_path% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

#print axioms check_sound
#print axioms checkResult_sound
end Row3152BranchCertificates
