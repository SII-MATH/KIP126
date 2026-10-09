import FilteredMapGradedComparison.Basic
import FilteredExtensionSquare.Basic

namespace FilteredMapGradedComparison
open FilteredRepresentativeCrossing FilteredMapExtension GeneralizedLeibnizAudit
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G) (s n : Nat)

/-- The induced map on associated graded groups at length zero. -/
def gradedMap : Graded F s →+ Graded G s :=
  QuotientAddGroup.map (gradedRelations F s) (gradedRelations G s)
    { toFun := fun x => ⟨f.hom x.val,f.preserves s x.property⟩
      map_zero' := Subtype.ext (map_zero f.hom)
      map_add' := fun x y => Subtype.ext (map_add f.hom x.val y.val) }
    (fun x hx => f.preserves (s+1) hx)

theorem differential_zero_is_graded (x : SourcePage F G f s 0) :
    targetZeroEquiv F G f s (differential F G f s 0 x) =
      gradedMap F G f s (sourceZeroEquiv F G f s x) := by
  obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s 0) x
  rfl

/-- Differential expressed between the surviving leading subgroup and the
initial target graded group modulo its earlier boundary subgroup. -/
noncomputable def leadingDifferential : survivingLeading F G f s n →+
    (Graded G (s+n) ⧸ earlierBoundaries F G f s n) :=
  ((targetGradedEquiv F G f s n).symm.toAddMonoidHom).comp
    ((differential F G f s n).comp (sourceEquivSurviving F G f s n).symm.toAddMonoidHom)

theorem leadingDifferential_commutes (a : SourcePage F G f s n) :
    targetGradedEquiv F G f s n
      (leadingDifferential F G f s n (sourceEquivSurviving F G f s n a)) =
        differential F G f s n a := by
  simp [leadingDifferential]

def LeadingEvent (x : F.group s) (y : G.group (s+n)) : Prop :=
  ∃ z : SourcePage F G f s n,
    sourceToGraded F G f s n z = gradedClass F s x ∧
      differential F G f s n z = targetClass F G f s n y

theorem leadingEvent_iff_extension (x : F.group s) (y : G.group (s+n)) :
    LeadingEvent F G f s n x y ↔
      Extension f.hom (F.group (s+1)) (G.group (s+n+1)) x.val y.val := by
  constructor
  · rintro ⟨z,same,equation⟩
    obtain ⟨a,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G f s n) z
    obtain ⟨b,hba,image⟩ := (differential_eq_iff_leading_extension F G f s n a y).mp equation
    exact ⟨b,hba.trans ((gradedClass_eq F s _ _).mp same),image⟩
  · intro extension
    obtain ⟨_,_,a,same,equation⟩ :=
      (FilteredExtensionSquare.hasExtension_iff F G f s n x.val y.val).mpr
        ⟨x.property,y.property,extension⟩
    exact ⟨sourceClass F G f s n a,(gradedClass_eq F s _ _).mpr same,equation⟩

theorem leadingEvent_iff_differential (x : F.group s) (y : G.group (s+n)) :
    LeadingEvent F G f s n x y ↔
      ∃ hx : gradedClass F s x ∈ survivingLeading F G f s n,
        leadingDifferential F G f s n ⟨gradedClass F s x,hx⟩ =
          QuotientAddGroup.mk' _ (gradedClass G (s+n) y) := by
  constructor
  · rintro ⟨z,hz,equation⟩
    refine ⟨⟨z,hz⟩,?_⟩
    have same : (⟨gradedClass F s x,⟨z,hz⟩⟩ : survivingLeading F G f s n) =
        sourceEquivSurviving F G f s n z := Subtype.ext hz.symm
    rw [same]
    apply (targetGradedEquiv F G f s n).injective
    rw [leadingDifferential_commutes,targetGradedEquiv_class]
    exact equation
  · rintro ⟨hx,equation⟩
    let a : survivingLeading F G f s n := ⟨gradedClass F s x,hx⟩
    let z := (sourceEquivSurviving F G f s n).symm a
    refine ⟨z,?_,?_⟩
    · exact congrArg Subtype.val ((sourceEquivSurviving F G f s n).apply_symm_apply a)
    · have same : sourceEquivSurviving F G f s n z = a :=
        (sourceEquivSurviving F G f s n).apply_symm_apply a
      rw [← leadingDifferential_commutes F G f s n z,same,equation,targetGradedEquiv_class]

/-- This is the precise leading-class event comparison: both directions are
proved from the concrete quotient maps, with no comparison hypothesis. -/
theorem quotient_event_iff_ordinary (x : F.group s) (y : G.group (s+n)) :
    (∃ hx : gradedClass F s x ∈ survivingLeading F G f s n,
        leadingDifferential F G f s n ⟨gradedClass F s x,hx⟩ =
          QuotientAddGroup.mk' _ (gradedClass G (s+n) y)) ↔
      Extension f.hom (F.group (s+1)) (G.group (s+n+1)) x.val y.val :=
  (leadingEvent_iff_differential F G f s n x y).symm.trans
    (leadingEvent_iff_extension F G f s n x y)

theorem essential_target_iff (y : G.group (s+n)) :
    targetClass F G f s n y ≠ 0 ↔
      gradedClass G (s+n) y ∉ earlierBoundaries F G f s n := by
  rw [← targetGradedEquiv_class]
  have hz : (targetGradedEquiv F G f s n) 0 = 0 := map_zero _
  rw [← hz,ne_eq,EquivLike.apply_eq_iff_eq]
  exact not_congr (QuotientAddGroup.eq_zero_iff _)

#print axioms differential_zero_is_graded
#print axioms leadingDifferential_commutes
#print axioms quotient_event_iff_ordinary
#print axioms essential_target_iff
end FilteredMapGradedComparison
