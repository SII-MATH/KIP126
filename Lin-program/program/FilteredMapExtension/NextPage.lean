import FilteredMapExtension.Basic

namespace FilteredMapExtension
open FilteredRepresentativeCrossing
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G) (s n : Nat)

theorem cycles_next_le : cycles F G f s (n+1) ≤ cycles F G f s n := by
  intro x hx
  exact ⟨hx.1,G.decreasing (by omega) hx.2⟩

theorem corrections_next_le : corrections F G f s (n+1) ≤ corrections F G f s n := by
  intro x hx
  exact ⟨hx.1,G.decreasing (by omega) hx.2⟩

def includeNext : cycles F G f s (n+1) →+ cycles F G f s n where
  toFun x := ⟨x.val,cycles_next_le F G f s n x.property⟩
  map_zero' := rfl
  map_add' _ _ := rfl

/-- The next source page maps into the current one by its unchanged representative. -/
def nextToCurrent : SourcePage F G f s (n+1) →+ SourcePage F G f s n :=
  QuotientAddGroup.map (sourceRelations F G f s (n+1)) (sourceRelations F G f s n)
    (includeNext F G f s n) (by
      intro x hx
      exact corrections_next_le F G f s n hx)

theorem nextToCurrent_class (x : cycles F G f s (n+1)) :
    nextToCurrent F G f s n (sourceClass F G f s (n+1) x) =
      sourceClass F G f s n (includeNext F G f s n x) := rfl

theorem nextToCurrent_injective : Function.Injective (nextToCurrent F G f s n) := by
  intro a b he
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s (n+1)) a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s (n+1)) b
  apply (sourceClass_eq F G f s (n+1) x y).mpr
  have hh := (sourceClass_eq F G f s n
    (includeNext F G f s n x) (includeNext F G f s n y)).mp he
  refine ⟨hh.1,?_⟩
  change f.hom (x.val-y.val) ∈ G.group (s+(n+1))
  rw [map_sub]
  exact (G.group (s+(n+1))).sub_mem x.property.2 y.property.2

theorem nextToCurrent_cycle (a : SourcePage F G f s (n+1)) :
    differential F G f s n (nextToCurrent F G f s n a) = 0 := by
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s (n+1)) a
  apply (differential_zero_iff F G f s n (includeNext F G f s n x)).mpr
  refine ⟨0,(corrections F G f s n).zero_mem,?_⟩
  change f.hom (x.val-0) ∈ G.group (s+n+1)
  rw [sub_zero]
  exact x.property.2

/-- Vanishing of the quotient differential supplies a corrected representative
on the next page; the same source coset is retained. -/
theorem current_cycle_has_next (a : SourcePage F G f s n)
    (ha : differential F G f s n a = 0) :
    ∃ b, nextToCurrent F G f s n b = a := by
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) a
  obtain ⟨h,hh,higher⟩ := (differential_zero_iff F G f s n x).mp ha
  let y : cycles F G f s (n+1) := ⟨x.val-h,
    (F.group s).sub_mem x.property.1 ((corrections_le F G f s n hh).1),
    higher⟩
  refine ⟨sourceClass F G f s (n+1) y,?_⟩
  apply (sourceClass_eq F G f s n (includeNext F G f s n y) x).mpr
  change (x.val-h)-x.val ∈ corrections F G f s n
  simpa only [sub_sub_cancel_left] using (corrections F G f s n).neg_mem hh

def nextToKernel : SourcePage F G f s (n+1) →+ (differential F G f s n).ker where
  toFun a := ⟨nextToCurrent F G f s n a,nextToCurrent_cycle F G f s n a⟩
  map_zero' := Subtype.ext (map_zero (nextToCurrent F G f s n))
  map_add' a b := Subtype.ext (map_add (nextToCurrent F G f s n) a b)

/-- The next source page is exactly the kernel of the constructed current
differential, as an actual additive-group equivalence. -/
noncomputable def nextPageEquivKernel :
    SourcePage F G f s (n+1) ≃+ (differential F G f s n).ker :=
  AddEquiv.ofBijective (nextToKernel F G f s n) ⟨
    fun _ _ h => nextToCurrent_injective F G f s n (congrArg Subtype.val h),by
      intro a
      obtain ⟨b,hb⟩ := current_cycle_has_next F G f s n a.val a.property
      exact ⟨b,Subtype.ext hb⟩⟩

theorem nextPageEquivKernel_coe (x : SourcePage F G f s (n+1)) :
    (nextPageEquivKernel F G f s n x).val = nextToCurrent F G f s n x := rfl

#print axioms nextToCurrent
#print axioms nextToCurrent_injective
#print axioms current_cycle_has_next
#print axioms nextPageEquivKernel
end FilteredMapExtension
