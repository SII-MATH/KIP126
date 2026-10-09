import FilteredTwoTermLimit.Basic
import Mathlib.Data.Finset.Lattice.Fold

namespace FilteredFiniteSourceLimit
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredMapKernelGraded FilteredMapCokernelGraded FilteredTwoTermSequence FilteredTwoTermLimit

variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

/-- Separation concerns the actual target group, not a finite row table. -/
def Separated : Prop := ∀ y : B, (∀ i, y ∈ G.group i) → y = 0

theorem kernelToSource_surjective_of_image (s n : Nat)
    (detects : ∀ x : A, f.hom x ∈ G.group (s+n) → f.hom x = 0) :
    Function.Surjective (kernelToSource F G f s n) := by
  intro a
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) a
  let k : (kernelFiltration F G f).group s :=
    ⟨⟨x.val,detects x.val x.property.2⟩,x.property.1⟩
  exact ⟨gradedClass (kernelFiltration F G f) s k,rfl⟩

/-- A finite source needs only separation of the target filtration: finitely
many nonzero images can be excluded at one common depth. -/
theorem finite_image_bound [Fintype A] (separated : Separated G) :
    ∃ q : Nat, ∀ x : A, f.hom x ∈ G.group q → f.hom x = 0 := by
  classical
  have excludes : ∀ x : A, ∃ q : Nat, f.hom x ∈ G.group q → f.hom x = 0 := by
    intro x
    by_cases h : f.hom x = 0
    · exact ⟨0,fun _ => h⟩
    · have missing : ∃ q, f.hom x ∉ G.group q := by
        by_contra none
        push Not at none
        exact h (separated _ none)
      obtain ⟨q,hq⟩ := missing
      exact ⟨q,fun hx => False.elim (hq hx)⟩
  choose depth atDepth using excludes
  refine ⟨Finset.univ.sup depth,?_⟩
  intro x hx
  apply atDepth x
  exact G.decreasing (Finset.le_sup (Finset.mem_univ x)) hx

noncomputable def sourceEquivKernelOfImage (q s n : Nat)
    (detects : ∀ x : A, f.hom x ∈ G.group q → f.hom x = 0) (late : q ≤ s+n) :
    SourcePage F G f s n ≃+ Graded (kernelFiltration F G f) s :=
  (AddEquiv.ofBijective (kernelToSource F G f s n)
    ⟨kernelToSource_injective F G f s n,
      kernelToSource_surjective_of_image F G f s n
        (fun x hx => detects x (G.decreasing late hx))⟩).symm

noncomputable def pageEquivOfImage (q t n : Nat)
    (detects : ∀ x : A, f.hom x ∈ G.group q → f.hom x = 0)
    (sourceLate : q ≤ t+n) (targetLate : t+1 ≤ n) :
    Page F G f n t ≃+ GradedHomology F G f t where
  toFun x := (sourceEquivKernelOfImage F G f q t n detects sourceLate x.1,
    targetStableEquiv F G f t n targetLate x.2)
  invFun x := ((sourceEquivKernelOfImage F G f q t n detects sourceLate).symm x.1,
    (targetStableEquiv F G f t n targetLate).symm x.2)
  left_inv x := by simp
  right_inv x := by simp
  map_add' x y := by simp

/-- Actual finite-source convergence is an existence theorem for additive
page comparisons. No global bound on the entire target group is assumed. -/
theorem finite_source_convergence [Fintype A] (separated : Separated G) :
    ∃ q : Nat, ∀ t n : Nat, q ≤ t+n → t+1 ≤ n →
      Nonempty (Page F G f n t ≃+ GradedHomology F G f t) := by
  obtain ⟨q,hq⟩ := finite_image_bound F G f separated
  exact ⟨q,fun t n hs ht => ⟨pageEquivOfImage F G f q t n hq hs ht⟩⟩

#print axioms kernelToSource_surjective_of_image
#print axioms finite_image_bound
#print axioms finite_source_convergence
end FilteredFiniteSourceLimit
