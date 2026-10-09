import OutgoingCycleFiltrationCertificates.Basic
import Mathlib.Data.Nat.Basic

namespace OutgoingCycleFiltrationCertificates
open PermanentCycleCertificates

/-- Optional laws needed for cumulative boundaries. These are actual
differential laws, not consequences of the finite prefix checker. -/
structure DifferentialLaws (s : System) : Prop where
  zero_outgoing : ∀ n, s.outgoing n (s.zero n) = s.zeroOutgoing n
  incoming_cycle : ∀ n y, s.outgoing n (s.incoming n y) = s.zeroOutgoing n

theorem DifferentialLaws.advance_zero {s : System} (laws : DifferentialLaws s) (n : Nat) :
    s.advance n (s.zero n) = s.zero (n+1) :=
  (s.homology_zero n (s.zero n) (laws.zero_outgoing n)).mpr
    ⟨s.zeroIncoming n,s.incoming_zero n⟩

theorem Filtration.cycle_before (f : Filtration E2) (x : E2) {m n : Nat}
    (le : m ≤ n) (hn : f.Z n x) : f.Z m x := by
  induction n,le using Nat.le_induction with
  | base => exact hn
  | succ n _ ih => exact ih (f.decreasing n x hn)

/-- The next boundary subset is exactly the preimage of the actual incoming
image under the full cycle quotient map. This still needs a paper realization. -/
theorem Realization.next_boundary_iff_incoming {f : Filtration E2} {s : System}
    (r : Realization f s) (laws : DifferentialLaws s) (n : Nat) (x : E2) :
    f.Boundary (n+1) x ↔ ∃ h : f.Z n x, ∃ y, s.incoming n y = r.image n x h := by
  constructor
  · rintro ⟨hx,hb⟩
    let hprev := f.decreasing n x hx
    have cycle := (r.outgoing_zero_iff n x hprev).mpr hx
    have hz := (r.image_zero_iff_boundary (n+1) x hx).mpr ⟨hx,hb⟩
    have advance : s.advance n (r.image n x hprev) = s.zero (n+1) :=
      (r.advance_compatible n x hx).trans hz
    exact ⟨hprev,(s.homology_zero n (r.image n x hprev) cycle).mp advance⟩
  · rintro ⟨hx,y,hy⟩
    have cycle : s.outgoing n (r.image n x hx) = s.zeroOutgoing n := by
      rw [← hy]
      exact laws.incoming_cycle n y
    have hn := (r.outgoing_zero_iff n x hx).mp cycle
    apply (r.image_zero_iff_boundary (n+1) x hn).mp
    exact (r.advance_compatible n x hn).symm.trans
      ((s.homology_zero n (r.image n x hx) cycle).mpr ⟨y,hy⟩)

theorem Realization.boundary_next {f : Filtration E2} {s : System}
    (r : Realization f s) (laws : DifferentialLaws s) (n : Nat) (x : E2)
    (hb : f.Boundary n x) : f.Boundary (n+1) x := by
  obtain ⟨hx,hrel⟩ := hb
  have hz := (r.image_zero_iff_boundary n x hx).mpr ⟨hx,hrel⟩
  apply (r.next_boundary_iff_incoming laws n x).mpr
  exact ⟨hx,s.zeroIncoming n,(s.incoming_zero n).trans hz.symm⟩

structure BoundaryCoherence (f : Filtration E2) : Prop where
  increasing : ∀ n m, n ≤ m → ∀ x, f.Boundary n x → f.Boundary m x

def Realization.boundaryCoherence {f : Filtration E2} {s : System}
    (r : Realization f s) (laws : DifferentialLaws s) : BoundaryCoherence f where
  increasing := by
    intro n m h x hb
    induction m,h using Nat.le_induction with
    | base => exact hb
    | succ m _ ih => exact r.boundary_next laws m x ih

def Filtration.BInfinity (f : Filtration E2) (x : E2) : Prop := ∃ n, f.Boundary n x

theorem BoundaryCoherence.boundary_in_ZInfinity {f : Filtration E2}
    (coherent : BoundaryCoherence f) (x : E2) (hb : f.BInfinity x) : f.ZInfinity x := by
  obtain ⟨n,hb⟩ := hb
  intro m
  by_cases hm : m ≤ n
  · exact f.cycle_before x hm hb.choose
  · exact (coherent.increasing n m (by omega) x hb).choose

theorem Realization.BInfinity_subset_ZInfinity {f : Filtration E2} {s : System}
    (r : Realization f s) (laws : DifferentialLaws s) (x : E2) :
    f.BInfinity x → f.ZInfinity x :=
  (r.boundaryCoherence laws).boundary_in_ZInfinity x

#print axioms Realization.next_boundary_iff_incoming
#print axioms Realization.boundary_next
#print axioms Realization.BInfinity_subset_ZInfinity
end OutgoingCycleFiltrationCertificates
