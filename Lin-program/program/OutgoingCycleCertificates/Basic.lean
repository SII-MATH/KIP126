import PermanentCycleCertificates.Finite

namespace OutgoingCycleCertificates
open PermanentCycleCertificates PageTransitionCertificates LinearCertificates
open SemanticTrajectoryCertificates

/-- All outgoing differentials vanish; an incoming differential may kill the class. -/
def AlwaysCycle (s : System) (x : s.Page 0) : Prop :=
  ∀ n, s.outgoing n (s.at x n) = s.zeroOutgoing n

theorem permanent_alwaysCycle (s : System) (x : s.Page 0) (h : s.Permanent x) :
    AlwaysCycle s x := fun n => (h n).1

def CycleStageValid (stage : Stage) : Prop :=
  stage.wire.Valid ∧ stage.representative.length = stage.wire.m ∧
  InKernel (matrixOf stage.wire.k stage.wire.m stage.wire.outgoing) stage.vector

def checkCycleStage (stage : Stage) : Bool :=
  PageTransitionCertificates.checkWire stage.wire &&
  decide (stage.representative.length = stage.wire.m) &&
  checkKernel (matrixOf stage.wire.k stage.wire.m stage.wire.outgoing) stage.vector

theorem checkCycleStage_sound (stage : Stage) (h : checkCycleStage stage = true) :
    CycleStageValid stage := by
  simp only [checkCycleStage, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨PageTransitionCertificates.checkWire_sound _ h.1.1, h.1.2,
    checkKernel_sound _ _ h.2⟩

def checkPrefix (stages : List Stage) : Bool :=
  decide (0 < stages.length) && stages.all checkCycleStage

/-- This is a theorem about whole actual outgoing spaces, independent of x. -/
def OutgoingTail (s : System) (cutoff : Nat) : Prop :=
  ∀ n, cutoff ≤ n → Subsingleton (s.Outgoing n)

theorem cycle_transport (stage : Stage) (checked : CycleStageValid stage)
    (p : PageData stage.wire) (meaning : p.Meaning)
    (x : p.Current) (named : p.currentCoordinates x = stage.vector) :
    p.outgoing x = p.zeroOutgoing := by
  apply meaning.outgoing_injective
  rw [meaning.outgoing_all, named, meaning.outgoing_zero]
  exact checked.2.2

theorem check_sound (s : System) (x : s.Page 0) (stages : List Stage)
    (meaning : PrefixMeaning s x stages) (tail : OutgoingTail s stages.length)
    (h : checkPrefix stages = true) : AlwaysCycle s x := by
  simp only [checkPrefix, Bool.and_eq_true, decide_eq_true_eq] at h
  intro n
  by_cases hn : n < stages.length
  · let i : Fin stages.length := ⟨n, hn⟩
    have checked := checkCycleStage_sound stages[n]
      ((List.all_eq_true.mp h.2) stages[n] (List.getElem_mem hn))
    exact cycle_transport stages[n] checked (meaning.coordinates.page s stages i)
      (meaning.equations i) (s.at x n) (meaning.named i)
  · exact (tail n (by omega)).allEq _ _

structure Certificate (s : System) (x : s.Page 0) where
  stages : List Stage
  meaning : PrefixMeaning s x stages
  tail : OutgoingTail s stages.length

instance (s : System) (x : s.Page 0) :
    LinProgramCertificates.CertificateVerifier (AlwaysCycle s x) where
  Cert := Certificate s x
  check := fun c => checkPrefix c.stages
  sound := fun c => check_sound s x c.stages c.meaning c.tail

syntax "outgoing_cycle_cert" " using " term : tactic
macro_rules
  | `(tactic| outgoing_cycle_cert using $c:term) => `(tactic|
      exact LinProgramCertificates.CertificateVerifier.sound $c
        (by first | rfl | decide))

def diagnose (stages : List Stage) : Option String := Id.run do
  if stages.isEmpty then return some "prefix: expected at least one page"
  for (stage, i) in stages.zipIdx do
    if !checkCycleStage stage then
      return some s!"prefix[{i}] (page {i+2}): full comparison, dimensions or outgoing cycle failed"
  return none

#print axioms checkCycleStage_sound
#print axioms check_sound
end OutgoingCycleCertificates
