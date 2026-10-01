import KIP126.Def.Synthetic.Source.Site
import Mathlib.CategoryTheory.Sites.LeftExact
import Mathlib.CategoryTheory.Sites.Sheafification

/-!
A relative diagram presentation of hypercomplete spherical spectral sheaves.
Objects are spectrum-valued diagrams on the POINT-SET finite category, with
homotopy invariance and finite homotopy-coproduct compatibility. They are not
ordinary set-valued sheaves on Ho(Sp). Local equivalences are isomorphisms on
ALL associated homotopy sheaves; this specifies the hypercomplete version.
The point-set/derived-diagram comparison with the infinity-site is a separate
model theorem, not a consequence of ordinary localization's universal property.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

abbrev SpectralPresheaf := FiniteSiteᵒᵖ ⥤ Orthogonal.Spectrum

def HomotopyInvariant (F : SpectralPresheaf) : Prop :=
  ∀ {P Q : FiniteSite} (f : P ⟶ Q), siteWeakEquivalences f →
    Orthogonal.stableEquivalences (F.map f.op)

/-- The comparisons are the maps induced by the displayed coproduct
inclusions. Bijections in ALL stable degrees test the genuine spectral
product comparison, not an arbitrarily chosen vector-space isomorphism. -/
def Spherical (F : SpectralPresheaf) : Prop :=
  (∀ (P : FiniteSite), IsZeroSpectrum (finiteInclusion.obj P) →
    IsZeroSpectrum (Orthogonal.forget.obj (F.obj (op P)))) ∧
  ∀ {P Q Z : FiniteSite} (i : P ⟶ Z) (j : Q ⟶ Z), IsFiniteCoproduct i j →
    ∀ p q : ℕ, Function.Bijective
      (fun a : StablePi (Orthogonal.forget.obj (F.obj (op Z))) p q =>
        (stableMap (Orthogonal.forget.map (F.map i.op)) p q a, stableMap (Orthogonal.forget.map (F.map j.op)) p q a))

def SphericalDiagramProperty : ObjectProperty SpectralPresheaf :=
  fun F => HomotopyInvariant F ∧ Spherical F
abbrev SphericalDiagram := SphericalDiagramProperty.FullSubcategory

/-- Homotopy GROUP presheaves factor through HoFiniteSite. Their higher
spectral presheaves do not: all point-set functors and natural transformations
are retained before their own homotopical localization. -/
def rawHomotopyPresheaf (F : SphericalDiagram) (p q : ℕ) :
    FiniteSiteᵒᵖ ⥤ Type := F.obj ⋙ Orthogonal.forget ⋙ stablePiFunctor p q

theorem rawHomotopyPresheaf_inverts (F : SphericalDiagram) (p q : ℕ) :
    siteWeakEquivalences.op.IsInvertedBy (rawHomotopyPresheaf F p q) := by
  sorry

abbrev homotopyPresheaf (F : SphericalDiagram) (p q : ℕ) :
    HoFiniteSiteᵒᵖ ⥤ Type :=
  Localization.lift (rawHomotopyPresheaf F p q)
    (rawHomotopyPresheaf_inverts F p q) finiteLocalization.op

/-- The uniquely induced transformation agrees on actual point-set objects.
This is ordinary descent of the π presheaf, not a replacement of spectral data. -/
def homotopyPresheafMap {F G : SphericalDiagram} (f : F ⟶ G) (p q : ℕ) :
    homotopyPresheaf F p q ⟶ homotopyPresheaf G p q :=
  Localization.liftNatTrans finiteLocalization.op siteWeakEquivalences.op
    (rawHomotopyPresheaf F p q) (rawHomotopyPresheaf G p q)
    (homotopyPresheaf F p q) (homotopyPresheaf G p q)
    (whiskerRight f.hom (Orthogonal.forget ⋙ stablePiFunctor p q))

/-- Exact compatibility fixes the induced π map and prevents an arbitrary
transformation from serving as the local-equivalence test. -/
theorem homotopyPresheafMap_at {F G : SphericalDiagram} (f : F ⟶ G)
    (p q : ℕ) :
    whiskerLeft finiteLocalization.op (homotopyPresheafMap f p q) =
      (Localization.fac (rawHomotopyPresheaf F p q)
        (rawHomotopyPresheaf_inverts F p q) finiteLocalization.op).hom ≫
      whiskerRight f.hom (Orthogonal.forget ⋙ stablePiFunctor p q) ≫
      (Localization.fac (rawHomotopyPresheaf G p q)
        (rawHomotopyPresheaf_inverts G p q) finiteLocalization.op).inv := by
  sorry

/-- Sheafification is applied only to π presheaves. We use the universe-1
lift so that the concrete sheafification exists on the presented large site. -/
def homotopySheaf (R : RealizedFoundation) (F : SphericalDiagram) (p q : ℕ) :=
  (presheafToSheaf (homologyTopology R) (Type 1)).obj
    (homotopyPresheaf F p q ⋙ uliftFunctor.{1,0})

def localStableEquivalences (R : RealizedFoundation) : MorphismProperty SphericalDiagram :=
  fun _ _ f => ∀ p q : ℕ, IsIso
    ((presheafToSheaf (homologyTopology R) (Type 1)).map
      (whiskerRight (homotopyPresheafMap f p q) uliftFunctor.{1,0}))

/-- The chosen source is the HYPERCOMPLETE version (Pst §5.1): local
isomorphisms on all homotopy sheaves are inverted. Its tensor must therefore
be the hypercompleted Day tensor, and its unit the completed sphere analogue. -/
abbrev HypercompleteCategory (R : RealizedFoundation) :=
  (localStableEquivalences R).Localization
abbrev hypercompletion (R : RealizedFoundation) :
    SphericalDiagram ⥤ HypercompleteCategory R := (localStableEquivalences R).Q

end
end KIP126.Synthetic.Source
