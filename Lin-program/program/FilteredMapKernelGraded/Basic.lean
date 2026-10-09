import FilteredMapGradedComparison.AllTargets

namespace FilteredMapKernelGraded
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison

variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

/-- The kernel carries the filtration induced from the given source group. -/
def kernelFiltration : Filtration f.hom.ker where
  group s := (F.group s).comap f.hom.ker.subtype
  decreasing := by
    intro i j h x hx
    exact F.decreasing h hx

def kernelRepresentative (s n : Nat) : (kernelFiltration F G f).group s →+
    cycles F G f s n where
  toFun x := ⟨x.val.val, x.property, by
    change f.hom x.val.val ∈ G.group (s+n)
    rw [x.val.property]
    exact (G.group (s+n)).zero_mem⟩
  map_zero' := rfl
  map_add' _ _ := rfl

def kernelLeading (s n : Nat) : (kernelFiltration F G f).group s →+ SourcePage F G f s n :=
  (sourceClass F G f s n).comp (kernelRepresentative F G f s n)

theorem kernelLeading_relations (s n : Nat) : gradedRelations (kernelFiltration F G f) s ≤
    (kernelLeading F G f s n).ker := by
  intro x hx
  apply (QuotientAddGroup.eq_zero_iff _).mpr
  change x.val.val ∈ corrections F G f s n
  refine ⟨hx, ?_⟩
  change f.hom x.val.val ∈ G.group (s+n)
  rw [x.val.property]
  exact (G.group (s+n)).zero_mem

def kernelToSource (s n : Nat) : Graded (kernelFiltration F G f) s →+ SourcePage F G f s n :=
  QuotientAddGroup.lift (gradedRelations (kernelFiltration F G f) s)
    (kernelLeading F G f s n) (kernelLeading_relations F G f s n)

theorem kernelToSource_class (s n : Nat) (x : (kernelFiltration F G f).group s) :
    kernelToSource F G f s n (gradedClass (kernelFiltration F G f) s x) =
      sourceClass F G f s n (kernelRepresentative F G f s n x) := rfl

/-- Actual kernel classes inject into every finite source page. -/
theorem kernelToSource_injective (s n : Nat) : Function.Injective (kernelToSource F G f s n) := by
  intro a b h
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (gradedRelations (kernelFiltration F G f) s) a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (gradedRelations (kernelFiltration F G f) s) b
  apply (gradedClass_eq (kernelFiltration F G f) s x y).mpr
  exact ((sourceClass_eq F G f s n _ _).mp h).1

/-- A vanishing target filtration gives actual kernel representatives for
every survivor, without choosing an infinite compatible lift. -/
theorem kernelToSource_surjective (s n : Nat) (bounded : G.group (s+n) = ⊥) :
    Function.Surjective (kernelToSource F G f s n) := by
  intro a
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) a
  have killed : f.hom x.val = 0 := by
    have hx := x.property.2
    rw [bounded] at hx
    exact hx
  let k : (kernelFiltration F G f).group s := ⟨⟨x.val,killed⟩,x.property.1⟩
  exact ⟨gradedClass (kernelFiltration F G f) s k,rfl⟩

noncomputable def kernelGradedEquivSource (s n : Nat) (bounded : G.group (s+n) = ⊥) :
    Graded (kernelFiltration F G f) s ≃+ SourcePage F G f s n :=
  AddEquiv.ofBijective (kernelToSource F G f s n)
    ⟨kernelToSource_injective F G f s n,kernelToSource_surjective F G f s n bounded⟩

theorem later_target_zero (q s n : Nat) (bounded : G.group q = ⊥) (later : q ≤ s+n) :
    G.group (s+n) = ⊥ := by
  apply le_antisymm _ bot_le
  exact bounded ▸ G.decreasing later

/-- Bounded target filtrations give a concrete stable source comparison.
No boundedness of an actual Adams filtration is inferred from finite data. -/
noncomputable def stableSourceEquivKernel (q s n : Nat)
    (bounded : G.group q = ⊥) (later : q ≤ s+n) :
    SourcePage F G f s n ≃+ Graded (kernelFiltration F G f) s :=
  (kernelGradedEquivSource F G f s n (later_target_zero G q s n bounded later)).symm

#print axioms kernelToSource
#print axioms kernelToSource_injective
#print axioms kernelToSource_surjective
#print axioms kernelGradedEquivSource
#print axioms stableSourceEquivKernel
end FilteredMapKernelGraded
