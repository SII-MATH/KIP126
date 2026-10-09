import AggregateTargetInventory.EventAudit.IndexedDiagnostics

namespace IndexedFamilyCertificates
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit

deriving instance DecidableEq for WireComparison

structure Key where
  object : String
  page : Nat
  s : Int
  t : Int
  deriving DecidableEq, Lean.ToJson, Lean.FromJson, Lean.ToExpr

structure Entry where
  key : Key
  wire : WireComparison
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

abbrev Family := List Entry

def keyAt (object : String) (page : Nat) (degree : Indexed.Degree) : Key :=
  ⟨object, page, degree.s, degree.t⟩

def lookup (family : Family) (key : Key) : Option WireComparison :=
  (family.find? (fun entry => entry.key == key)).map Entry.wire

def UniqueKeys (family : Family) : Prop := (family.map Entry.key).Nodup
instance (family : Family) : Decidable (UniqueKeys family) :=
  inferInstanceAs (Decidable (family.map Entry.key).Nodup)

def StageBinding (family : Family) (object : String) (center : Indexed.Degree)
    (stages : List Stage) : Prop :=
  ∀ i : Fin stages.length,
    lookup family (keyAt object (i.val + 2) center) = some stages[i.val].wire
instance (f : Family) (o : String) (c : Indexed.Degree) (ss : List Stage) :
    Decidable (StageBinding f o c ss) := inferInstanceAs (Decidable (∀ _, _))

/-- Every full matrix and every homology coordinate map is bound to one
object/page/degree key. No digest equality is used here. -/
def Binding (family : Family) (object : String) (w : Indexed.Wire) : Prop :=
  object != "" ∧ UniqueKeys family ∧
  lookup family (keyAt object w.eventPage w.sourceDegree) = some w.finite.event ∧
  StageBinding family object w.sourceDegree w.finite.sourceStages ∧
  StageBinding family object w.targetDegree w.finite.targetStages
instance (f : Family) (o : String) (w : Indexed.Wire) : Decidable (Binding f o w) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _ ∧ _))

def Valid (family : Family) (object : String) (w : Indexed.Wire) : Prop :=
  w.Valid ∧ Binding family object w

def check (family : Family) (object : String) (w : Indexed.Wire) : Bool :=
  Indexed.check w && decide (Binding family object w)

theorem check_sound (family : Family) (object : String) (w : Indexed.Wire)
    (h : check family object w = true) : Valid family object w := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨Indexed.check_sound w h.1, h.2⟩

instance (family : Family) (object : String) (w : Indexed.Wire) :
    LinProgramCertificates.CertificateVerifier (Valid family object w) where
  Cert := Unit
  check := fun _ => check family object w
  sound := fun _ => check_sound family object w

/-- A nonzero differential in the supplied finite matrix family. The family
still needs a separate mathematical interpretation as an Adams sequence. -/
def DifferentialAt (family : Family) (key : Key) (source target : List Bool) : Prop :=
  ∃ block, lookup family key = some block ∧ block.Valid ∧
    source.length = block.m ∧ target.length = block.k ∧
    eval (matrixOf block.k block.m block.outgoing)
      (fun i => source[i.val]?.getD false) = (fun i => target[i.val]?.getD false) ∧
    (fun i : Fin block.k => target[i.val]?.getD false) ≠ zero

theorem Valid.differential {family : Family} {object : String} {w : Indexed.Wire}
    (h : Valid family object w) :
    DifferentialAt family (keyAt object w.eventPage w.sourceDegree)
      w.finite.source w.finite.target := by
  have hf := h.1.2
  exact ⟨w.finite.event, h.2.2.2.1, hf.2.1, hf.1.2.1, hf.1.2.2.1,
    hf.2.2.2.2.1, hf.2.2.2.2.2⟩

theorem Valid.source_stage {family : Family} {object : String} {w : Indexed.Wire}
    (h : Valid family object w) (i : Fin w.finite.sourceStages.length) :
    lookup family (keyAt object (i.val + 2) w.sourceDegree) =
      some w.finite.sourceStages[i.val].wire := h.2.2.2.2.1 i

theorem Valid.target_stage {family : Family} {object : String} {w : Indexed.Wire}
    (h : Valid family object w) (i : Fin w.finite.targetStages.length) :
    lookup family (keyAt object (i.val + 2) w.targetDegree) =
      some w.finite.targetStages[i.val].wire := h.2.2.2.2.2 i

end IndexedFamilyCertificates
