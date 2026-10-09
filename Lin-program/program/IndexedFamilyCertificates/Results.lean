import IndexedFamilyCertificates.Import

namespace IndexedFamilyCertificates
open LinProgramCertificates

def ResultMatches (key : Key) (source target : List Bool) (w : BoundWire) : Prop :=
  keyAt w.object w.event.eventPage w.event.sourceDegree = key ∧
  w.event.finite.source = source ∧ w.event.finite.target = target
instance (k : Key) (s t : List Bool) (w : BoundWire) : Decidable (ResultMatches k s t w) :=
  inferInstanceAs (Decidable (_ ∧ _ ∧ _))

def checkResult (family : Family) (key : Key) (source target : List Bool)
    (w : BoundWire) : Bool :=
  checkBound family w && decide (ResultMatches key source target w)

/-- The goal supplies the object, page, degree, input and output; the
certificate cannot choose a different result when it is checked. -/
theorem checkResult_sound (family : Family) (key : Key) (source target : List Bool)
    (w : BoundWire) (h : checkResult family key source target w = true) :
    DifferentialAt family key source target := by
  simp only [checkResult, Bool.and_eq_true, decide_eq_true_eq] at h
  have hd := (checkBound_sound family w h.1).2.differential
  rcases h.2 with ⟨hk, hs, ht⟩
  rw [hk, hs, ht] at hd
  exact hd

instance (family : Family) (key : Key) (source target : List Bool) :
    CertificateVerifier (DifferentialAt family key source target) where
  Cert := BoundWire
  check := checkResult family key source target
  sound := checkResult_sound family key source target

def diagnoseResult (family : Family) (key : Key) (source target : List Bool)
    (w : BoundWire) : Option VerificationFailure :=
  if checkResult family key source target w then none
  else if keyAt w.object w.event.eventPage w.event.sourceDegree != key then
    some ⟨"indexed_family", "result.key", "object, page or degree differs from goal"⟩
  else if w.event.finite.source != source then
    some ⟨"indexed_family", "result.source", "input vector differs from goal"⟩
  else if w.event.finite.target != target then
    some ⟨"indexed_family", "result.target", "output vector differs from goal"⟩
  else some ((diagnose family w).getD
    ⟨"indexed_family", "$", "result checker rejected certificate"⟩)

theorem diagnoseResult_none_iff (family : Family) (key : Key) (source target : List Bool)
    (w : BoundWire) : diagnoseResult family key source target w = none ↔
      checkResult family key source target w = true := by
  unfold diagnoseResult
  split
  · simp_all
  · split <;> try simp_all
    split <;> try simp_all
    split <;> simp_all

structure Request where
  key : Key
  source : List Bool
  target : List Bool
  certificate : BoundWire
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def checkBatch (family : Family) (requests : List Request) : Bool :=
  requests.all (fun r => checkResult family r.key r.source r.target r.certificate)

theorem checkBatch_sound (family : Family) (requests : List Request)
    (h : checkBatch family requests = true) :
    ∀ r ∈ requests, DifferentialAt family r.key r.source r.target := by
  intro r hr
  exact checkResult_sound family r.key r.source r.target r.certificate
    (List.all_eq_true.mp h r hr)

#print axioms checkResult_sound
#print axioms checkBatch_sound
end IndexedFamilyCertificates
