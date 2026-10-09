import OutgoingCycleMapTransport.Hit

namespace OutgoingCycleMapTransport
open PermanentCycleCertificates OutgoingCycleCertificates OutgoingCycleFiltrationCertificates

/-- A map preserving every initial cycle subset induces the global
intersection map. No assertion about one named element is supplied. -/
structure FilteredCycleMap {A B : Type} (f : Filtration A) (g : Filtration B) where
  initial : A → B
  preserves : ∀ n x, f.Z n x → g.Z n (initial x)

theorem FilteredCycleMap.intersection {A B : Type} {f : Filtration A} {g : Filtration B}
    (map : FilteredCycleMap f g) (x : A) (hx : f.ZInfinity x) :
    g.ZInfinity (map.initial x) := fun n => map.preserves n x (hx n)

theorem map_intersection {A B : Type} {f : Filtration A} {g : Filtration B}
    {s t : System} (left : Realization f s) (right : Realization g t)
    (map : CycleMap s t) (initialMap : A → B)
    (initialMeaning : ∀ x, map.page 0 (left.initial x) = right.initial (initialMap x))
    (x : A) (hx : f.ZInfinity x) : g.ZInfinity (initialMap x) := by
  apply (right.intersection_iff_alwaysCycle _).mpr
  rw [← initialMeaning]
  exact map.alwaysCycle _ ((left.intersection_iff_alwaysCycle _).mp hx)

theorem reflect_intersection {A B : Type} {f : Filtration A} {g : Filtration B}
    {s t : System} (left : Realization f s) (right : Realization g t)
    (map : CycleMap s t) (faithful : ∀ n, Function.Injective (map.outgoing n))
    (initialMap : A → B)
    (initialMeaning : ∀ x, map.page 0 (left.initial x) = right.initial (initialMap x))
    (x : A) (hx : g.ZInfinity (initialMap x)) : f.ZInfinity x := by
  apply (left.intersection_iff_alwaysCycle _).mpr
  apply map.reflect_alwaysCycle faithful
  rw [initialMeaning]
  exact (right.intersection_iff_alwaysCycle _).mp hx

theorem intersection_of_hit {A : Type} {f : Filtration A} {s : System}
    (realization : Realization f s) (laws : DifferentialLaws s) (x : A)
    (hitIndex : Nat)
    (before : ∀ n, n < hitIndex → s.outgoing n (s.at (realization.initial x) n) = s.zeroOutgoing n)
    (hit : ∃ y, s.incoming hitIndex y = s.at (realization.initial x) hitIndex) :
    f.ZInfinity x :=
  (realization.intersection_iff_alwaysCycle x).mpr
    (alwaysCycle_of_hit s laws _ hitIndex before hit)

#print axioms FilteredCycleMap.intersection
#print axioms map_intersection
#print axioms reflect_intersection
#print axioms intersection_of_hit
end OutgoingCycleMapTransport
