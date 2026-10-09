import FilteredTwoTermNaturality.Basic

namespace FilteredTwoTermNaturality
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence

variable {A B C D E J : Type*}
  [AddCommGroup A] [AddCommGroup B] [AddCommGroup C] [AddCommGroup D]
  [AddCommGroup E] [AddCommGroup J]
variable {F : Filtration A} {G : Filtration B} {H : Filtration C} {K : Filtration D}
  {L : Filtration E} {M : Filtration J}
variable {f : FilteredMap F G} {g : FilteredMap H K} {h : FilteredMap L M}

def identity (f : FilteredMap F G) : Square f f where
  source := ⟨AddMonoidHom.id _,fun _ _ hx => hx⟩
  target := ⟨AddMonoidHom.id _,fun _ _ hx => hx⟩
  commutes _ := rfl

def zeroSquare (f : FilteredMap F G) (g : FilteredMap H K) : Square f g where
  source := ⟨0,fun s _ _ => (H.group s).zero_mem⟩
  target := ⟨0,fun s _ _ => (K.group s).zero_mem⟩
  commutes _ := (map_zero g.hom).symm

def compose (second : Square g h) (first : Square f g) : Square f h where
  source := ⟨second.source.hom.comp first.source.hom,
    fun s _ hx => second.source.preserves s (first.source.preserves s hx)⟩
  target := ⟨second.target.hom.comp first.target.hom,
    fun s _ hx => second.target.preserves s (first.target.preserves s hx)⟩
  commutes x := by
    change second.target.hom (first.target.hom (f.hom x)) =
      h.hom (second.source.hom (first.source.hom x))
    rw [first.commutes,second.commutes]

theorem sourceMap_identity (s n : Nat) (x : SourcePage F G f s n) :
    sourceMap (identity f) s n x = x := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) x
  rfl

theorem targetMap_identity (t n : Nat) (y : AllTargetPage F G f t n) :
    targetMap (identity f) t n y = y := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f t n) y
  rfl

theorem pageMap_identity (n t : Nat) (x : Page F G f n t) :
    pageMap (identity f) n t x = x :=
  Prod.ext (sourceMap_identity t n x.1) (targetMap_identity t n x.2)

theorem sourceMap_zero (s n : Nat) (x : SourcePage F G f s n) :
    sourceMap (zeroSquare f g) s n x = 0 := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) x
  exact map_zero (sourceClass H K g s n)

theorem targetMap_zero (t n : Nat) (y : AllTargetPage F G f t n) :
    targetMap (zeroSquare f g) t n y = 0 := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f t n) y
  exact map_zero (QuotientAddGroup.mk' (allTargetSubgroup H K g t n))

theorem pageMap_zero (n t : Nat) (x : Page F G f n t) :
    pageMap (zeroSquare f g) n t x = 0 :=
  Prod.ext (sourceMap_zero t n x.1) (targetMap_zero t n x.2)

theorem sourceMap_compose (second : Square g h) (first : Square f g)
    (s n : Nat) (x : SourcePage F G f s n) :
    sourceMap (compose second first) s n x = sourceMap second s n (sourceMap first s n x) := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) x
  rfl

theorem targetMap_compose (second : Square g h) (first : Square f g)
    (t n : Nat) (y : AllTargetPage F G f t n) :
    targetMap (compose second first) t n y = targetMap second t n (targetMap first t n y) := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f t n) y
  rfl

theorem pageMap_compose (second : Square g h) (first : Square f g)
    (n t : Nat) (x : Page F G f n t) :
    pageMap (compose second first) n t x = pageMap second n t (pageMap first n t x) :=
  Prod.ext (sourceMap_compose second first t n x.1) (targetMap_compose second first t n x.2)

#print axioms pageMap_identity
#print axioms pageMap_zero
#print axioms pageMap_compose
end FilteredTwoTermNaturality
