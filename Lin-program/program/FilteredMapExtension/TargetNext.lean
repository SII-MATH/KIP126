import FilteredMapExtension.NextPage

namespace FilteredMapExtension
open FilteredRepresentativeCrossing
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G) (s n : Nat)

theorem target_index : s+1+n = s+(n+1) := by omega

def targetShift : G.group (s+1+n) →+ G.group (s+(n+1)) where
  toFun y := ⟨y.val,by simpa only [target_index] using y.property⟩
  map_zero' := rfl
  map_add' _ _ := rfl

theorem target_relations_advance (y : B)
    (hy : y ∈ targetRelations F G f (s+1) n) :
    y ∈ targetRelations F G f s (n+1) := by
  obtain ⟨h,hh,he⟩ := (targetRelations_mem F G f (s+1) n y).mp hy
  apply (targetRelations_mem F G f s (n+1) y).mpr
  refine ⟨h,⟨F.decreasing (by omega) hh.1,?_⟩,?_⟩
  · change f.hom h ∈ G.group (s+(n+1))
    have low : f.hom h ∈ G.group (s+1+n) := hh.2
    simpa only [target_index] using low
  · simpa only [target_index] using he

/-- The target transition retains the underlying target representative, while
enlarging its relations by all images from the current source page. -/
def targetAdvance : TargetPage F G f (s+1) n →+ TargetPage F G f s (n+1) :=
  QuotientAddGroup.map (targetSubgroup F G f (s+1) n) (targetSubgroup F G f s (n+1))
    (targetShift G s n) (by
      intro y hy
      exact target_relations_advance F G f s n y.val hy)

theorem targetAdvance_class (y : G.group (s+1+n)) :
    targetAdvance F G f s n (targetClass F G f (s+1) n y) =
      targetClass F G f s (n+1) (targetShift G s n y) := rfl

theorem targetAdvance_surjective : Function.Surjective (targetAdvance F G f s n) := by
  intro a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (targetSubgroup F G f s (n+1)) a
  let old : G.group (s+1+n) := ⟨y.val,by simpa only [target_index] using y.property⟩
  refine ⟨targetClass F G f (s+1) n old,?_⟩
  exact congrArg (targetClass F G f s (n+1)) (Subtype.ext rfl)

theorem targetAdvance_differential (x : SourcePage F G f (s+1) n) :
    targetAdvance F G f s n (differential F G f (s+1) n x) = 0 := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f (s+1) n) x
  apply (QuotientAddGroup.eq_zero_iff _).mpr
  change f.hom a.val ∈ targetRelations F G f s (n+1)
  apply AddSubgroup.mem_sup_right
  refine AddSubgroup.mem_map.mpr ⟨a.val,⟨a.property.1,?_⟩,rfl⟩
  change f.hom a.val ∈ G.group (s+(n+1))
  have low : f.hom a.val ∈ G.group (s+1+n) := a.property.2
  simpa only [target_index] using low

/-- Every class killed by the target transition comes from the current actual
differential, by the higher-source witness in its new relation subgroup. -/
theorem targetAdvance_kernel : (targetAdvance F G f s n).ker =
    (differential F G f (s+1) n).range := by
  ext a
  constructor
  · intro ha
    obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (targetSubgroup F G f (s+1) n) a
    have mem := (QuotientAddGroup.eq_zero_iff (targetShift G s n y)).mp ha
    obtain ⟨h,hh,he⟩ := (targetRelations_mem F G f s (n+1) y.val).mp mem
    let x : cycles F G f (s+1) n := ⟨h,hh.1,by
      have low : f.hom h ∈ G.group (s+(n+1)) := hh.2
      change f.hom h ∈ G.group (s+1+n)
      simpa only [target_index] using low⟩
    refine ⟨sourceClass F G f (s+1) n x,?_⟩
    apply (targetClass_eq F G f (s+1) n (cycleMap F G f (s+1) n x) y).mpr
    change f.hom h-y.val ∈ targetRelations F G f (s+1) n
    apply AddSubgroup.mem_sup_left
    have hn := (G.group (s+(n+1)+1)).neg_mem he
    simpa only [neg_sub,target_index] using hn
  · rintro ⟨x,rfl⟩
    exact targetAdvance_differential F G f s n x

/-- The next target page is the actual cokernel of the current differential.
Together with nextPageEquivKernel this gives both sides of the two-term step. -/
noncomputable def targetNextEquivCokernel :
    ((TargetPage F G f (s+1) n) ⧸ (differential F G f (s+1) n).range) ≃+
      TargetPage F G f s (n+1) :=
  QuotientAddGroup.liftEquiv (differential F G f (s+1) n).range
    (targetAdvance_surjective F G f s n) (targetAdvance_kernel F G f s n).symm

theorem targetNextEquivCokernel_class (y : TargetPage F G f (s+1) n) :
    targetNextEquivCokernel F G f s n (QuotientAddGroup.mk' _ y) =
      targetAdvance F G f s n y := rfl

#print axioms targetAdvance
#print axioms targetAdvance_surjective
#print axioms targetAdvance_kernel
#print axioms targetNextEquivCokernel
end FilteredMapExtension
