import FilteredExtensionPageBridge.Basic

namespace FilteredExtensionPageBridge
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence GeneralizedLeibnizAudit
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

/-- Crossing expressed directly using the full constructed page differential.
Both leading degrees are exact; nonzero current target page classes are not
required by the representative-stability condition. -/
def PageCrossingAt (s p : Nat) : Prop :=
  ∃ t, ∃ order : t ≤ p, s < t ∧
    ∃ x : cycles F G f t (p-t), ExactAt F t x.val ∧
    ∃ y : G.group p, ExactAt G p y.val ∧
      pageD F G f (p-t) t
        (sourceElement F G f t (p-t) (sourceClass F G f t (p-t) x)) =
          targetElement F G f t (p-t) (targetAt G order y)

theorem pageCrossingAt_iff (s p : Nat) :
    PageCrossingAt F G f s p ↔ CrossingAt F G f s p := by
  constructor
  · rintro ⟨t,order,st,x,hx,y,hy,eq⟩
    exact ⟨t,order,st,x,hx,y,hy,(page_equation_iff F G f t (p-t) _ _).mp eq⟩
  · rintro ⟨t,order,st,x,hx,y,hy,eq⟩
    exact ⟨t,order,st,x,hx,y,hy,(page_equation_iff F G f t (p-t) _ _).mpr eq⟩

def NoCrossing (s low high : Nat) : Prop :=
  ∀ p, low ≤ p → p < high → ¬ PageCrossingAt F G f s p

theorem noCrossing_iff (s low high : Nat) :
    NoCrossing F G f s low high ↔ NoPageCrossing F G f s low high := by
  constructor
  · intro none p hp hph crossing
    exact none p hp hph ((pageCrossingAt_iff F G f s p).mpr crossing)
  · intro none p hp hph crossing
    exact none p hp hph ((pageCrossingAt_iff F G f s p).mp crossing)

theorem noCrossing_iff_higher (s q : Nat) (order : s ≤ q) :
    NoCrossing F G f s (s+1) (q+1) ↔
      HigherMapsInto f.hom (F.group (s+1)) (G.group (q+1)) :=
  (noCrossing_iff F G f s (s+1) (q+1)).trans
    (noPageCrossing_iff_higher F G f s q order)

theorem noCrossing_iff_all_representatives (s n : Nat)
    (x : F.group s) (y : G.group (s+n)) (event : LeadingPageEvent F G f s n x y) :
    NoCrossing F G f s (s+1) (s+n+1) ↔
      ∀ a, SameLeading (F.group (s+1)) a x.val →
        SameLeading (G.group (s+n+1)) (f.hom a) y.val :=
  (noCrossing_iff F G f s (s+1) (s+n+1)).trans
    (noPageCrossing_iff_all_representatives F G f s (s+n) (by omega) x.val y.val
      ((leadingPageEvent_iff_extension F G f s n x y).mp event))

#print axioms pageCrossingAt_iff
#print axioms noCrossing_iff
#print axioms noCrossing_iff_higher
#print axioms noCrossing_iff_all_representatives
end FilteredExtensionPageBridge
