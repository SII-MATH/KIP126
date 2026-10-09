import ActualAdamsUniqueBridge.Quotient

namespace ActualAdamsUniqueNext
open ManualInputObligations.Reference ActualAdamsSystemBridge

def IsOnlyNonzero (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) : Prop :=
  x ≠ S.zero r d ∧ ∀ y : (S.element r d).carrier, y = S.zero r d ∨ y = x

/-- Zero compatibility distinguishes the nonzero element of the next page;
a bare quotient bijection suffices only for its cardinality. -/
theorem next_unique (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) (unique : ActualAdamsUniqueBridge.IsUnique S r d x) :
    IsOnlyNonzero S (r+1) d (advance S pages r d x) := by
  rw [advance_on_cycle S pages r d x unique.1]
  refine ⟨fun h => unique.2.1 ((ActualAdamsSystemBridge.quotient_zero_iff
    S pages zeros r d ⟨x,unique.1⟩).mp h),?_⟩
  intro y
  have h := ActualAdamsUniqueBridge.quotient_dichotomy S r d x unique
    ((pages.nextPage r d).fromNext y)
  rcases h with hz | hx
  · apply Or.inl
    have eq := congrArg (pages.nextPage r d).toNext hz
    rw [(pages.nextPage r d).rightInverse,zeros r d] at eq
    exact eq
  · apply Or.inr
    have eq := congrArg (pages.nextPage r d).toNext hx
    rw [(pages.nextPage r d).rightInverse] at eq
    exact eq

structure Certificate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (d : Bidegree) (x : (S.element r d).carrier) where
  finite : ActualAdamsUniqueBridge.Certificate S r d x
  zeros : ZeroMeaning S pages

theorem check_sound (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (d : Bidegree) (x : (S.element r d).carrier)
    (c : Certificate S pages r d x)
    (checked : UniqueHomologyCertificates.check c.finite.wire.comparison c.finite.wire.named = true) :
    IsOnlyNonzero S (r+1) d (advance S pages r d x) :=
  next_unique S pages c.zeros r d x
    (ActualAdamsUniqueBridge.check_sound S r d x c.finite checked)

syntax "adams_next_unique_cert" " using " term : tactic
macro_rules
  | `(tactic| adams_next_unique_cert using $c:term) => `(tactic|
      exact ActualAdamsUniqueNext.check_sound _ _ _ _ _ $c (by first | rfl | decide))

#print axioms next_unique
#print axioms check_sound
end ActualAdamsUniqueNext
