import ActualAdamsFiltration.Actual
import ActualAdamsSystemBridge.Tail

namespace ActualFiniteNoHit
open PermanentCycleCertificates OutgoingCycleFiltrationCertificates

/-- Once every incoming value is zero, cumulative boundaries stop growing.
Outgoing differentials may still be nonzero. -/
theorem boundary_stable {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (cutoff : Nat)
    (tail : ∀ n, cutoff ≤ n → ∀ y, s.incoming n y = s.zero n)
    (x : E2) (n : Nat) (above : cutoff ≤ n) :
    f.Boundary n x ↔ f.Boundary cutoff x := by
  induction n,above using Nat.le_induction with
  | base => rfl
  | succ n hn ih =>
    constructor
    · intro hb
      obtain ⟨hx,y,hy⟩ := (R.next_boundary_iff_incoming laws n x).mp hb
      have hz : R.image n x hx = s.zero n := hy.symm.trans (tail n hn y)
      exact ih.mp ((R.image_zero_iff_boundary n x hx).mp hz)
    · intro hb
      exact R.boundary_next laws n x (ih.mpr hb)

theorem no_boundary_ever {f : Filtration E2} {s : System}
    (R : Realization f s) (laws : DifferentialLaws s) (cutoff : Nat)
    (tail : ∀ n, cutoff ≤ n → ∀ y, s.incoming n y = s.zero n)
    (x : E2) (cycle : f.Z cutoff x) (nonzero : R.image cutoff x cycle ≠ s.zero cutoff) :
    ¬ f.BInfinity x := by
  rintro ⟨n,hb⟩
  have atCutoff : f.Boundary cutoff x := by
    by_cases hn : n ≤ cutoff
    · exact (R.boundaryCoherence laws).increasing n cutoff hn x hb
    · exact (boundary_stable R laws cutoff tail x n (by omega)).mp hb
  exact nonzero ((R.image_zero_iff_boundary cutoff x cycle).mpr atCutoff)

open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration

/-- A nonzero actual endpoint beyond its filtration excludes cumulative
incoming boundaries for the original E2 class, without claiming permanence. -/
theorem actual_no_boundary_ever (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ZeroMeaning S pages) (d : Bidegree) (n : Nat)
    (above : d.filtration < n+2)
    (initial : (S.element 2 d).carrier) (value : (S.element (n+2) d).carrier)
    (trace : ManualInputObligations.Trace S pages d (n+2) initial value)
    (nonzero : value ≠ 0) :
    ¬ (filtration (system S pages zeros d) (differentialLaws S pages zeros d)).BInfinity initial := by
  apply no_boundary_ever (actualRealization S pages zeros d)
    (differentialLaws S pages zeros d) n
    (fun q hq y => incoming_map_zero_above_filtration S (q+2) d (by omega) y)
    initial (cycles_from_trace S pages zeros d trace n rfl)
  change (system S pages zeros d).at initial n ≠ S.zero (n+2) d
  rw [← trace_at S pages zeros d trace,S.zero_is_zero]
  exact nonzero

#print axioms boundary_stable
#print axioms no_boundary_ever
#print axioms actual_no_boundary_ever
end ActualFiniteNoHit
