import OutgoingCycleCertificates.Basic

namespace PermanentMapTailCertificates
open PermanentCycleCertificates OutgoingCycleCertificates

/-- Every value of each actual outgoing map is zero, independent of the named class. -/
def OutgoingMapTail (s : System) (cutoff : Nat) : Prop :=
  ∀ n, cutoff ≤ n → ∀ x, s.outgoing n x = s.zeroOutgoing n

/-- Full actual maps vanish; their domain and codomain need not be zero spaces. -/
structure MapTail (s : System) (cutoff : Nat) : Prop where
  incoming : ∀ n, cutoff ≤ n → ∀ y, s.incoming n y = s.zero n
  outgoing : OutgoingMapTail s cutoff

theorem of_subsingleton (s : System) (cutoff : Nat) (tail : TailVanishing s cutoff) :
    MapTail s cutoff where
  incoming := fun n hn y =>
    (congrArg (s.incoming n) ((tail.incoming n hn).allEq y (s.zeroIncoming n))).trans
      (s.incoming_zero n)
  outgoing := fun n hn _ => (tail.outgoing n hn).allEq _ _

theorem outgoing_of_subsingleton (s : System) (cutoff : Nat)
    (tail : OutgoingTail s cutoff) : OutgoingMapTail s cutoff :=
  fun n hn _ => (tail n hn).allEq _ _

theorem tail_good (s : System) (cutoff : Nat) (tail : MapTail s cutoff)
    (n : Nat) (hn : cutoff ≤ n) (x : s.Page n) (nonzero : x ≠ s.zero n) :
    s.Good n x := by
  refine ⟨tail.outgoing n hn x, ?_⟩
  rintro ⟨y, hy⟩
  exact nonzero (hy.symm.trans (tail.incoming n hn y))

theorem tail_stability (s : System) (x : s.Page 0) (cutoff : Nat)
    (tail : MapTail s cutoff) (start : s.at x cutoff ≠ s.zero cutoff) :
    ∀ n, cutoff ≤ n → s.Good n (s.at x n) := by
  have nonzero : ∀ n, cutoff ≤ n → s.at x n ≠ s.zero n := by
    intro n hn
    induction n with
    | zero =>
      have hc : cutoff = 0 := by omega
      subst cutoff
      exact start
    | succ n ih =>
      by_cases he : n+1 = cutoff
      · subst cutoff
        exact start
      · have hn' : cutoff ≤ n := by omega
        exact good_advance_nonzero s n (s.at x n)
          (tail_good s cutoff tail n hn' _ (ih hn'))
  exact fun n hn => tail_good s cutoff tail n hn _ (nonzero n hn)

theorem permanent_of_prefix (s : System) (x : s.Page 0) (cutoff : Nat)
    (positive : 0 < cutoff)
    (finitePages : ∀ n, n < cutoff → s.Good n (s.at x n))
    (tail : MapTail s cutoff) : s.Permanent x := by
  have hcut : s.at x cutoff ≠ s.zero cutoff := by
    obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : cutoff ≠ 0)
    exact good_advance_nonzero s n (s.at x n) (finitePages n (by omega))
  intro n
  by_cases hn : n < cutoff
  · exact finitePages n hn
  · exact tail_stability s x cutoff tail hcut n (by omega)

theorem alwaysCycle_of_prefix (s : System) (x : s.Page 0) (cutoff : Nat)
    (finitePages : ∀ n, n < cutoff → s.outgoing n (s.at x n) = s.zeroOutgoing n)
    (tail : OutgoingMapTail s cutoff) : AlwaysCycle s x := by
  intro n
  by_cases hn : n < cutoff
  · exact finitePages n hn
  · exact tail n (by omega) _

#print axioms of_subsingleton
#print axioms outgoing_of_subsingleton
#print axioms tail_good
#print axioms tail_stability
#print axioms permanent_of_prefix
#print axioms alwaysCycle_of_prefix
end PermanentMapTailCertificates
