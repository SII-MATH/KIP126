import ActualFiniteNoHit.Basic

namespace Fact715NoHitReduction
open PermanentCycleCertificates OutgoingCycleFiltrationCertificates

/-- A genuine incoming event at the exceptional page requires that the
original input still admits a representative on that page. -/
def ExceptionalHit {f : Filtration E2} {s : System}
    (R : Realization f s) (q : Nat) (x : E2) : Prop :=
  ∃ cycle : f.Z q x, ∃ y, s.incoming q y = R.image q x cycle

theorem boundary_stable_until {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (cutoff q : Nat)
    (maps : ∀ n, cutoff ≤ n → n < q → ∀ y, s.incoming n y = s.zero n)
    (x : E2) (n : Nat) (lower : cutoff ≤ n) (upper : n ≤ q) :
    f.Boundary n x ↔ f.Boundary cutoff x := by
  induction n,lower using Nat.le_induction with
  | base => rfl
  | succ n hn ih =>
    constructor
    · intro boundary
      obtain ⟨cycle,y,hy⟩ := (R.next_boundary_iff_incoming laws n x).mp boundary
      have zero : R.image n x cycle = s.zero n := hy.symm.trans (maps n hn (by omega) y)
      exact (ih (by omega)).mp ((R.image_zero_iff_boundary n x cycle).mp zero)
    · intro boundary
      exact R.boundary_next laws n x ((ih (by omega)).mpr boundary)

theorem exceptional_image_nonzero {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (cutoff q : Nat)
    (order : cutoff ≤ q)
    (maps : ∀ n, cutoff ≤ n → n ≠ q → ∀ y, s.incoming n y = s.zero n)
    (x : E2) (start : f.Z cutoff x)
    (nonzero : R.image cutoff x start ≠ s.zero cutoff) (cycle : f.Z q x) :
    R.image q x cycle ≠ s.zero q := by
  intro zero
  have boundary := (R.image_zero_iff_boundary q x cycle).mp zero
  have early := (boundary_stable_until R laws cutoff q
    (fun n hn hq => maps n hn (by omega)) x q order (by omega)).mp boundary
  exact nonzero ((R.image_zero_iff_boundary cutoff x start).mpr early)

/-- All later cumulative boundaries are already present immediately after
the sole exceptional page. No survival to that page is assumed. -/
theorem boundary_iff_exceptional_hit {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (cutoff q : Nat)
    (order : cutoff ≤ q)
    (maps : ∀ n, cutoff ≤ n → n ≠ q → ∀ y, s.incoming n y = s.zero n)
    (x : E2) : f.BInfinity x ↔ ExceptionalHit R q x := by
  constructor
  · rintro ⟨n,boundary⟩
    apply (R.next_boundary_iff_incoming laws q x).mp
    by_cases early : n ≤ q+1
    · exact (R.boundaryCoherence laws).increasing n (q+1) early x boundary
    · exact (ActualFiniteNoHit.boundary_stable R laws (q+1)
        (fun n hn => maps n (by omega) (by omega)) x n (by omega)).mp boundary
  · intro hit
    exact ⟨q+1,(R.next_boundary_iff_incoming laws q x).mpr hit⟩

theorem no_boundary_iff_exceptional_exclusion {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (cutoff q : Nat)
    (order : cutoff ≤ q)
    (maps : ∀ n, cutoff ≤ n → n ≠ q → ∀ y, s.incoming n y = s.zero n)
    (x : E2) : ¬ f.BInfinity x ↔ ¬ ExceptionalHit R q x :=
  not_congr (boundary_iff_exceptional_hit R laws cutoff q order maps x)

theorem outgoing_death_excludes_boundaries {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (x : E2) (n : Nat)
    (cycle : f.Z n x) (death : s.outgoing n (R.image n x cycle) ≠ s.zeroOutgoing n) :
    ¬ f.BInfinity x := by
  intro boundary
  have later := R.BInfinity_subset_ZInfinity laws x boundary (n+1)
  exact death ((R.outgoing_zero_iff n x cycle).mpr later)

theorem missing_exceptional_cycle_excludes_boundaries {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (x : E2) (q : Nat)
    (missing : ¬ f.Z q x) : ¬ f.BInfinity x :=
  fun boundary => missing (R.BInfinity_subset_ZInfinity laws x boundary q)

#print axioms boundary_stable_until
#print axioms exceptional_image_nonzero
#print axioms boundary_iff_exceptional_hit
#print axioms no_boundary_iff_exceptional_exclusion
#print axioms outgoing_death_excludes_boundaries
#print axioms missing_exceptional_cycle_excludes_boundaries
end Fact715NoHitReduction
