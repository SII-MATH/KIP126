import KIP126.Def.StableHomotopy.Source.Orthogonal.Shifts

/-! Canonical maps for normalizing derived suspension words. In particular,
an isomorphism of objects of the same degree is not a shift comparison.
Only the displayed replacement maps and derived suspension/loop adjunction
are generators; their stable equivalence and coherence are proof debts.
-/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory CategoryTheory.Functor
noncomputable section

/-- QX -> Ω R Σ QX, using the actual interval-coordinate unit. -/
def derivedShiftUnit : cofibrantResolution.functor ⟶ derivedSuspension ⋙ derivedLoops where
  app E := suspensionLoopUnit (cofibrantResolution.functor.obj E) ≫
    loopsMap (fibrantResolution.inclusion.app
      (suspension (cofibrantResolution.functor.obj E)))
  naturality := by sorry

/-- Σ Q Ω RX -> RX, using Q projection and interval evaluation. -/
def derivedShiftCounit : derivedLoops ⋙ derivedSuspension ⟶ fibrantResolution.functor where
  app E := suspensionMap (cofibrantResolution.projection.app
      (loops (fibrantResolution.functor.obj E))) ≫
    suspensionLoopCounit (fibrantResolution.functor.obj E)
  naturality := by sorry

theorem derivedShiftUnit_equivalence (E : Spectrum) :
    stableEquivalences (derivedShiftUnit.app E) := by sorry
theorem derivedShiftCounit_equivalence (E : Spectrum) :
    stableEquivalences (derivedShiftCounit.app E) := by sorry

def Homotopical (F : Spectrum ⥤ Spectrum) : Prop :=
  ∀ {E G} (f : E ⟶ G), stableEquivalences f → stableEquivalences (F.map f)

/-- Only replacement and suspension words may whisker a normalization;
an unrelated functor cannot introduce an untracked operation. -/
inductive ShiftWord : (Spectrum ⥤ Spectrum) → Prop
  | id : ShiftWord (𝟭 Spectrum)
  | q : ShiftWord cofibrantResolution.functor
  | r : ShiftWord fibrantResolution.functor
  | suspension : ShiftWord derivedSuspension
  | loops : ShiftWord derivedLoops
  | comp {F G} : ShiftWord F → ShiftWord G → ShiftWord (F ⋙ G)

theorem ShiftWord.homotopical {F} (h : ShiftWord F) : Homotopical F := by sorry

/-- The generated comparison calculus, with NO arbitrary natural
transformation constructor. Whiskering is permitted only by homotopical
functors, so that every inverse below inverts a stable equivalence. -/
inductive ShiftZigzag : (Spectrum ⥤ Spectrum) → (Spectrum ⥤ Spectrum) → Type 1
  | refl (F) (hF : ShiftWord F) : ShiftZigzag F F
  | q : ShiftZigzag cofibrantResolution.functor (𝟭 Spectrum)
  | r : ShiftZigzag (𝟭 Spectrum) fibrantResolution.functor
  | unit : ShiftZigzag cofibrantResolution.functor (derivedSuspension ⋙ derivedLoops)
  | counit : ShiftZigzag (derivedLoops ⋙ derivedSuspension) fibrantResolution.functor
  | symm {F G} : ShiftZigzag F G → ShiftZigzag G F
  | trans {F G H} : ShiftZigzag F G → ShiftZigzag G H → ShiftZigzag F H
  | left (A) (hA : ShiftWord A) {F G} : ShiftZigzag F G → ShiftZigzag (A ⋙ F) (A ⋙ G)
  | right {F G} (A) (hA : ShiftWord A) :
      ShiftZigzag F G → ShiftZigzag (F ⋙ A) (G ⋙ A)

theorem ShiftWord.derivedShift (n : ℤ) : ShiftWord (derivedShift n) := by sorry

theorem ShiftZigzag.words {F G} (z : ShiftZigzag F G) : ShiftWord F ∧ ShiftWord G := by
  induction z with
  | refl F h => exact ⟨h,h⟩
  | q => exact ⟨.q,.id⟩
  | r => exact ⟨.id,.r⟩
  | unit => exact ⟨.q,.comp .suspension .loops⟩
  | counit => exact ⟨.comp .loops .suspension,.r⟩
  | symm z ih => exact ⟨ih.2,ih.1⟩
  | trans z w ih₁ ih₂ => exact ⟨ih₁.1,ih₂.2⟩
  | left A hA z ih => exact ⟨.comp hA ih.1,.comp hA ih.2⟩
  | right A hA z ih => exact ⟨.comp ih.1 hA,.comp ih.2 hA⟩

universe u v
variable {C : Type u} [Category.{v} C]

set_option backward.isDefEq.respectTransparency false in
/-- Interpretation of this syntactic calculus uses exactly the named
point-set maps. There is no choice of a morphism in the localized category. -/
def ShiftZigzag.interpret {F G : Spectrum ⥤ Spectrum} (z : ShiftZigzag F G)
    (K : Spectrum ⥤ C) (hK : stableEquivalences.IsInvertedBy K) : F ⋙ K ≅ G ⋙ K := by
  induction z generalizing K with
  | refl F hF => exact Iso.refl _
  | q =>
    exact NatIso.ofComponents (fun E => by
      haveI : IsIso (K.map (cofibrantResolution.projection.app E)) :=
        hK _ (levelTrivialFibration_stable _ (cofibrantResolution.trivial E))
      exact asIso (K.map (cofibrantResolution.projection.app E))) (by sorry)
  | r =>
    exact NatIso.ofComponents (fun E => by
      haveI : IsIso (K.map (fibrantResolution.inclusion.app E)) :=
        hK _ (fibrantResolution.equivalent E)
      exact asIso (K.map (fibrantResolution.inclusion.app E))) (by sorry)
  | unit =>
    exact NatIso.ofComponents (fun E => by
      haveI : IsIso (K.map (derivedShiftUnit.app E)) := hK _ (derivedShiftUnit_equivalence E)
      exact asIso (K.map (derivedShiftUnit.app E))) (by sorry)
  | counit =>
    exact NatIso.ofComponents (fun E => by
      haveI : IsIso (K.map (derivedShiftCounit.app E)) := hK _ (derivedShiftCounit_equivalence E)
      exact asIso (K.map (derivedShiftCounit.app E))) (by sorry)
  | symm z ih => exact (ih K hK).symm
  | trans z w ih₁ ih₂ => exact ih₁ K hK ≪≫ ih₂ K hK
  | left A hA z ih => exact isoWhiskerLeft A (ih K hK)
  | right A hA z ih => exact ih (A ⋙ K) (fun _ _ f hf => hK _ (hA.homotopical f hf))

/-- Integer normalization is generated by the preceding actual maps.
This is a model construction theorem, not a new external mathematical input. -/
theorem shiftZigzag_exists (m n : ℤ) :
    Nonempty (ShiftZigzag (derivedShift m ⋙ derivedShift n) (derivedShift (m+n))) := by
  sorry

def shiftAddZigzag (m n : ℤ) :
    ShiftZigzag (derivedShift m ⋙ derivedShift n) (derivedShift (m+n)) :=
  Classical.choice (shiftZigzag_exists m n)

end
end KIP126.StableHomotopy.Source.Orthogonal
