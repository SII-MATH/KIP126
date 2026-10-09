import FilteredTwoTermSequence.Homology

namespace FilteredExtensionPageBridge
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence GeneralizedLeibnizAudit
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

def sourceElement (s n : Nat) (z : SourcePage F G f s n) : Page F G f n s := (z,0)

def targetElement (s n : Nat) (y : G.group (s+n)) : Page F G f n (s+n) :=
  (0,QuotientAddGroup.mk' (allTargetSubgroup F G f (s+n) n) y)

theorem targetElement_local (s n : Nat) (y : G.group (s+n)) :
    allTargetEquivLocal F G f s n (targetElement F G f s n y).2 =
      targetClass F G f s n y := rfl

theorem targetD_local (s n : Nat) (z : SourcePage F G f s n) :
    allTargetEquivLocal F G f s n (targetD F G f s n z) = differential F G f s n z := by
  simp [targetD]

/-- The equation uses the constructed full page differential, including its
source and target summands. No page comparison is a hypothesis. -/
theorem page_equation_iff (s n : Nat) (z : SourcePage F G f s n)
    (y : G.group (s+n)) :
    pageD F G f n s (sourceElement F G f s n z) = targetElement F G f s n y ↔
      differential F G f s n z = targetClass F G f s n y := by
  constructor
  · intro h
    have second := congrArg Prod.snd h
    have mapped := congrArg (allTargetEquivLocal F G f s n) second
    change allTargetEquivLocal F G f s n (targetD F G f s n z) =
      allTargetEquivLocal F G f s n (targetElement F G f s n y).2 at mapped
    simpa only [targetD_local,targetElement_local] using mapped
  · intro h
    apply Prod.ext
    · rfl
    · apply (allTargetEquivLocal F G f s n).injective
      change allTargetEquivLocal F G f s n (targetD F G f s n z) =
        allTargetEquivLocal F G f s n (targetElement F G f s n y).2
      simpa only [targetD_local,targetElement_local] using h

def LeadingPageEvent (s n : Nat) (x : F.group s) (y : G.group (s+n)) : Prop :=
  ∃ z : SourcePage F G f s n,
    sourceToGraded F G f s n z = gradedClass F s x ∧
      pageD F G f n s (sourceElement F G f s n z) = targetElement F G f s n y

theorem leadingPageEvent_iff (s n : Nat) (x : F.group s) (y : G.group (s+n)) :
    LeadingPageEvent F G f s n x y ↔ LeadingEvent F G f s n x y := by
  constructor
  · rintro ⟨z,hz,eq⟩
    exact ⟨z,hz,(page_equation_iff F G f s n z y).mp eq⟩
  · rintro ⟨z,hz,eq⟩
    exact ⟨z,hz,(page_equation_iff F G f s n z y).mpr eq⟩

/-- A leading representative need not itself be a cycle. The equivalence
constructs the corrected representative in the actual source page. -/
theorem leadingPageEvent_iff_extension (s n : Nat) (x : F.group s) (y : G.group (s+n)) :
    LeadingPageEvent F G f s n x y ↔
      Extension f.hom (F.group (s+1)) (G.group (s+n+1)) x.val y.val :=
  (leadingPageEvent_iff F G f s n x y).trans (leadingEvent_iff_extension F G f s n x y)

theorem exact_iff_graded_nonzero (H : Filtration A) (s : Nat) (x : H.group s) :
    ExactAt H s x.val ↔ gradedClass H s x ≠ 0 := by
  have zero : gradedClass H s x = 0 ↔ x.val ∈ H.group (s+1) :=
    QuotientAddGroup.eq_zero_iff x
  change (x.val ∈ H.group s ∧ x.val ∉ H.group (s+1)) ↔ _
  rw [ne_eq,zero]
  exact ⟨fun h => h.2,fun h => ⟨x.property,h⟩⟩

/-- Exact target leading degree does not assert that its current page class
is essential: an earlier incoming boundary can kill that class. -/
theorem targetElement_nonzero_iff (s n : Nat) (y : G.group (s+n)) :
    targetElement F G f s n y ≠ 0 ↔
      gradedClass G (s+n) y ∉ earlierBoundaries F G f s n := by
  have zero : targetElement F G f s n y = 0 ↔ targetClass F G f s n y = 0 := by
    constructor
    · intro h
      have mapped := congrArg (fun p : Page F G f n (s+n) =>
        allTargetEquivLocal F G f s n p.2) h
      change allTargetEquivLocal F G f s n (targetElement F G f s n y).2 =
        allTargetEquivLocal F G f s n 0 at mapped
      simpa only [targetElement_local,map_zero] using mapped
    · intro h
      apply Prod.ext
      · rfl
      · apply (allTargetEquivLocal F G f s n).injective
        change allTargetEquivLocal F G f s n (targetElement F G f s n y).2 =
          allTargetEquivLocal F G f s n 0
        simpa only [targetElement_local,map_zero] using h
  exact (not_congr zero).trans (essential_target_iff F G f s n y)

#print axioms page_equation_iff
#print axioms leadingPageEvent_iff_extension
#print axioms exact_iff_graded_nonzero
#print axioms targetElement_nonzero_iff
end FilteredExtensionPageBridge
