import FilteredMapGradedComparison.Event

namespace FilteredMapGradedComparison
open FilteredRepresentativeCrossing FilteredMapExtension GeneralizedLeibnizAudit
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G) (s n : Nat)

theorem sourceLeading_next (a : SourcePage F G f s (n+1)) :
    sourceToGraded F G f s n (nextToCurrent F G f s n a) =
      sourceToGraded F G f s (n+1) a := by
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s (n+1)) a
  rfl

theorem surviving_next_le : survivingLeading F G f s (n+1) ≤ survivingLeading F G f s n := by
  rintro _ ⟨a,rfl⟩
  exact ⟨nextToCurrent F G f s n a,sourceLeading_next F G f s n a⟩

/-- In the fixed initial graded source, surviving through the next length is
exactly membership in the current survivor subgroup with vanishing differential. -/
theorem surviving_next_iff (a : Graded F s) :
    a ∈ survivingLeading F G f s (n+1) ↔
      ∃ ha : a ∈ survivingLeading F G f s n,
        leadingDifferential F G f s n ⟨a,ha⟩ = 0 := by
  constructor
  · rintro ⟨b,hb⟩
    let z := nextToCurrent F G f s n b
    have hz : sourceToGraded F G f s n z = a := (sourceLeading_next F G f s n b).trans hb
    refine ⟨⟨z,hz⟩,?_⟩
    have eq : (⟨a,⟨z,hz⟩⟩ : survivingLeading F G f s n) = sourceEquivSurviving F G f s n z :=
      Subtype.ext hz.symm
    rw [eq]
    apply (targetGradedEquiv F G f s n).injective
    rw [leadingDifferential_commutes,map_zero]
    exact nextToCurrent_cycle F G f s n b
  · rintro ⟨ha,zero⟩
    let z := (sourceEquivSurviving F G f s n).symm ⟨a,ha⟩
    have hz : differential F G f s n z = 0 := by
      have he := leadingDifferential_commutes F G f s n z
      rw [(sourceEquivSurviving F G f s n).apply_symm_apply] at he
      rw [zero,map_zero] at he
      exact he.symm
    obtain ⟨b,hb⟩ := current_cycle_has_next F G f s n z hz
    refine ⟨b,?_⟩
    rw [← sourceLeading_next F G f s n b,hb]
    exact congrArg Subtype.val ((sourceEquivSurviving F G f s n).apply_symm_apply ⟨a,ha⟩)

theorem surviving_zero : survivingLeading F G f s 0 = ⊤ := by
  ext a
  simp only [AddSubgroup.mem_top,iff_true]
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (gradedRelations F s) a
  apply (survivingLeading_iff F G f s 0 x).mpr
  exact ⟨x.val,x.property,by simpa only [sub_self] using (F.group (s+1)).zero_mem,
    f.preserves s x.property⟩

theorem boundaries_zero : earlierBoundaries F G f s 0 = ⊥ := by
  ext a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (gradedRelations G (s+0)) a
  change gradedClass G (s+0) y ∈ earlierBoundaries F G f s 0 ↔ gradedClass G (s+0) y ∈ ⊥
  rw [earlierBoundaries_iff]
  constructor
  · rintro ⟨h,hh,_,eq⟩
    apply (QuotientAddGroup.eq_zero_iff _).mpr
    change y.val ∈ G.group (s+1)
    have image := f.preserves (s+1) hh
    simpa only [sub_add_cancel] using (G.group (s+1)).add_mem eq image
  · intro hz
    have hy := (QuotientAddGroup.eq_zero_iff y).mp hz
    change y.val ∈ G.group (s+1) at hy
    exact ⟨0,(F.group (s+1)).zero_mem,by simp,by simpa using hy⟩

/-- The associated-graded target quotient advances by killing exactly the
current differential range, with the target filtration held fixed. -/
noncomputable def gradedTargetAdvance :
    (Graded G (s+1+n) ⧸ earlierBoundaries F G f (s+1) n) →+
      (Graded G (s+(n+1)) ⧸ earlierBoundaries F G f s (n+1)) :=
  ((targetGradedEquiv F G f s (n+1)).symm.toAddMonoidHom).comp
    ((targetAdvance F G f s n).comp (targetGradedEquiv F G f (s+1) n).toAddMonoidHom)

theorem gradedTargetAdvance_surjective : Function.Surjective (gradedTargetAdvance F G f s n) := by
  intro a
  obtain ⟨b,hb⟩ := targetAdvance_surjective F G f s n (targetGradedEquiv F G f s (n+1) a)
  refine ⟨(targetGradedEquiv F G f (s+1) n).symm b,?_⟩
  simp [gradedTargetAdvance,hb]

theorem gradedTargetAdvance_kernel :
    (gradedTargetAdvance F G f s n).ker = (leadingDifferential F G f (s+1) n).range := by
  ext a
  constructor
  · intro ha
    have killed : targetAdvance F G f s n (targetGradedEquiv F G f (s+1) n a) = 0 := by
      have eq := congrArg (targetGradedEquiv F G f s (n+1)) ha
      simpa [gradedTargetAdvance] using eq
    have mem : targetGradedEquiv F G f (s+1) n a ∈ (differential F G f (s+1) n).range := by
      rw [← targetAdvance_kernel F G f s n]
      exact killed
    obtain ⟨x,hx⟩ := mem
    refine ⟨sourceEquivSurviving F G f (s+1) n x,?_⟩
    apply (targetGradedEquiv F G f (s+1) n).injective
    rw [leadingDifferential_commutes]
    exact hx
  · rintro ⟨x,rfl⟩
    change gradedTargetAdvance F G f s n (leadingDifferential F G f (s+1) n x) = 0
    simp only [gradedTargetAdvance,leadingDifferential,AddMonoidHom.comp_apply,
      AddEquiv.toAddMonoidHom_eq_coe,AddMonoidHom.coe_coe,AddEquiv.apply_symm_apply]
    rw [targetAdvance_differential,map_zero]

instance leadingQuotientCommGroup : AddCommGroup (Graded G (s+n) ⧸ earlierBoundaries F G f s n) := by
  unfold Graded earlierBoundaries gradedClass gradedRelations
  infer_instance

noncomputable def gradedTargetNextEquivCokernel :
    ((Graded G ((s+1)+n) ⧸ earlierBoundaries F G f (s+1) n) ⧸
      (leadingDifferential F G f (s+1) n).range) ≃+
      (Graded G (s+(n+1)) ⧸ earlierBoundaries F G f s (n+1)) :=
  QuotientAddGroup.liftEquiv (leadingDifferential F G f (s+1) n).range
    (gradedTargetAdvance_surjective F G f s n) (gradedTargetAdvance_kernel F G f s n).symm

/-- A next boundary in the initial graded target is exactly a current
differential image after reducing modulo the earlier boundaries. -/
theorem boundaries_step_iff_image (y : G.group (s+1+n)) :
    gradedClass G (s+(n+1)) (targetShift G s n y) ∈ earlierBoundaries F G f s (n+1) ↔
      ∃ x : SourcePage F G f (s+1) n,
        differential F G f (s+1) n x = targetClass F G f (s+1) n y := by
  have next_zero :
      gradedClass G (s+(n+1)) (targetShift G s n y) ∈ earlierBoundaries F G f s (n+1) ↔
      targetClass F G f s (n+1) (targetShift G s n y) = 0 := by
    have h := essential_target_iff F G f s (n+1) (targetShift G s n y)
    exact not_iff_not.mp h.symm
  rw [next_zero]
  change targetAdvance F G f s n (targetClass F G f (s+1) n y) = 0 ↔ _
  change targetClass F G f (s+1) n y ∈ (targetAdvance F G f s n).ker ↔ _
  rw [targetAdvance_kernel]
  rfl

#print axioms surviving_next_iff
#print axioms surviving_zero
#print axioms boundaries_zero
#print axioms gradedTargetAdvance_kernel
#print axioms gradedTargetNextEquivCokernel
#print axioms boundaries_step_iff_image
end FilteredMapGradedComparison
