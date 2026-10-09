import PermanentCycleCertificates.Finite

namespace ActualPermanenceBoundary
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates
open PermanentCycleCertificates

/-- Coordinate functions for the actual initial page and its full adjacent spaces. -/
structure InitialCoordinates (s : System) (stage : Stage) where
  incoming : s.Incoming 0 → Vec stage.wire.n
  current : s.Page 0 → Vec stage.wire.m
  outgoing : s.Outgoing 0 → Vec stage.wire.k
  next : s.Page 1 → Vec stage.wire.h

def InitialCoordinates.page {s : System} {stage : Stage}
    (c : InitialCoordinates s stage) : PageData stage.wire where
  Incoming := s.Incoming 0
  Current := s.Page 0
  Outgoing := s.Outgoing 0
  Next := s.Page 1
  incoming := s.incoming 0
  outgoing := s.outgoing 0
  next := s.advance 0
  zeroCurrent := s.zero 0
  zeroOutgoing := s.zeroOutgoing 0
  zeroNext := s.zero 1
  incomingCoordinates := c.incoming
  currentCoordinates := c.current
  outgoingCoordinates := c.outgoing
  nextCoordinates := c.next

def InitialCoordinates.prefix {s : System} {stage : Stage}
    (c : InitialCoordinates s stage) : PrefixCoordinates s [stage] where
  incoming := by
    intro i
    have hi : i = ⟨0, by simp⟩ := by
      apply Fin.ext
      change i.val = 0
      have h : i.val < 1 := i.isLt
      omega
    subst i
    exact c.incoming
  current := by
    intro i
    have hi : i = ⟨0, by simp⟩ := by
      apply Fin.ext
      change i.val = 0
      have h : i.val < 1 := i.isLt
      omega
    subst i
    exact c.current
  outgoing := by
    intro i
    have hi : i = ⟨0, by simp⟩ := by
      apply Fin.ext
      change i.val = 0
      have h : i.val < 1 := i.isLt
      omega
    subst i
    exact c.outgoing
  next := by
    intro i
    have hi : i = ⟨0, by simp⟩ := by
      apply Fin.ext
      change i.val = 0
      have h : i.val < 1 := i.isLt
      omega
    subst i
    exact c.next

def InitialCoordinates.meaning {s : System} {stage : Stage}
    (c : InitialCoordinates s stage) (x : s.Page 0)
    (equations : c.page.Meaning) (named : c.current x = stage.vector) :
    PrefixMeaning s x [stage] where
  coordinates := c.prefix
  equations := by
    intro i
    have hi : i = ⟨0, by simp⟩ := by
      apply Fin.ext
      change i.val = 0
      have h : i.val < 1 := i.isLt
      omega
    subst i
    exact equations
  named := by
    intro i
    have hi : i = ⟨0, by simp⟩ := by
      apply Fin.ext
      change i.val = 0
      have h : i.val < 1 := i.isLt
      omega
    subst i
    exact named

def initialCertificate {s : System} {stage : Stage} (x : s.Page 0)
    (c : InitialCoordinates s stage) (equations : c.page.Meaning)
    (named : c.current x = stage.vector) (tail : TailVanishing s 1) :
    Certificate s x where
  stages := [stage]
  meaning := c.meaning x equations named
  tail := tail

theorem initial_good {s : System} {stage : Stage} (x : s.Page 0)
    (c : InitialCoordinates s stage) (equations : c.page.Meaning)
    (named : c.current x = stage.vector) (checked : checkStage stage = true) :
    s.Good 0 x := by
  have h := stage_transport stage (checkStage_sound stage checked) c.page equations x named
  exact ⟨h.1, h.2.1⟩

theorem initial_permanent {s : System} {stage : Stage} (x : s.Page 0)
    (c : InitialCoordinates s stage) (equations : c.page.Meaning)
    (named : c.current x = stage.vector) (tail : TailVanishing s 1)
    (checked : checkStage stage = true) : s.Permanent x := by
  exact checkPermanent_sound s x [stage] (c.meaning x equations named) tail
    (by simpa [checkPrefix] using checked)

#print axioms initial_good
#print axioms initial_permanent
end ActualPermanenceBoundary
