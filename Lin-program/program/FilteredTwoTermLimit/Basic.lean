import FilteredTwoTermSequence.Homology
import FilteredMapKernelGraded.Basic
import FilteredMapCokernelGraded.Conditions

namespace FilteredTwoTermLimit
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence FilteredMapKernelGraded FilteredMapCokernelGraded

variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

/-- The actual kernel and restricted cokernel carry their induced filtrations. -/
abbrev GradedHomology (t : Nat) :=
  Graded (kernelFiltration F G f) t × Graded (cokernelFiltration F G f) t

noncomputable def targetStableEquiv (t n : Nat) (late : t+1 ≤ n) :
    AllTargetPage F G f t n ≃+ Graded (cokernelFiltration F G f) t :=
  (QuotientAddGroup.equivQuotientAddSubgroupOfOfEq
    (allTargetRelations_stable F G f t n late) rfl).trans
      (allTargetsEquivCokernelGraded F G f t)

/-- At each fixed degree a bounded target filtration yields the expected
two-term stable page. Both the bound and the last incoming length are checked. -/
noncomputable def pageEquivHomology (q t n : Nat) (bounded : G.group q = ⊥)
    (sourceLate : q ≤ t+n) (targetLate : t+1 ≤ n) :
    Page F G f n t ≃+ GradedHomology F G f t where
  toFun x := (stableSourceEquivKernel F G f q t n bounded sourceLate x.1,
    targetStableEquiv F G f t n targetLate x.2)
  invFun x := ((stableSourceEquivKernel F G f q t n bounded sourceLate).symm x.1,
    (targetStableEquiv F G f t n targetLate).symm x.2)
  left_inv x := by simp
  right_inv x := by simp
  map_add' x y := by simp

/-- A concrete uniform page bound suffices at the given degree. -/
noncomputable def boundedPageEquivHomology (q t : Nat) (bounded : G.group q = ⊥) :
    Page F G f (q+t+1) t ≃+ GradedHomology F G f t :=
  pageEquivHomology F G f q t (q+t+1) bounded (by omega) (by omega)

theorem stable_differential_zero (q t n : Nat) (bounded : G.group q = ⊥)
    (sourceLate : q ≤ t+n) (x : Page F G f n t) : pageD F G f n t x = 0 := by
  obtain ⟨a,b⟩ := x
  obtain ⟨z,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f t n) a
  have killed : f.hom z.val = 0 := by
    have hz := z.property.2
    rw [later_target_zero G q t n bounded sourceLate] at hz
    exact hz
  have cy : cycleMap F G f t n z = 0 := Subtype.ext killed
  change (0,targetD F G f t n (sourceClass F G f t n z)) = (0,0)
  apply Prod.ext
  · rfl
  unfold targetD
  rw [AddMonoidHom.comp_apply,differential_class,cy,map_zero,map_zero]

#print axioms targetStableEquiv
#print axioms pageEquivHomology
#print axioms boundedPageEquivHomology
#print axioms stable_differential_zero
end FilteredTwoTermLimit
