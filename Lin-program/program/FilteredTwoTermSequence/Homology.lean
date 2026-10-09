import FilteredTwoTermSequence.Basic

namespace FilteredTwoTermSequence
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

def incomingTargetFromPage (n t : Nat) : Page F G f n (t-n) →+ AllTargetPage F G f t n :=
  (incomingD F G f t n).comp (AddMonoidHom.fst _ _)

/-- The actual full preceding page map, including its zero target summand. -/
def incomingPage (n t : Nat) : Page F G f n (t-n) →+ Page F G f n t :=
  Algebra.incoming (incomingTargetFromPage F G f n t)

def pageCast {t u n : Nat} (h : t = u) : Page F G f n t ≃+ Page F G f n u :=
  h ▸ AddEquiv.refl _

theorem pageCast_target {t u n : Nat} (h : t = u) (y : AllTargetPage F G f t n) :
    pageCast F G f h (0,y) = (0,targetCast F G f h y) := by
  subst u
  rfl

theorem incomingPage_is_pageD (n t : Nat) (h : n ≤ t) (x : Page F G f n (t-n)) :
    incomingPage F G f n t x =
      pageCast F G f (Nat.sub_add_cancel h) (pageD F G f n (t-n) x) := by
  simp [incomingPage,incomingTargetFromPage,incomingD,h,pageD,Algebra.incoming,
    Algebra.outgoing,pageCast_target]

theorem incomingPage_no_source (n t : Nat) (h : t < n) : incomingPage F G f n t = 0 := by
  apply AddMonoidHom.ext
  intro x
  change (0,incomingD F G f t n x.1) = (0,0)
  rw [incomingD_absent F G f t n h]
  rfl

theorem pageD_incoming_zero (n t : Nat) (x : Page F G f n (t-n)) :
    pageD F G f n t (incomingPage F G f n t x) = 0 :=
  Algebra.outgoing_incoming _ _ x

theorem incomingTarget_range (n t : Nat) :
    (incomingTargetFromPage F G f n t).range = (incomingD F G f t n).range := by
  ext y
  constructor
  · rintro ⟨x,rfl⟩
    exact ⟨x.1,rfl⟩
  · rintro ⟨x,rfl⟩
    exact ⟨(x,0),rfl⟩

def boundaryIntoCycles (n t : Nat) : Page F G f n (t-n) →+ (pageD F G f n t).ker :=
  Algebra.boundaryMap (targetD F G f t n) (incomingTargetFromPage F G f n t)

/-- Literal page homology: kernel of the outgoing page map modulo the image
of the entire preceding page map lifted to that kernel. -/
abbrev PageHomology (n t : Nat) :=
  (pageD F G f n t).ker ⧸ (boundaryIntoCycles F G f n t).range

noncomputable def pageHomologySplit (n t : Nat) : PageHomology F G f n t ≃+
    (targetD F G f t n).ker × (AllTargetPage F G f t n ⧸ (incomingD F G f t n).range) :=
  (Algebra.homologyEquiv (targetD F G f t n) (incomingTargetFromPage F G f n t)).trans
    (AddEquiv.prodCongr (AddEquiv.refl _)
      (QuotientAddGroup.quotientAddEquivOfEq (incomingTarget_range F G f n t)))

/-- Every next page is obtained from this page's actual homology, for every
nonnegative filtration degree and every length, including n=0 and n>t. -/
noncomputable def homologyEquivNext (n t : Nat) : PageHomology F G f n t ≃+ Page F G f (n+1) t := by
  let e : (targetD F G f t n).ker ×
      (AllTargetPage F G f t n ⧸ (incomingD F G f t n).range) ≃+ Page F G f (n+1) t := {
    toFun x := ((nextSourceEquivKernel F G f t n).symm x.1,
      targetCokernelEquivNext F G f t n x.2)
    invFun x := (nextSourceEquivKernel F G f t n x.1,
      (targetCokernelEquivNext F G f t n).symm x.2)
    left_inv x := by simp
    right_inv x := by simp
    map_add' x y := by simp }
  exact (pageHomologySplit F G f n t).trans e

/-- Both summands on the initial page are the associated graded groups. -/
def initialPageEquiv (t : Nat) : Page F G f 0 t ≃+ Graded F t × Graded G t :=
  AddEquiv.prodCongr (sourceZeroEquiv F G f t) (allTargetZeroEquiv F G f t)

def initialDifferential (t : Nat) : Graded F t × Graded G t →+ Graded F t × Graded G t :=
  Algebra.outgoing (gradedMap F G f t)

theorem initial_differential_commutes (t : Nat) (x : Page F G f 0 t) :
    initialPageEquiv F G f t (pageD F G f 0 t x) =
      initialDifferential F G f t (initialPageEquiv F G f t x) := by
  obtain ⟨a,b⟩ := x
  obtain ⟨z,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f t 0) a
  rfl

#print axioms pageD_incoming_zero
#print axioms incomingPage_is_pageD
#print axioms pageHomologySplit
#print axioms homologyEquivNext
#print axioms initialPageEquiv
#print axioms initial_differential_commutes
end FilteredTwoTermSequence
