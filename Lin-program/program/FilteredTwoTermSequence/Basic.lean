import FilteredTwoTermSequence.Algebra

namespace FilteredTwoTermSequence
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

/-- Filtration is nonnegative; the homological source/target labels remain
separate even when the differential length is zero. The stem is fixed. -/
abbrev Page (n t : Nat) := SourcePage F G f t n × AllTargetPage F G f t n

def targetD (s n : Nat) : SourcePage F G f s n →+ AllTargetPage F G f (s+n) n :=
  (allTargetEquivLocal F G f s n).symm.toAddMonoidHom.comp (differential F G f s n)

def pageD (n t : Nat) : Page F G f n t →+ Page F G f n (t+n) :=
  Algebra.outgoing (targetD F G f t n)

theorem pageD_square_zero (n t : Nat) (x : Page F G f n t) :
    pageD F G f n (t+n) (pageD F G f n t x) = 0 := by
  simp [pageD,Algebra.outgoing,map_zero]

def targetCast {t u n : Nat} (h : t = u) : AllTargetPage F G f t n ≃+ AllTargetPage F G f u n :=
  h ▸ AddEquiv.refl _

@[simp] theorem targetCast_refl (t n : Nat) : targetCast F G f (t := t) (n := n) rfl = AddEquiv.refl _ := rfl

/-- The only possible incoming source has degree t-n, provided n<=t.
When n>t the incoming map is zero; subtraction does not create a source at zero. -/
def incomingD (t n : Nat) : SourcePage F G f (t-n) n →+ AllTargetPage F G f t n :=
  if h : n ≤ t then
    (targetCast F G f (Nat.sub_add_cancel h)).toAddMonoidHom.comp (targetD F G f (t-n) n)
  else 0

theorem incomingD_absent (t n : Nat) (h : t < n) : incomingD F G f t n = 0 := by
  simp [incomingD,show ¬ n ≤ t by omega]

theorem targetD_zero_iff (s n : Nat) (x : SourcePage F G f s n) :
    targetD F G f s n x = 0 ↔ differential F G f s n x = 0 := by
  simp [targetD]

def nextSourceToKernel (s n : Nat) : SourcePage F G f s (n+1) →+ (targetD F G f s n).ker where
  toFun x := ⟨nextToCurrent F G f s n x,
    (targetD_zero_iff F G f s n _).mpr (nextToCurrent_cycle F G f s n x)⟩
  map_zero' := Subtype.ext (map_zero _)
  map_add' x y := Subtype.ext (map_add (nextToCurrent F G f s n) x y)

noncomputable def nextSourceEquivKernel (s n : Nat) :
    SourcePage F G f s (n+1) ≃+ (targetD F G f s n).ker :=
  AddEquiv.ofBijective (nextSourceToKernel F G f s n) ⟨
    fun _ _ h => nextToCurrent_injective F G f s n (congrArg Subtype.val h),by
      intro x
      obtain ⟨y,hy⟩ := current_cycle_has_next F G f s n x.val
        ((targetD_zero_iff F G f s n x.val).mp x.property)
      exact ⟨y,Subtype.ext hy⟩⟩

theorem targetAdvance_kernel_local (s n : Nat) :
    (allTargetAdvance F G f (s+n) n).ker = (targetD F G f s n).range := by
  ext y
  constructor
  · intro hy
    have killed : localToNextTarget F G f s n (allTargetEquivLocal F G f s n y) = 0 := by
      simpa [localToNextTarget] using hy
    have image : allTargetEquivLocal F G f s n y ∈ (differential F G f s n).range := by
      rw [← localToNextTarget_kernel F G f s n]
      exact killed
    obtain ⟨x,hx⟩ := image
    refine ⟨x,?_⟩
    simp [targetD,hx]
  · rintro ⟨x,rfl⟩
    have hz : localToNextTarget F G f s n (differential F G f s n x) = 0 := by
      change differential F G f s n x ∈ (localToNextTarget F G f s n).ker
      rw [localToNextTarget_kernel]
      exact ⟨x,rfl⟩
    exact hz

theorem targetAdvance_injective_after (t n : Nat) (h : t < n) :
    Function.Injective (allTargetAdvance F G f t n) := by
  intro a b eq
  obtain ⟨x,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f t n) a
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G f t n) b
  apply QuotientAddGroup.eq_iff_sub_mem.mpr
  have mem := QuotientAddGroup.eq_iff_sub_mem.mp eq
  change x.val-y.val ∈ allTargetRelations F G f t (n+1) at mem
  change x.val-y.val ∈ allTargetRelations F G f t n
  rw [allTargetRelations_stable F G f t n (by omega)]
  simpa only [allTargetRelations_stable F G f t (n+1) (by omega)] using mem

theorem targetAdvance_kernel_cast (s n t : Nat) (h : s+n = t) :
    (allTargetAdvance F G f t n).ker =
      ((targetCast F G f h).toAddMonoidHom.comp (targetD F G f s n)).range := by
  subst t
  simpa [targetCast] using targetAdvance_kernel_local F G f s n

theorem targetAdvance_kernel (t n : Nat) :
    (allTargetAdvance F G f t n).ker = (incomingD F G f t n).range := by
  by_cases h : n ≤ t
  · simpa only [incomingD,dif_pos h] using
      targetAdvance_kernel_cast F G f (t-n) n t (Nat.sub_add_cancel h)
  · have absent := incomingD_absent F G f t n (by omega)
    rw [absent]
    ext y
    constructor
    · intro hy
      have zero : y = 0 := targetAdvance_injective_after F G f t n (by omega)
        (hy.trans (map_zero _).symm)
      subst y
      exact ⟨0,rfl⟩
    · rintro ⟨x,rfl⟩
      exact map_zero _

noncomputable def targetCokernelEquivNext (t n : Nat) :
    (AllTargetPage F G f t n ⧸ (incomingD F G f t n).range) ≃+
      AllTargetPage F G f t (n+1) :=
  QuotientAddGroup.liftEquiv (incomingD F G f t n).range
    (allTargetAdvance_surjective F G f t n) (targetAdvance_kernel F G f t n).symm

#print axioms pageD_square_zero
#print axioms incomingD_absent
#print axioms nextSourceEquivKernel
#print axioms targetAdvance_kernel
#print axioms targetCokernelEquivNext
end FilteredTwoTermSequence
