import FilteredMapExtension.Crossing

namespace FilteredMapGradedComparison
open FilteredRepresentativeCrossing FilteredMapExtension GeneralizedLeibnizAudit
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]

def gradedRelations (F : Filtration A) (s : Nat) : AddSubgroup (F.group s) :=
  (F.group (s+1)).addSubgroupOf (F.group s)

abbrev Graded (F : Filtration A) (s : Nat) := (F.group s) ⧸ gradedRelations F s

def gradedClass (F : Filtration A) (s : Nat) : F.group s →+ Graded F s :=
  QuotientAddGroup.mk' (gradedRelations F s)

theorem gradedClass_eq (F : Filtration A) (s : Nat) (x y : F.group s) :
    gradedClass F s x = gradedClass F s y ↔ x.val-y.val ∈ F.group (s+1) :=
  QuotientAddGroup.eq_iff_sub_mem

variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G) (s n : Nat)

def cycleLeading : cycles F G f s n →+ Graded F s :=
  (gradedClass F s).comp
    { toFun := fun x => ⟨x.val,x.property.1⟩
      map_zero' := rfl
      map_add' := fun _ _ => rfl }

def sourceToGraded : SourcePage F G f s n →+ Graded F s :=
  QuotientAddGroup.lift (sourceRelations F G f s n) (cycleLeading F G f s n) (by
    intro x hx
    apply (QuotientAddGroup.eq_zero_iff _).mpr
    exact hx.1)

theorem sourceToGraded_class (x : cycles F G f s n) :
    sourceToGraded F G f s n (sourceClass F G f s n x) =
      gradedClass F s ⟨x.val,x.property.1⟩ := rfl

theorem sourceToGraded_injective : Function.Injective (sourceToGraded F G f s n) := by
  intro a b eq
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) b
  apply (sourceClass_eq F G f s n x y).mpr
  refine ⟨(gradedClass_eq F s _ _).mp eq,?_⟩
  change f.hom (x.val-y.val) ∈ G.group (s+n)
  rw [map_sub]
  exact (G.group (s+n)).sub_mem x.property.2 y.property.2

/-- Surviving leading classes are an actual subgroup of the initial graded group. -/
def survivingLeading : AddSubgroup (Graded F s) := (sourceToGraded F G f s n).range

noncomputable def sourceEquivSurviving : SourcePage F G f s n ≃+ survivingLeading F G f s n :=
  AddEquiv.ofBijective (sourceToGraded F G f s n).rangeRestrict
    ⟨fun _ _ h => sourceToGraded_injective F G f s n (congrArg Subtype.val h),by
      rintro ⟨a,⟨x,hx⟩⟩
      exact ⟨x,Subtype.ext hx⟩⟩

theorem survivingLeading_iff (x : F.group s) :
    gradedClass F s x ∈ survivingLeading F G f s n ↔
      ∃ a ∈ F.group s, a-x.val ∈ F.group (s+1) ∧ f.hom a ∈ G.group (s+n) := by
  constructor
  · rintro ⟨a,eq⟩
    obtain ⟨z,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) a
    exact ⟨z.val,z.property.1,(gradedClass_eq F s _ _).mp eq,z.property.2⟩
  · rintro ⟨a,ha,same,image⟩
    exact ⟨sourceClass F G f s n ⟨a,ha,image⟩,(gradedClass_eq F s _ _).mpr same⟩

/-- Earlier target boundaries, viewed in the actual associated graded target. -/
def earlierBoundaries : AddSubgroup (Graded G (s+n)) :=
  (targetSubgroup F G f s n).map (gradedClass G (s+n))

theorem gradedRelations_le_target : gradedRelations G (s+n) ≤ targetSubgroup F G f s n := by
  intro y hy
  exact AddSubgroup.mem_sup_left hy

/-- The target page is the initial associated graded target modulo all earlier
boundary classes, via the third isomorphism theorem, not an assumed identification. -/
def targetGradedEquiv : (Graded G (s+n) ⧸ earlierBoundaries F G f s n) ≃+
    TargetPage F G f s n :=
  QuotientAddGroup.quotientQuotientEquivQuotient (gradedRelations G (s+n))
    (targetSubgroup F G f s n) (gradedRelations_le_target F G f s n)

theorem targetGradedEquiv_class (y : G.group (s+n)) :
    targetGradedEquiv F G f s n (QuotientAddGroup.mk' _ (gradedClass G (s+n) y)) =
      targetClass F G f s n y := rfl

theorem earlierBoundaries_iff (y : G.group (s+n)) :
    gradedClass G (s+n) y ∈ earlierBoundaries F G f s n ↔
      ∃ h ∈ F.group (s+1), f.hom h ∈ G.group (s+n) ∧
        y.val-f.hom h ∈ G.group (s+n+1) := by
  constructor
  · rintro ⟨z,hz,eq⟩
    obtain ⟨h,hh,he⟩ := (targetRelations_mem F G f s n z.val).mp hz
    refine ⟨h,hh.1,hh.2,?_⟩
    have same : y.val-z.val ∈ G.group (s+n+1) :=
      (gradedClass_eq G (s+n) y z).mp eq.symm
    convert (G.group (s+n+1)).add_mem same he using 1 <;> abel
  · rintro ⟨h,higher,image,eq⟩
    refine ⟨y,?_,rfl⟩
    exact (targetRelations_mem F G f s n y.val).mpr ⟨h,⟨higher,image⟩,eq⟩

def sourceZeroEquiv : SourcePage F G f s 0 ≃+ Graded F s :=
  QuotientAddGroup.equivQuotientAddSubgroupOfOfEq (corrections_zero F G f s) (cycles_zero F G f s)

def targetZeroEquiv : TargetPage F G f s 0 ≃+ Graded G s :=
  QuotientAddGroup.equivQuotientAddSubgroupOfOfEq (targetRelations_zero F G f s) rfl

theorem sourceZeroEquiv_class (x : cycles F G f s 0) :
    sourceZeroEquiv F G f s (sourceClass F G f s 0 x) =
      gradedClass F s ⟨x.val,x.property.1⟩ := rfl

theorem targetZeroEquiv_class (y : G.group (s+0)) :
    targetZeroEquiv F G f s (targetClass F G f s 0 y) = gradedClass G s y := rfl

#print axioms sourceToGraded_injective
#print axioms sourceEquivSurviving
#print axioms survivingLeading_iff
#print axioms targetGradedEquiv
#print axioms earlierBoundaries_iff
#print axioms sourceZeroEquiv
#print axioms targetZeroEquiv
end FilteredMapGradedComparison
