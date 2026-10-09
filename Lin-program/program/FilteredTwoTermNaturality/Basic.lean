import FilteredTwoTermSequence.Basic

namespace FilteredTwoTermNaturality
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence

variable {A B C D : Type*} [AddCommGroup A] [AddCommGroup B] [AddCommGroup C] [AddCommGroup D]
variable {F : Filtration A} {G : Filtration B} {H : Filtration C} {K : Filtration D}
variable {f : FilteredMap F G} {g : FilteredMap H K}

/-- Only underlying filtered homomorphisms and their ordinary commuting
square are supplied. No page map or page-naturality field is assumed. -/
structure Square (f : FilteredMap F G) (g : FilteredMap H K) where
  source : FilteredMap F H
  target : FilteredMap G K
  commutes : ∀ x, target.hom (f.hom x) = g.hom (source.hom x)

variable (sq : Square f g)

theorem map_cycles (s n : Nat) {x : A} (hx : x ∈ cycles F G f s n) :
    sq.source.hom x ∈ cycles H K g s n := by
  refine ⟨sq.source.preserves s hx.1,?_⟩
  change g.hom (sq.source.hom x) ∈ K.group (s+n)
  rw [← sq.commutes]
  exact sq.target.preserves (s+n) hx.2

theorem map_corrections (s n : Nat) {x : A} (hx : x ∈ corrections F G f s n) :
    sq.source.hom x ∈ corrections H K g s n := by
  refine ⟨sq.source.preserves (s+1) hx.1,?_⟩
  change g.hom (sq.source.hom x) ∈ K.group (s+n)
  rw [← sq.commutes]
  exact sq.target.preserves (s+n) hx.2

def cycleHom (s n : Nat) : cycles F G f s n →+ cycles H K g s n where
  toFun x := ⟨sq.source.hom x.val,map_cycles sq s n x.property⟩
  map_zero' := Subtype.ext (map_zero sq.source.hom)
  map_add' x y := Subtype.ext (map_add sq.source.hom x.val y.val)

def sourceMap (s n : Nat) : SourcePage F G f s n →+ SourcePage H K g s n :=
  QuotientAddGroup.map (sourceRelations F G f s n) (sourceRelations H K g s n)
    (cycleHom sq s n) (fun x hx => map_corrections sq s n hx)

@[simp] theorem sourceMap_class (s n : Nat) (x : cycles F G f s n) :
    sourceMap sq s n (sourceClass F G f s n x) =
      sourceClass H K g s n (cycleHom sq s n x) := rfl

def targetHom (t : Nat) : G.group t →+ K.group t where
  toFun y := ⟨sq.target.hom y.val,sq.target.preserves t y.property⟩
  map_zero' := Subtype.ext (map_zero sq.target.hom)
  map_add' x y := Subtype.ext (map_add sq.target.hom x.val y.val)

theorem map_allTargetRelations (t n : Nat) {y : B}
    (hy : y ∈ allTargetRelations F G f t n) :
    sq.target.hom y ∈ allTargetRelations H K g t n := by
  obtain ⟨u,hu,v,⟨x,hx,rfl⟩,eq⟩ := AddSubgroup.mem_sup.mp hy
  rw [← eq,map_add,sq.commutes]
  apply AddSubgroup.add_mem
  · exact AddSubgroup.mem_sup_left (sq.target.preserves (t+1) hu)
  · apply AddSubgroup.mem_sup_right
    refine AddSubgroup.mem_map.mpr ⟨sq.source.hom x,⟨sq.source.preserves (t+1-n) hx.1,?_⟩,rfl⟩
    change g.hom (sq.source.hom x) ∈ K.group t
    rw [← sq.commutes]
    exact sq.target.preserves t hx.2

def targetMap (t n : Nat) : AllTargetPage F G f t n →+ AllTargetPage H K g t n :=
  QuotientAddGroup.map (allTargetSubgroup F G f t n) (allTargetSubgroup H K g t n)
    (targetHom sq t) (fun y hy => map_allTargetRelations sq t n hy)

@[simp] theorem targetMap_class (t n : Nat) (y : G.group t) :
    targetMap sq t n (QuotientAddGroup.mk' (allTargetSubgroup F G f t n) y) =
      QuotientAddGroup.mk' (allTargetSubgroup H K g t n) (targetHom sq t y) := rfl

theorem targetD_natural (s n : Nat) (x : SourcePage F G f s n) :
    targetMap sq (s+n) n (targetD F G f s n x) =
      targetD H K g s n (sourceMap sq s n x) := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) x
  change QuotientAddGroup.mk' (allTargetSubgroup H K g (s+n) n)
    (targetHom sq (s+n) (cycleMap F G f s n a)) =
      QuotientAddGroup.mk' (allTargetSubgroup H K g (s+n) n)
        (cycleMap H K g s n (cycleHom sq s n a))
  apply congrArg (QuotientAddGroup.mk' _)
  exact Subtype.ext (sq.commutes a.val)

def pageMap (n t : Nat) : Page F G f n t →+ Page H K g n t where
  toFun x := (sourceMap sq t n x.1,targetMap sq t n x.2)
  map_zero' := by simp
  map_add' x y := by simp

theorem pageD_natural (n t : Nat) (x : Page F G f n t) :
    pageMap sq n (t+n) (pageD F G f n t x) =
      pageD H K g n t (pageMap sq n t x) := by
  apply Prod.ext
  · exact map_zero _
  · exact targetD_natural sq t n x.1

theorem source_next_natural (s n : Nat) (x : SourcePage F G f s (n+1)) :
    sourceMap sq s n (nextToCurrent F G f s n x) =
      nextToCurrent H K g s n (sourceMap sq s (n+1) x) := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s (n+1)) x
  rfl

theorem target_advance_natural (t n : Nat) (y : AllTargetPage F G f t n) :
    targetMap sq t (n+1) (allTargetAdvance F G f t n y) =
      allTargetAdvance H K g t n (targetMap sq t n y) := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f t n) y
  rfl

#print axioms sourceMap
#print axioms targetMap
#print axioms targetD_natural
#print axioms pageD_natural
#print axioms source_next_natural
#print axioms target_advance_natural
end FilteredTwoTermNaturality
