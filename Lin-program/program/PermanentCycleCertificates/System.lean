import SemanticTrajectoryCertificates.Page

namespace PermanentCycleCertificates
open LinearCertificates PageTransitionCertificates

/-- Index n is Adams page n+2. The quotient law is an actual mathematical
premise; finite tables and missing records do not supply it. -/
structure System where
  Page : Nat → Type
  Incoming : Nat → Type
  Outgoing : Nat → Type
  zero : ∀ n, Page n
  zeroIncoming : ∀ n, Incoming n
  zeroOutgoing : ∀ n, Outgoing n
  incoming : ∀ n, Incoming n → Page n
  outgoing : ∀ n, Page n → Outgoing n
  advance : ∀ n, Page n → Page (n + 1)
  incoming_zero : ∀ n, incoming n (zeroIncoming n) = zero n
  homology_zero : ∀ n x, outgoing n x = zeroOutgoing n →
    (advance n x = zero (n + 1) ↔ ∃ y, incoming n y = x)

def System.at (s : System) (x : s.Page 0) : (n : Nat) → s.Page n
  | 0 => x
  | n + 1 => s.advance n (s.at x n)

def System.Good (s : System) (n : Nat) (x : s.Page n) : Prop :=
  s.outgoing n x = s.zeroOutgoing n ∧ (¬ ∃ y, s.incoming n y = x)

def System.Permanent (s : System) (x : s.Page 0) : Prop :=
  ∀ n, s.Good n (s.at x n)

theorem good_nonzero (s : System) (n : Nat) (x : s.Page n) (h : s.Good n x) :
    x ≠ s.zero n := by
  intro hz
  exact h.2 ⟨s.zeroIncoming n, (s.incoming_zero n).trans hz.symm⟩

theorem good_advance_nonzero (s : System) (n : Nat) (x : s.Page n) (h : s.Good n x) :
    s.advance n x ≠ s.zero (n + 1) := by
  intro hz
  exact h.2 ((s.homology_zero n x h.1).mp hz)

/-- Whole actual incoming and outgoing spaces vanish after the cutoff.
There is no premise about the selected element's future survival. -/
structure TailVanishing (s : System) (cutoff : Nat) : Prop where
  incoming : ∀ n, cutoff ≤ n → Subsingleton (s.Incoming n)
  outgoing : ∀ n, cutoff ≤ n → Subsingleton (s.Outgoing n)

theorem tail_good (s : System) (cutoff : Nat) (tail : TailVanishing s cutoff)
    (n : Nat) (hn : cutoff ≤ n) (x : s.Page n) (nonzero : x ≠ s.zero n) : s.Good n x := by
  refine ⟨(tail.outgoing n hn).allEq _ _, ?_⟩
  rintro ⟨y, hy⟩
  apply nonzero
  rw [← hy, (tail.incoming n hn).allEq y (s.zeroIncoming n), s.incoming_zero]

theorem tail_stability (s : System) (x : s.Page 0) (cutoff : Nat)
    (tail : TailVanishing s cutoff) (start : s.at x cutoff ≠ s.zero cutoff) :
    ∀ n, cutoff ≤ n → s.Good n (s.at x n) := by
  have nonzero : ∀ n, cutoff ≤ n → s.at x n ≠ s.zero n := by
    intro n hn
    induction n with
    | zero =>
      have hc : cutoff = 0 := by omega
      subst cutoff
      exact start
    | succ n ih =>
      by_cases he : n + 1 = cutoff
      · subst cutoff
        exact start
      · have hn' : cutoff ≤ n := by omega
        exact good_advance_nonzero s n (s.at x n) (tail_good s cutoff tail n hn' _ (ih hn'))
  exact fun n hn => tail_good s cutoff tail n hn _ (nonzero n hn)

theorem permanent_of_prefix (s : System) (x : s.Page 0) (cutoff : Nat)
    (positive : 0 < cutoff)
    (finitePages : ∀ n, n < cutoff → s.Good n (s.at x n))
    (tail : TailVanishing s cutoff) : s.Permanent x := by
  have hcut : s.at x cutoff ≠ s.zero cutoff := by
    obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : cutoff ≠ 0)
    exact good_advance_nonzero s n (s.at x n) (finitePages n (by omega))
  intro n
  by_cases hn : n < cutoff
  · exact finitePages n hn
  · exact tail_stability s x cutoff tail hcut n (by omega)

#print axioms tail_stability
#print axioms permanent_of_prefix
end PermanentCycleCertificates
