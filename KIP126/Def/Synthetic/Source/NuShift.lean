import KIP126.Def.Synthetic.Source.Nu
import KIP126.Def.Synthetic.Source.Operations
import KIP126.Def.Synthetic.Source.OrdinarySuspension
import KIP126.Def.StableHomotopy.Source.Orthogonal.FunctionShift

/-! Canonical suspension of nu, built from function-spectrum suspension.
We localize WHOLE strict diagrams, not diagrams valued in Ho(Sp). On
cofibrant-fibrant objects the comparison is the explicitly displayed roof
of actual maps. Restriction to these objects presents the same relative
diagram theory; its fully faithful comparison uniquely extends that roof.
The extension theorem is a model-comparison proof debt. The chosen iso
carries its exact restriction equation, rather than being a bare data sorry.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

def preShiftFunctor (n : ℤ) : SphericalDiagram ⥤ SphericalDiagram where
  obj := preShiftDiagram n
  map f := ObjectProperty.homMk (whiskerLeft (finiteShift n).op f.hom)
  map_id := by sorry
  map_comp := by sorry

abbrev NuWholeDiagram := Orthogonal.Spectrum ⥤ SphericalDiagram
def nuWholeEquivalences : MorphismProperty NuWholeDiagram :=
  fun _ _ f => ∀ X P, Orthogonal.stableEquivalences ((f.app X).hom.app P)
abbrev NuWholeHomotopyCategory := nuWholeEquivalences.Localization
abbrev nuWholeLocalization : NuWholeDiagram ⥤ NuWholeHomotopyCategory := nuWholeEquivalences.Q

def goodSpectrumProperty : ObjectProperty Orthogonal.Spectrum :=
  fun X => Orthogonal.Cofibrant X ∧ Orthogonal.StableFibrant X
abbrev GoodSpectrum := goodSpectrumProperty.FullSubcategory
def goodFiniteProperty : ObjectProperty FiniteSite :=
  fun P => goodSpectrumProperty P.obj
abbrev GoodFinite := goodFiniteProperty.FullSubcategory
abbrev NuGoodDiagram := (GoodFiniteᵒᵖ × GoodSpectrum) ⥤ Orthogonal.Spectrum
def nuGoodEquivalences : MorphismProperty NuGoodDiagram :=
  fun _ _ f => ∀ P, Orthogonal.stableEquivalences (f.app P)
abbrev nuGoodLocalization := nuGoodEquivalences.Q

/-- Restriction retains the full strict diagram and its derived natural
transformations; no replacement by componentwise homotopy classes occurs. -/
def nuGoodRestriction : NuWholeDiagram ⥤ NuGoodDiagram where
  obj F :=
    { obj := fun P => (F.obj P.2.obj).obj.obj (op P.1.unop.obj)
      map := fun f =>
        (F.obj _).obj.map (ObjectProperty.homMk f.1.unop.hom.hom).op ≫
          (F.map f.2.hom).hom.app _
      map_id := by sorry
      map_comp := by sorry }
  map f := { app := fun P => (f.app P.2.obj).hom.app _, naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem nuGoodRestriction_inverts : nuWholeEquivalences.IsInvertedBy
    (nuGoodRestriction ⋙ nuGoodLocalization) := by sorry
def nuGoodRestrictionDerived : NuWholeHomotopyCategory ⥤ nuGoodEquivalences.Localization :=
  Localization.Construction.lift (nuGoodRestriction ⋙ nuGoodLocalization)
    nuGoodRestriction_inverts

/-- P |-> nu(Sigma X)(Sigma P), with the SAME derived point-set shifts. -/
def nuSimultaneousSuspension : NuWholeDiagram :=
  Orthogonal.derivedShift 1 ⋙ nuDiagrams ⋙ preShiftFunctor 1

def goodFunctionDiagram (A B : Orthogonal.Spectrum ⥤ Orthogonal.Spectrum)
    (derived : Bool) : NuGoodDiagram where
  obj P := connectiveCover.functor.obj (if derived then
    Orthogonal.derivedMappingSpectrum (A.obj P.1.unop.obj.obj) (B.obj P.2.obj)
    else Orthogonal.functionSpectrum (A.obj P.1.unop.obj.obj) (B.obj P.2.obj))
  map f := by
    cases derived with
    | false =>
      exact connectiveCover.functor.map
        (Orthogonal.functionMap (A.map f.1.unop.hom.hom) (B.map f.2.hom))
    | true =>
      exact connectiveCover.functor.map
        (Orthogonal.derivedMappingMap (A.map f.1.unop.hom.hom) (B.map f.2.hom))
  map_id := by sorry
  map_comp := by sorry

abbrev goodRawFunction := goodFunctionDiagram (𝟭 _) (𝟭 _) false
abbrev goodRawSuspended := goodFunctionDiagram Orthogonal.suspensionFunctor
  Orthogonal.suspensionFunctor true
abbrev goodMixedSuspended := goodFunctionDiagram (Orthogonal.derivedShift 1)
  Orthogonal.suspensionFunctor true

/-- Q/R comparison from actual function spectra on good objects. -/
def goodSourceMap : goodRawFunction ⟶ nuGoodRestriction.obj nuDiagrams where
  app P := connectiveCover.functor.map
    (Orthogonal.functionToDerived P.1.unop.obj.obj P.2.obj)
  naturality := by sorry

/-- The retained external interval acts as [t,x] |-> [t,f(x)]. -/
def goodSuspensionMap : goodRawFunction ⟶ goodRawSuspended where
  app P := connectiveCover.functor.map
    (Orthogonal.functionSuspensionMap P.1.unop.obj.obj P.2.obj ≫
      Orthogonal.functionToDerived (Orthogonal.suspension P.1.unop.obj.obj)
        (Orthogonal.suspension P.2.obj))
  naturality := by sorry

def goodSourceResolutionMap : goodRawSuspended ⟶ goodMixedSuspended where
  app P := connectiveCover.functor.map (Orthogonal.derivedMappingMap
    (Orthogonal.suspensionMap
      (Orthogonal.cofibrantResolution.projection.app P.1.unop.obj.obj)) (𝟙 _))
  naturality := by sorry

def goodTargetResolutionMap : nuGoodRestriction.obj nuSimultaneousSuspension ⟶
    goodMixedSuspended where
  app P := connectiveCover.functor.map (Orthogonal.derivedMappingMap (𝟙 _)
    (Orthogonal.suspensionMap (Orthogonal.cofibrantResolution.projection.app P.2.obj)))
  naturality := by sorry

theorem goodSourceMap_equivalence : nuGoodEquivalences goodSourceMap := by sorry
theorem goodSuspensionMap_equivalence : nuGoodEquivalences goodSuspensionMap := by sorry
theorem goodSourceResolutionMap_equivalence : nuGoodEquivalences goodSourceResolutionMap := by sorry
theorem goodTargetResolutionMap_equivalence : nuGoodEquivalences goodTargetResolutionMap := by sorry

/-- This entire diagram iso fixes signs, coordinate interchanges and the
same Q/R comparisons. The raw suspension claims only concern good objects. -/
def goodSuspensionComparison :
    nuGoodLocalization.obj (nuGoodRestriction.obj nuDiagrams) ≅
      nuGoodLocalization.obj (nuGoodRestriction.obj nuSimultaneousSuspension) :=
  (Localization.Construction.wIso goodSourceMap goodSourceMap_equivalence).symm ≪≫
    Localization.Construction.wIso goodSuspensionMap goodSuspensionMap_equivalence ≪≫
    Localization.Construction.wIso goodSourceResolutionMap goodSourceResolutionMap_equivalence ≪≫
    (Localization.Construction.wIso goodTargetResolutionMap
      goodTargetResolutionMap_equivalence).symm

/-- Exact relative-diagram extension obligation. Good-object restriction
is fully faithful between these homotopy-invariant diagrams, so this equation
determines the extension, including derived natural transformations.
No synthetic result, lambda relation or local permanence is an assumption. -/
theorem exists_nuSimultaneousSuspensionComparison :
    ∃ e : nuWholeLocalization.obj nuDiagrams ≅
        nuWholeLocalization.obj nuSimultaneousSuspension,
      nuGoodRestrictionDerived.mapIso e = goodSuspensionComparison := by sorry

def nuSimultaneousSuspensionComparison :
    nuWholeLocalization.obj nuDiagrams ≅
      nuWholeLocalization.obj nuSimultaneousSuspension :=
  Classical.choose exists_nuSimultaneousSuspensionComparison

theorem nuSimultaneousSuspensionComparison_spec :
    nuGoodRestrictionDerived.mapIso nuSimultaneousSuspensionComparison =
      goodSuspensionComparison :=
  Classical.choose_spec exists_nuSimultaneousSuspensionComparison

/-- Uniqueness is asserted only for these homotopy-invariant endpoints,
not for arbitrary diagrams which need not send weak equivalences to weak
equivalences. It makes the relative-diagram extension obligation explicit. -/
theorem nuSimultaneousSuspensionComparison_unique
    (e : nuWholeLocalization.obj nuDiagrams ≅
      nuWholeLocalization.obj nuSimultaneousSuspension)
    (h : nuGoodRestrictionDerived.mapIso e = goodSuspensionComparison) :
    e = nuSimultaneousSuspensionComparison := by sorry

def nuWholeHypercompletion (R : RealizedFoundation) :
    NuWholeDiagram ⥤ (Orthogonal.Spectrum ⥤ HypercompleteCategory R) :=
  (whiskeringRight _ _ _).obj (hypercompletion R)
theorem nuWholeHypercompletion_inverts (R : RealizedFoundation) :
    nuWholeEquivalences.IsInvertedBy (nuWholeHypercompletion R) := by sorry
def nuWholeHypercompletionDerived (R : RealizedFoundation) :
    NuWholeHomotopyCategory ⥤ (Orthogonal.Spectrum ⥤ HypercompleteCategory R) :=
  Localization.Construction.lift (nuWholeHypercompletion R)
    (nuWholeHypercompletion_inverts R)

def nuSimultaneousSuspensionIso (R : RealizedFoundation) :
    nuPointSet R ≅ nuSimultaneousSuspension ⋙ hypercompletion R :=
  (nuWholeHypercompletionDerived R).mapIso nuSimultaneousSuspensionComparison

def nuWholePreShift (n : ℤ) : NuWholeDiagram ⥤ NuWholeDiagram :=
  (whiskeringRight _ _ _).obj (preShiftFunctor n)

theorem nuWholePreShift_inverts (n : ℤ) : nuWholeEquivalences.IsInvertedBy
    (nuWholePreShift n ⋙ nuWholeLocalization) := by sorry

def nuWholePreShiftDerived (n : ℤ) :
    NuWholeHomotopyCategory ⥤ NuWholeHomotopyCategory :=
  Localization.Construction.lift (nuWholePreShift n ⋙ nuWholeLocalization)
    (nuWholePreShift_inverts n)

def finiteFibrant : FiniteSite ⥤ FiniteSite where
  obj P := ⟨Orthogonal.fibrantResolution.functor.obj P.obj, by
    exact (finite_of_stable_equivalence (Orthogonal.fibrantResolution.inclusion.app P.obj)
      (Orthogonal.fibrantResolution.equivalent P.obj)).mp P.property⟩
  map f := ObjectProperty.homMk (Orthogonal.fibrantResolution.functor.map f.hom)
  map_id := by sorry
  map_comp := by sorry

def finiteFibrantInclusion (P : FiniteSite) : P ⟶ finiteFibrant.obj P :=
  ObjectProperty.homMk (Orthogonal.fibrantResolution.inclusion.app P.obj)

/-- The counit is the actual map Sigma Q(Omega RP) -> RP. -/
def finiteSuspensionLoopCounit (P : FiniteSite) :
    (finiteShift 1).obj ((finiteShift (-1)).obj P) ⟶ finiteFibrant.obj P :=
  ObjectProperty.homMk (Orthogonal.derivedSuspensionLoopCounit P.obj)

def preFibrantDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨finiteFibrant.op ⋙ F.obj, by sorry⟩

def fibrantPreMap (F : SphericalDiagram) : preFibrantDiagram F ⟶ F :=
  ObjectProperty.homMk
    { app := fun P => F.obj.map (finiteFibrantInclusion P.unop).op
      naturality := by sorry }

def cancellationPreMap (F : SphericalDiagram) : preFibrantDiagram F ⟶
    preShiftDiagram (-1) (preShiftDiagram 1 F) := ObjectProperty.homMk
  { app := fun P => F.obj.map (finiteSuspensionLoopCounit P.unop).op
    naturality := by sorry }

def nuSuspended : NuWholeDiagram := Orthogonal.derivedShift 1 ⋙ nuDiagrams

def nuCancellationMiddle : NuWholeDiagram where
  obj X := preFibrantDiagram (nuSuspended.obj X)
  map f := ObjectProperty.homMk (whiskerLeft finiteFibrant.op (nuSuspended.map f).hom)
  map_id := by sorry
  map_comp := by sorry

def nuCancellationToSource : nuCancellationMiddle ⟶ nuSuspended where
  app X := fibrantPreMap (nuSuspended.obj X)
  naturality := by sorry

def nuCancellationToTarget : nuCancellationMiddle ⟶
    (nuWholePreShift (-1)).obj nuSimultaneousSuspension where
  app X := cancellationPreMap (nuSuspended.obj X)
  naturality := by sorry

theorem nuCancellationToSource_equivalence :
    nuWholeEquivalences nuCancellationToSource := by sorry
theorem nuCancellationToTarget_equivalence :
    nuWholeEquivalences nuCancellationToTarget := by sorry

/-- First cancel Sigma Omega by its actual counit, then invert the
simultaneous suspension comparison. No connective-cover/suspension
commutation is used: all connective covers remain inside the diagrams. -/
def nuSuspensionPrecompositionComparison :
    nuWholeLocalization.obj nuSuspended ≅
      nuWholeLocalization.obj ((nuWholePreShift (-1)).obj nuDiagrams) :=
  (Localization.Construction.wIso nuCancellationToSource
    nuCancellationToSource_equivalence).symm ≪≫
    Localization.Construction.wIso nuCancellationToTarget
      nuCancellationToTarget_equivalence ≪≫
    ((nuWholePreShiftDerived (-1)).mapIso nuSimultaneousSuspensionComparison).symm

/-- At (1,1) the output shift is zero: only precomposition by Sigma^-1
remains. This is an equality of the actual chosen diagram functors. -/
theorem preShift_neg_one_eq_biShift : preShiftFunctor (-1) = biShiftDiagram (1,1) := by
  sorry

def nuPointSetSuspensionIso (R : RealizedFoundation) :
    Orthogonal.derivedShift 1 ⋙ nuPointSet R ≅ nuPointSet R ⋙ biShift R (1,1) :=
  (nuWholeHypercompletionDerived R).mapIso nuSuspensionPrecompositionComparison ≪≫
    isoWhiskerLeft nuDiagrams
      (isoWhiskerRight (eqToIso preShift_neg_one_eq_biShift) (hypercompletion R)) ≪≫
    isoWhiskerLeft nuDiagrams
      (eqToIso (Localization.Construction.fac
        (biShiftDiagram (1,1) ⋙ hypercompletion R) (biShiftDiagram_inverts R (1,1))).symm)

/-- Presentation of the natural suspension comparison over actual
orthogonal spectra. All three changes of presentation are already fixed. -/
def nuSuspensionPresentation (R : RealizedFoundation) :
    ordinaryRealization R ⋙ (shiftFunctor R.foundation.Spectrum (1 : ℤ) ⋙ nu R) ≅
      ordinaryRealization R ⋙ (nu R ⋙ biShift R (1,1)) :=
  isoWhiskerRight (ordinaryDerivedSuspensionIso R).symm (nu R) ≪≫
    isoWhiskerLeft (Orthogonal.derivedShift 1) (nu_comparison R) ≪≫
    nuPointSetSuspensionIso R ≪≫
    isoWhiskerRight (nu_comparison R).symm (biShift R (1,1))

/-- Canonical nu(Sigma X) = Sigma^(1,1) nu(X), descended from the
displayed function-spectrum suspension roof, on the SAME ordinary source.
The localization lifting does not choose a new comparison isomorphism. -/
def nuSuspensionIso (R : RealizedFoundation) :
    shiftFunctor R.foundation.Spectrum (1 : ℤ) ⋙ nu R ≅
      nu R ⋙ biShift R (1,1) :=
  Localization.liftNatIso (ordinaryRealization R) (completeWeakEquivalences R)
    (ordinaryRealization R ⋙ (shiftFunctor R.foundation.Spectrum (1 : ℤ) ⋙ nu R))
    (ordinaryRealization R ⋙ (nu R ⋙ biShift R (1,1)))
    (shiftFunctor R.foundation.Spectrum (1 : ℤ) ⋙ nu R)
    (nu R ⋙ biShift R (1,1)) (nuSuspensionPresentation R)

end
end KIP126.Synthetic.Source
