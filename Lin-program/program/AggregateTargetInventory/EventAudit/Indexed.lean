import AggregateTargetInventory.EventAudit.Executable
namespace AggregateTargetInventory.EventAudit.Indexed
open PageTransitionCertificates

structure Degree where
  s : Nat
  t : Nat
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr, DecidableEq
structure StageLabel where
  page : Nat
  center : Degree
  incoming : Degree
  outgoing : Degree
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr
structure Wire where
  version : Nat
  sourceDegree : Degree
  targetDegree : Degree
  eventPage : Nat
  sourceLabels : List StageLabel
  targetLabels : List StageLabel
  finite : Executable.Wire
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def LabelValid (center : Degree) (page : Nat) (l : StageLabel) : Prop :=
  l.page = page ∧ l.center = center ∧
  l.incoming.s + page = center.s ∧ l.incoming.t + page = center.t + 1 ∧
  l.outgoing.s = center.s + page ∧ l.outgoing.t + 1 = center.t + page
instance (c : Degree) (p : Nat) (l : StageLabel) : Decidable (LabelValid c p l) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _))
def LabelsValid (c : Degree) (ls : List StageLabel) : Prop :=
  ∀ i : Fin ls.length, LabelValid c (i.val + 2) ls[i.val]
instance (c : Degree) (ls : List StageLabel) : Decidable (LabelsValid c ls) :=
  inferInstanceAs (Decidable (∀ _, _))
def IndexedShape (w : Wire) : Prop := w.version = 1 ∧ 2 ≤ w.eventPage ∧
  w.targetDegree.s = w.sourceDegree.s + w.eventPage ∧
  w.targetDegree.t + 1 = w.sourceDegree.t + w.eventPage ∧
  w.sourceLabels.length + 2 = w.eventPage ∧ w.targetLabels.length + 2 = w.eventPage ∧
  w.finite.sourceStages.length = w.sourceLabels.length ∧
  w.finite.targetStages.length = w.targetLabels.length ∧
  LabelsValid w.sourceDegree w.sourceLabels ∧ LabelsValid w.targetDegree w.targetLabels
instance (w : Wire) : Decidable (IndexedShape w) := inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _ ∧ _))
def Wire.Valid (w : Wire) : Prop := IndexedShape w ∧ w.finite.Valid
def check (w : Wire) : Bool := decide (IndexedShape w) && Executable.check w.finite

theorem check_sound (w : Wire) (h : check w = true) : w.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1,Executable.check_sound _ h.2⟩
instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w

def parse (text : String) : Except String Wire := do
  let w ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson (w : Wire)).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if !decide (IndexedShape w) then throw "page count, degree or stage label mismatch"
  return w
elab "indexed_event% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end AggregateTargetInventory.EventAudit.Indexed
