import Init.Omega

/-! Structural decoding only: 9000 is a software sentinel, not convergence. -/
namespace PropagationCertificates

inductive StoredLevel where
  | incoming : Nat → StoredLevel
  | permanentSentinel : StoredLevel
  | outgoing : Nat → StoredLevel
  deriving DecidableEq, Repr

def decodeLevel (level : Nat) : Option StoredLevel :=
  if 2 ≤ level ∧ level < 5000 then some (.incoming level)
  else if level = 9000 then some .permanentSentinel
  else if 9000 < level ∧ level ≤ 9998 then some (.outgoing (10000 - level))
  else none

theorem decoded_outgoing_bounds (level page : Nat)
    (h : decodeLevel level = some (.outgoing page)) :
    2 ≤ page ∧ page < 1000 ∧ page + level = 10000 := by
  unfold decodeLevel at h
  split at h
  · simp at h
  · split at h
    · simp at h
    · split at h
      next bounds =>
        cases h
        omega
      next => simp at h

theorem decoded_incoming_bounds (level page : Nat)
    (h : decodeLevel level = some (.incoming page)) :
    page = level ∧ 2 ≤ page ∧ page < 5000 := by
  unfold decodeLevel at h
  split at h
  next bounds => cases h; exact ⟨rfl, bounds⟩
  next => split at h
          · simp at h
          · split at h <;> simp at h

theorem decoded_permanent_iff (level : Nat) :
    decodeLevel level = some .permanentSentinel ↔ level = 9000 := by
  unfold decodeLevel
  split
  next bounds => simp; omega
  next =>
    split
    next h => simp [h]
    next h => split <;> simp [h]

example : decodeLevel 9998 = some (.outgoing 2) := by decide
example : decodeLevel 9000 = some .permanentSentinel := by decide
example : decodeLevel 10000 = none := by decide

end PropagationCertificates
