import OutgoingCycleFiltrationCertificates.Boundary

namespace OutgoingCycleFiltrationCertificates
open PermanentCycleCertificates OutgoingCycleCertificates

/-- Strong all-page nonboundary survival is intersection membership together
with exclusion from the union of boundaries. This differs from AlwaysCycle. -/
theorem Realization.permanent_iff_ZInfinity_not_BInfinity
    {f : Filtration E2} {s : System} (r : Realization f s)
    (laws : DifferentialLaws s) (x : E2) :
    s.Permanent (r.initial x) ↔ f.ZInfinity x ∧ ¬ f.BInfinity x := by
  constructor
  · intro h
    have hz : f.ZInfinity x :=
      (r.intersection_iff_alwaysCycle x).mpr (permanent_alwaysCycle s (r.initial x) h)
    refine ⟨hz,?_⟩
    rintro ⟨n,hb⟩
    cases n with
    | zero =>
      have hh : r.image 0 x (hz 0) = s.zero 0 := (r.image_zero_iff_boundary 0 x (hz 0)).mpr hb
      have hi : r.initial x = s.zero 0 := hh
      exact good_nonzero s 0 (r.initial x) (h 0) hi
    | succ n =>
      obtain ⟨hx,y,hy⟩ := (r.next_boundary_iff_incoming laws n x).mp hb
      apply (h n).2
      exact ⟨y,hy.trans (r.image_eq_at x n hx)⟩
  · rintro ⟨hz,hb⟩ n
    have cycle := (r.intersection_iff_alwaysCycle x).mp hz
    refine ⟨cycle n,?_⟩
    rintro ⟨y,hy⟩
    apply hb
    refine ⟨n+1, (r.next_boundary_iff_incoming laws n x).mpr ?_⟩
    exact ⟨hz n,y,hy.trans (r.image_eq_at x n (hz n)).symm⟩

theorem Realization.ZInfinity_boundary_not_permanent
    {f : Filtration E2} {s : System} (r : Realization f s)
    (laws : DifferentialLaws s) (x : E2) (hz : f.ZInfinity x) (hb : f.BInfinity x) :
    AlwaysCycle s (r.initial x) ∧ ¬ s.Permanent (r.initial x) := by
  refine ⟨(r.intersection_iff_alwaysCycle x).mp hz,?_⟩
  intro h
  exact ((r.permanent_iff_ZInfinity_not_BInfinity laws x).mp h).2 hb

#print axioms Realization.permanent_iff_ZInfinity_not_BInfinity
#print axioms Realization.ZInfinity_boundary_not_permanent
end OutgoingCycleFiltrationCertificates
