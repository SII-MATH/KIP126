import FilteredMapGradedComparison.Recurrence

namespace FilteredMapGradedComparison
open FilteredRepresentativeCrossing FilteredMapExtension
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

/-- At a fixed target degree t, the first possible source for a previous
differential is t+1-n. After passing source degree zero, all F_0 is included. -/
def incomingRepresentatives (t n : Nat) : AddSubgroup A :=
  F.group (t+1-n) ⊓ (G.group t).comap f.hom

def allTargetRelations (t n : Nat) : AddSubgroup B :=
  G.group (t+1) ⊔ (incomingRepresentatives F G f t n).map f.hom

def allTargetSubgroup (t n : Nat) : AddSubgroup (G.group t) :=
  (allTargetRelations F G f t n).addSubgroupOf (G.group t)

abbrev AllTargetPage (t n : Nat) := (G.group t) ⧸ allTargetSubgroup F G f t n

theorem allTargetRelations_le (t n : Nat) : allTargetRelations F G f t n ≤ G.group t := by
  apply sup_le
  · exact G.decreasing (by omega)
  · rintro _ ⟨a,ha,rfl⟩
    exact ha.2

theorem allTargetRelations_local (s n : Nat) :
    allTargetRelations F G f (s+n) n = targetRelations F G f s n := by
  have index : s+n+1-n = s+1 := by omega
  simp only [allTargetRelations,incomingRepresentatives,targetRelations,corrections,index]

def allTargetEquivLocal (s n : Nat) : AllTargetPage F G f (s+n) n ≃+ TargetPage F G f s n :=
  QuotientAddGroup.equivQuotientAddSubgroupOfOfEq (allTargetRelations_local F G f s n) rfl

theorem allTargetRelations_zero (t : Nat) : allTargetRelations F G f t 0 = G.group (t+1) := by
  apply le_antisymm
  · apply sup_le le_rfl
    rintro _ ⟨a,ha,rfl⟩
    exact f.preserves (t+1) ha.1
  · exact le_sup_left

def allTargetZeroEquiv (t : Nat) : AllTargetPage F G f t 0 ≃+ Graded G t :=
  QuotientAddGroup.equivQuotientAddSubgroupOfOfEq (allTargetRelations_zero F G f t) rfl

theorem allTargetRelations_monotone (t : Nat) : Monotone (allTargetRelations F G f t) := by
  intro n m hnm
  apply sup_le_sup_left
  apply AddSubgroup.map_mono
  apply inf_le_inf_right
  exact F.decreasing (Nat.sub_le_sub_left hnm (t+1))

def allTargetAdvance (t n : Nat) : AllTargetPage F G f t n →+ AllTargetPage F G f t (n+1) :=
  QuotientAddGroup.map (allTargetSubgroup F G f t n) (allTargetSubgroup F G f t (n+1))
    (AddMonoidHom.id _) (fun _ h => allTargetRelations_monotone F G f t (by omega) h)

theorem allTargetAdvance_surjective (t n : Nat) : Function.Surjective (allTargetAdvance F G f t n) := by
  intro a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f t (n+1)) a
  exact ⟨QuotientAddGroup.mk' _ y,rfl⟩

/-- After every nonnegative source filtration has contributed, there are no
new incoming groups. This explicitly covers n>t instead of misindexing a local page. -/
theorem allTargetRelations_stable (t n : Nat) (bound : t+1 ≤ n) :
    allTargetRelations F G f t n = allTargetRelations F G f t (t+1) := by
  simp [allTargetRelations,incomingRepresentatives,Nat.sub_eq_zero_of_le bound]

theorem allTargetRelations_final (t : Nat) : allTargetRelations F G f t (t+1) =
    G.group (t+1) ⊔ ((F.group 0).map f.hom ⊓ G.group t) := by
  unfold allTargetRelations incomingRepresentatives
  simp only [Nat.sub_self]
  congr 1
  ext y
  constructor
  · rintro ⟨a,ha,rfl⟩
    exact ⟨⟨a,ha.1,rfl⟩,ha.2⟩
  · rintro ⟨⟨a,ha,rfl⟩,image⟩
    exact ⟨a,⟨ha,image⟩,rfl⟩

theorem allTargetRelations_next_local (s n : Nat) :
    allTargetRelations F G f (s+n) (n+1) =
      G.group (s+n+1) ⊔ (cycles F G f s n).map f.hom := by
  have index : s+n+1-(n+1) = s := by omega
  simp only [allTargetRelations,incomingRepresentatives,cycles,index]

def localToNextTarget (s n : Nat) : TargetPage F G f s n →+ AllTargetPage F G f (s+n) (n+1) :=
  (allTargetAdvance F G f (s+n) n).comp (allTargetEquivLocal F G f s n).symm.toAddMonoidHom

theorem localToNextTarget_class (s n : Nat) (y : G.group (s+n)) :
    localToNextTarget F G f s n (targetClass F G f s n y) =
      QuotientAddGroup.mk' (allTargetSubgroup F G f (s+n) (n+1)) y := rfl

theorem localToNextTarget_surjective (s n : Nat) : Function.Surjective (localToNextTarget F G f s n) := by
  intro a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f (s+n) (n+1)) a
  exact ⟨targetClass F G f s n y,rfl⟩

/-- At every nonnegative source degree, including degree zero, the next
fixed-target page kills exactly the current differential image. -/
theorem localToNextTarget_kernel (s n : Nat) : (localToNextTarget F G f s n).ker =
    (differential F G f s n).range := by
  ext a
  constructor
  · intro ha
    obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (targetSubgroup F G f s n) a
    have mem := (QuotientAddGroup.eq_zero_iff y).mp ha
    change y.val ∈ allTargetRelations F G f (s+n) (n+1) at mem
    rw [allTargetRelations_next_local] at mem
    obtain ⟨b,hb,z,⟨x,hx,rfl⟩,eq⟩ := AddSubgroup.mem_sup.mp mem
    refine ⟨sourceClass F G f s n ⟨x,hx⟩,?_⟩
    apply (targetClass_eq F G f s n (cycleMap F G f s n ⟨x,hx⟩) y).mpr
    apply AddSubgroup.mem_sup_left
    change f.hom x-y.val ∈ G.group (s+n+1)
    rw [← eq]
    convert (G.group (s+n+1)).neg_mem hb using 1 <;> abel
  · rintro ⟨x,rfl⟩
    obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) x
    apply (QuotientAddGroup.eq_zero_iff _).mpr
    change f.hom a.val ∈ allTargetRelations F G f (s+n) (n+1)
    rw [allTargetRelations_next_local]
    exact AddSubgroup.mem_sup_right ⟨a.val,a.property,rfl⟩

noncomputable def allTargetNextEquivCokernel (s n : Nat) :
    (TargetPage F G f s n ⧸ (differential F G f s n).range) ≃+
      AllTargetPage F G f (s+n) (n+1) :=
  QuotientAddGroup.liftEquiv (differential F G f s n).range
    (localToNextTarget_surjective F G f s n) (localToNextTarget_kernel F G f s n).symm

#print axioms allTargetEquivLocal
#print axioms allTargetZeroEquiv
#print axioms allTargetAdvance_surjective
#print axioms allTargetRelations_stable
#print axioms allTargetRelations_final
#print axioms localToNextTarget_kernel
#print axioms allTargetNextEquivCokernel
end FilteredMapGradedComparison
