import OutgoingCycleMapTransport.Filtration
import ActualPermanenceBoundary.Cases

namespace OutgoingCycleMapTransport.Fact762
open PermanentCycleCertificates OutgoingCycleCertificates OutgoingCycleFiltrationCertificates
open ActualPermanenceBoundary

abbrev stage := ActualPermanenceBoundary.Fact762.stage

/-- The exact original d2 vector is retained. A proved d6 or d12 incoming
hit removes the infinite outgoing tail obligation on that branch only. -/
theorem cycle_of_hit (s : System) (laws : DifferentialLaws s) (x : s.Page 0)
    (coordinates : InitialCoordinates s stage) (meaning : coordinates.page.Meaning)
    (named : coordinates.current x = Fact762PageCertificates.target)
    (hitIndex : Nat) (allowed : hitIndex + 2 = 6 ∨ hitIndex + 2 = 12)
    (middle : ∀ n, 0 < n → n < hitIndex → s.outgoing n (s.at x n) = s.zeroOutgoing n)
    (hit : ∃ y, s.incoming hitIndex y = s.at x hitIndex) :
    AlwaysCycle s x ∧ ¬ s.Permanent x ∧
      (∀ n, hitIndex + 1 ≤ n → s.at x n = s.zero n) := by
  have positive : 0 < hitIndex := by omega
  refine ⟨alwaysCycle_of_hit s laws x hitIndex ?_ hit,
    not_permanent_of_hit s x hitIndex hit, zero_after_hit s laws x hitIndex hit⟩
  intro n hn
  by_cases first : n = 0
  · subst n
    exact (ActualPermanenceBoundary.Fact762.actual_d2_good s x coordinates meaning named).1
  · exact middle n (by omega) hn

theorem cycle_of_structural_image (s t : System) (map : CycleMap s t)
    (source : s.Page 0) (sourceCycle : AlwaysCycle s source)
    (coordinates : InitialCoordinates t stage) (meaning : coordinates.page.Meaning)
    (named : coordinates.current (map.page 0 source) = Fact762PageCertificates.target) :
    t.Good 0 (map.page 0 source) ∧ AlwaysCycle t (map.page 0 source) :=
  ⟨ActualPermanenceBoundary.Fact762.actual_d2_good t _ coordinates meaning named,
    map.alwaysCycle source sourceCycle⟩

theorem intersection_of_allowed_hit {A : Type} {f : Filtration A} {s : System}
    (realization : Realization f s) (laws : DifferentialLaws s) (x : A)
    (coordinates : InitialCoordinates s stage) (meaning : coordinates.page.Meaning)
    (named : coordinates.current (realization.initial x) = Fact762PageCertificates.target)
    (hitIndex : Nat) (allowed : hitIndex + 2 = 6 ∨ hitIndex + 2 = 12)
    (middle : ∀ n, 0 < n → n < hitIndex →
      s.outgoing n (s.at (realization.initial x) n) = s.zeroOutgoing n)
    (hit : ∃ y, s.incoming hitIndex y = s.at (realization.initial x) hitIndex) :
    f.ZInfinity x :=
  (realization.intersection_iff_alwaysCycle x).mpr
    (cycle_of_hit s laws _ coordinates meaning named hitIndex allowed middle hit).1

#print axioms cycle_of_hit
#print axioms cycle_of_structural_image
#print axioms intersection_of_allowed_hit
end OutgoingCycleMapTransport.Fact762
