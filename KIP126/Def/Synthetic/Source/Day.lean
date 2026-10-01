import KIP126.Def.Synthetic.Source.Nu
import KIP126.Def.StableHomotopy.Source.Orthogonal.DerivedSmash
import Mathlib.CategoryTheory.Localization.Prod
import Mathlib.CategoryTheory.Adjunction.Basic

/-!
The derived spherical Day product, followed by hypercompletion.

The right adjoint below is ACTUAL precomposition by the derived point-set
smash of finite spectra.  Its source and target are localizations of strict
spectrum-valued diagrams, not categories of diagrams valued in Ho(Sp).
Consequently their morphisms retain derived natural transformations.  The
left adjoint is fixed by its adjunction to this displayed right adjoint;
its existence includes the relative-diagram/derived-Kan comparison theorem.
No ordinary coend of Ho(Sp)-valued functors is used.

The external product also uses the same q-cofibrant replacements as the
ordinary source smash.  The last localization is at ALL homotopy-sheaf
isomorphisms.  This is the hypercompleted Day tensor of Pstragowski,
`symmetric_monoidal_structure_on_spherical_sheaves_of_spectra`, together with
`day_convolution_compatible_with_different_kinds_of_equivalences`.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

/-- Finite spectra are closed under the actual derived smash. -/
theorem finite_derivedSmash (P Q : FiniteSite) :
    FiniteOrthogonal (Orthogonal.derivedSmashPointset P.obj Q.obj) := by sorry

/-- This is a point-set presentation of finite-spectrum smash, not an
independently chosen operation on the homotopy category. -/
def finiteDerivedSmash : FiniteSite × FiniteSite ⥤ FiniteSite where
  obj P := ⟨Orthogonal.derivedSmashPointset P.1.obj P.2.obj,
    finite_derivedSmash P.1 P.2⟩
  map f := ⟨Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.functor.map f.1.hom)
    (Orthogonal.cofibrantResolution.functor.map f.2.hom)⟩
  map_id := by sorry
  map_comp := by sorry

abbrev BivariateDiagram := (FiniteSiteᵒᵖ × FiniteSiteᵒᵖ) ⥤ Orthogonal.Spectrum

def diagramStableEquivalences : MorphismProperty SphericalDiagram :=
  fun _ _ f => ∀ P, Orthogonal.stableEquivalences (f.hom.app P)
def bivariateStableEquivalences : MorphismProperty BivariateDiagram :=
  fun _ _ f => ∀ P, Orthogonal.stableEquivalences (f.app P)

instance : diagramStableEquivalences.ContainsIdentities := by sorry
instance : bivariateStableEquivalences.ContainsIdentities := by sorry

abbrev SphericalHomotopyCategory := diagramStableEquivalences.Localization
abbrev BivariateHomotopyCategory := bivariateStableEquivalences.Localization
abbrev sphericalStableLocalization : SphericalDiagram ⥤ SphericalHomotopyCategory :=
  diagramStableEquivalences.Q
abbrev bivariateStableLocalization : BivariateDiagram ⥤ BivariateHomotopyCategory :=
  bivariateStableEquivalences.Q

/-- Derived external product, calculated before diagram localization. -/
def externalProduct (F G : SphericalDiagram) : BivariateDiagram where
  obj P := Orthogonal.derivedSmashPointset (F.obj.obj P.1) (G.obj.obj P.2)
  map f := Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.functor.map (F.obj.map f.1))
    (Orthogonal.cofibrantResolution.functor.map (G.obj.map f.2))
  map_id := by sorry
  map_comp := by sorry

def externalProductMap {F F' G G' : SphericalDiagram} (f : F ⟶ F') (g : G ⟶ G') :
    externalProduct F G ⟶ externalProduct F' G' where
  app P := Orthogonal.smashMap
    (Orthogonal.cofibrantResolution.functor.map (f.hom.app P.1))
    (Orthogonal.cofibrantResolution.functor.map (g.hom.app P.2))
  naturality := by sorry

def externalProductFunctor : SphericalDiagram × SphericalDiagram ⥤ BivariateDiagram where
  obj F := externalProduct F.1 F.2
  map f := externalProductMap f.1 f.2
  map_id := by sorry
  map_comp := by sorry

theorem externalProduct_inverts :
    (diagramStableEquivalences.prod diagramStableEquivalences).IsInvertedBy
      (externalProductFunctor ⋙ bivariateStableLocalization) := by sorry

def derivedExternalProduct : SphericalHomotopyCategory × SphericalHomotopyCategory ⥤
    BivariateHomotopyCategory :=
  Localization.lift (externalProductFunctor ⋙ bivariateStableLocalization)
    externalProduct_inverts (sphericalStableLocalization.prod sphericalStableLocalization)

/-- The fixed right adjoint's point-set formula is H(P smash^L Q). -/
def dayRestriction (H : SphericalDiagram) : BivariateDiagram where
  obj P := H.obj.obj (op (finiteDerivedSmash.obj (P.1.unop, P.2.unop)))
  map f := H.obj.map (finiteDerivedSmash.map (f.1.unop, f.2.unop)).op
  map_id := by sorry
  map_comp := by sorry

def dayRestrictionFunctor : SphericalDiagram ⥤ BivariateDiagram where
  obj := dayRestriction
  map f :=
    { app := fun P => f.hom.app (op (finiteDerivedSmash.obj (P.1.unop, P.2.unop)))
      naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem dayRestriction_inverts : diagramStableEquivalences.IsInvertedBy
    (dayRestrictionFunctor ⋙ bivariateStableLocalization) := by sorry

def derivedDayRestriction : SphericalHomotopyCategory ⥤ BivariateHomotopyCategory :=
  Localization.lift (dayRestrictionFunctor ⋙ bivariateStableLocalization)
    dayRestriction_inverts sphericalStableLocalization

/-- A derived left Kan extension into spherical, homotopy-invariant diagrams.
The adjunction quantifies over ALL bivariate diagrams and ALL spherical
outputs.  It determines the functor and its maps up to the unique compatible
natural isomorphism; it is stronger than a chosen tensor on objects. -/
structure DerivedDayExtension where
  functor : BivariateHomotopyCategory ⥤ SphericalHomotopyCategory
  adjunction : functor ⊣ derivedDayRestriction

theorem exists_derivedDayExtension : Nonempty DerivedDayExtension := by sorry

def derivedDayExtension : DerivedDayExtension := Classical.choice exists_derivedDayExtension

def sphericalDay : SphericalHomotopyCategory × SphericalHomotopyCategory ⥤
    SphericalHomotopyCategory := derivedExternalProduct ⋙ derivedDayExtension.functor

/-- The precise derived universal pairing.  The right hand side consists of
morphisms in the localized category of STRICT spectral bivariate diagrams. -/
def sphericalDayHom (F G H : SphericalHomotopyCategory) :
    (sphericalDay.obj (F,G) ⟶ H) ≃
      (derivedExternalProduct.obj (F,G) ⟶ derivedDayRestriction.obj H) :=
  derivedDayExtension.adjunction.homEquiv _ _

/-- The universal pairing is the adjunction unit, hence is tied to the
actual finite-spectrum smash used by dayRestriction. -/
def sphericalDayPairing (F G : SphericalHomotopyCategory) :
    derivedExternalProduct.obj (F,G) ⟶
      derivedDayRestriction.obj (sphericalDay.obj (F,G)) :=
  derivedDayExtension.adjunction.unit.app _

theorem hypercompletion_inverts_pointwise (R : RealizedFoundation) :
    diagramStableEquivalences.IsInvertedBy (hypercompletion R) := by sorry

def sphericalToHypercomplete (R : RealizedFoundation) :
    SphericalHomotopyCategory ⥤ HypercompleteCategory R :=
  Localization.lift (hypercompletion R) (hypercompletion_inverts_pointwise R)
    sphericalStableLocalization

def hypercompletedDayOnPresentations (R : RealizedFoundation) :
    SphericalDiagram × SphericalDiagram ⥤ HypercompleteCategory R :=
  (sphericalStableLocalization.prod sphericalStableLocalization) ⋙ sphericalDay ⋙
    sphericalToHypercomplete R

instance (R : RealizedFoundation) : (localStableEquivalences R).ContainsIdentities := by sorry

/-- Pstragowski's compatibility theorem applies after derived Kan extension:
finite HF2-projective spectra are rigid, and tensor preserves HF2-surjective
covers.  This theorem is the monoidal-localization obligation; merely proving
pointwise invariance would NOT justify hypercompletion. -/
theorem hypercompletedDay_inverts (R : RealizedFoundation) :
    ((localStableEquivalences R).prod (localStableEquivalences R)).IsInvertedBy
      (hypercompletedDayOnPresentations R) := by sorry

def hypercompletedDay (R : RealizedFoundation) :
    HypercompleteCategory R × HypercompleteCategory R ⥤ HypercompleteCategory R :=
  Localization.lift (hypercompletedDayOnPresentations R) (hypercompletedDay_inverts R)
    ((hypercompletion R).prod (hypercompletion R))

def hypercompletedDayComparison (R : RealizedFoundation) :
    ((hypercompletion R).prod (hypercompletion R)) ⋙ hypercompletedDay R ≅
      hypercompletedDayOnPresentations R :=
  Localization.fac (hypercompletedDayOnPresentations R) (hypercompletedDay_inverts R)
    ((hypercompletion R).prod (hypercompletion R))

/-- Reindexing in the ACTUAL bivariate diagram category. -/
def bivariateSwapFunctor : BivariateDiagram ⥤ BivariateDiagram where
  obj F :=
    { obj := fun P => F.obj (P.2,P.1)
      map := fun f => F.map (f.2,f.1)
      map_id := by sorry
      map_comp := by sorry }
  map f := { app := fun P => f.app (P.2,P.1), naturality := by sorry }
  map_id := by sorry
  map_comp := by sorry

theorem bivariateSwap_inverts : bivariateStableEquivalences.IsInvertedBy
    (bivariateSwapFunctor ⋙ bivariateStableLocalization) := by sorry

def bivariateSwap : BivariateHomotopyCategory ⥤ BivariateHomotopyCategory :=
  Localization.lift (bivariateSwapFunctor ⋙ bivariateStableLocalization)
    bivariateSwap_inverts bivariateStableLocalization

def bivariateSwapComparison : bivariateStableLocalization ⋙ bivariateSwap ≅
    bivariateSwapFunctor ⋙ bivariateStableLocalization :=
  Localization.fac (bivariateSwapFunctor ⋙ bivariateStableLocalization)
    bivariateSwap_inverts bivariateStableLocalization

def externalProductComparison :
    (sphericalStableLocalization.prod sphericalStableLocalization) ⋙ derivedExternalProduct ≅
      externalProductFunctor ⋙ bivariateStableLocalization :=
  Localization.fac (externalProductFunctor ⋙ bivariateStableLocalization)
    externalProduct_inverts (sphericalStableLocalization.prod sphericalStableLocalization)

def dayRestrictionComparison : sphericalStableLocalization ⋙ derivedDayRestriction ≅
    dayRestrictionFunctor ⋙ bivariateStableLocalization :=
  Localization.fac (dayRestrictionFunctor ⋙ bivariateStableLocalization)
    dayRestriction_inverts sphericalStableLocalization

/-- The generating external symmetry is the actual orthogonal smash swap. -/
def externalSwapMap (F G : SphericalDiagram) : externalProduct F G ⟶
    bivariateSwapFunctor.obj (externalProduct G F) where
  app P := (Orthogonal.swapIso
    (Orthogonal.cofibrantResolution.functor.obj (F.obj.obj P.1))
    (Orthogonal.cofibrantResolution.functor.obj (G.obj.obj P.2))).hom
  naturality := by sorry

/-- Contravariance reverses the same finite spectrum swap. -/
def restrictionSwapMap (H : SphericalDiagram) :
    bivariateSwapFunctor.obj (dayRestriction H) ⟶ dayRestriction H where
  app P := H.obj.map (show finiteDerivedSmash.obj (P.1.unop,P.2.unop) ⟶
      finiteDerivedSmash.obj (P.2.unop,P.1.unop) from
    ⟨(Orthogonal.swapIso
      (Orthogonal.cofibrantResolution.functor.obj P.1.unop.obj)
      (Orthogonal.cofibrantResolution.functor.obj P.2.unop.obj)).hom⟩).op
  naturality := by sorry

def sphericalSwap : SphericalHomotopyCategory × SphericalHomotopyCategory ⥤
    SphericalHomotopyCategory × SphericalHomotopyCategory where
  obj P := (P.2,P.1)
  map f := (f.2,f.1)

/-- Descent is along localization of whole strict diagrams. -/
def externalSwapPresented :
    (sphericalStableLocalization.prod sphericalStableLocalization) ⋙ derivedExternalProduct ⟶
    (sphericalStableLocalization.prod sphericalStableLocalization) ⋙
      (sphericalSwap ⋙ derivedExternalProduct ⋙ bivariateSwap) where
  app F := externalProductComparison.hom.app F ≫
    bivariateStableLocalization.map (externalSwapMap F.1 F.2) ≫
    bivariateSwapComparison.inv.app (externalProduct F.2 F.1) ≫
    bivariateSwap.map (externalProductComparison.inv.app (F.2,F.1))
  naturality := by sorry

def externalSwap : derivedExternalProduct ⟶
    sphericalSwap ⋙ derivedExternalProduct ⋙ bivariateSwap :=
  Localization.liftNatTrans
    (sphericalStableLocalization.prod sphericalStableLocalization)
    (diagramStableEquivalences.prod diagramStableEquivalences) _ _ _ _ externalSwapPresented

def restrictionSwapPresented :
    sphericalStableLocalization ⋙ (derivedDayRestriction ⋙ bivariateSwap) ⟶
      sphericalStableLocalization ⋙ derivedDayRestriction where
  app H := bivariateSwap.map (dayRestrictionComparison.hom.app H) ≫
    bivariateSwapComparison.hom.app (dayRestriction H) ≫
    bivariateStableLocalization.map (restrictionSwapMap H) ≫
    dayRestrictionComparison.inv.app H
  naturality := by sorry

def restrictionSwap : derivedDayRestriction ⋙ bivariateSwap ⟶ derivedDayRestriction :=
  Localization.liftNatTrans sphericalStableLocalization diagramStableEquivalences
    _ _ _ _ restrictionSwapPresented

/-- The braid is fixed by the universal pairing equation and the actual
orthogonal block swaps in BOTH the external product and restriction. -/
def sphericalDayBraid (F G : SphericalHomotopyCategory) :
    sphericalDay.obj (F,G) ⟶ sphericalDay.obj (G,F) :=
  (sphericalDayHom F G (sphericalDay.obj (G,F))).symm
    (externalSwap.app (F,G) ≫ bivariateSwap.map (sphericalDayPairing G F) ≫
      restrictionSwap.app (sphericalDay.obj (G,F)))

theorem sphericalDayBraid_pairing (F G : SphericalHomotopyCategory) :
    sphericalDayHom F G _ (sphericalDayBraid F G) =
      externalSwap.app (F,G) ≫ bivariateSwap.map (sphericalDayPairing G F) ≫
        restrictionSwap.app (sphericalDay.obj (G,F)) := by
  exact (sphericalDayHom F G _).apply_symm_apply _

instance sphericalDayBraid_isIso (F G : SphericalHomotopyCategory) :
    IsIso (sphericalDayBraid F G) := by sorry

end
end KIP126.Synthetic.Source
