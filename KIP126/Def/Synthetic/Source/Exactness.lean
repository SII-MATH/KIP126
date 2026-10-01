import KIP126.Def.Synthetic.Source.Operations
import KIP126.Def.StableHomotopy.Source.Orthogonal.MappingCone

/-! The triangles of the source are the images of actual derived mapping
cones of strict spectral diagrams. This specifies maps and boundary signs,
not only the isomorphism class of the third object. Localizing diagrams
before comparing triangles retains the needed derived natural maps. -/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

def cofibrantDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨F.obj ⋙ Orthogonal.cofibrantResolution.functor, by sorry⟩

def cofibrantDiagramProjection (F : SphericalDiagram) : cofibrantDiagram F ⟶ F :=
  ObjectProperty.homMk (whiskerLeft F.obj Orthogonal.cofibrantResolution.projection)

theorem cofibrantDiagramProjection_local (R : RealizedFoundation) (F : SphericalDiagram) :
    localStableEquivalences R (cofibrantDiagramProjection F) := by sorry

def conePresheaf {F G : SphericalDiagram} (f : F ⟶ G) : SpectralPresheaf where
  obj P := Orthogonal.derivedCone (f.hom.app P)
  map a := Orthogonal.derivedConeMap (f.hom.app _) (f.hom.app _)
    (F.obj.map a) (G.obj.map a) (f.hom.naturality a)
  map_id := by sorry
  map_comp := by sorry

def coneDiagram {F G : SphericalDiagram} (f : F ⟶ G) : SphericalDiagram :=
  ⟨conePresheaf f, by sorry⟩

def coneDiagramInclusion {F G : SphericalDiagram} (f : F ⟶ G) :
    cofibrantDiagram G ⟶ coneDiagram f := ObjectProperty.homMk
  { app := fun P => Orthogonal.mappingConeInclusion
      (Orthogonal.cofibrantResolution.functor.map (f.hom.app P))
    naturality := by sorry }

def coneDiagramProjection {F G : SphericalDiagram} (f : F ⟶ G) :
    coneDiagram f ⟶ (biShiftDiagram (1,0)).obj F := ObjectProperty.homMk
  { app := fun P => Orthogonal.derivedConeProjection (f.hom.app P)
    naturality := by sorry }

/-- The construction localization gives this specified shift comparison;
no second objectwise shift identification is selected. -/
def biShiftComparison (R : RealizedFoundation) (p : ℤ × ℤ) :
    hypercompletion R ⋙ biShift R p ≅ biShiftDiagram p ⋙ hypercompletion R :=
  eqToIso (Localization.Construction.fac _ _)

def sourceConeInclusion (R : RealizedFoundation) {F G : SphericalDiagram} (f : F ⟶ G) :
    (hypercompletion R).obj G ⟶ (hypercompletion R).obj (coneDiagram f) := by
  let q := cofibrantDiagramProjection G
  haveI : IsIso ((hypercompletion R).map q) :=
    (localStableEquivalences R).Q_inverts q (cofibrantDiagramProjection_local R G)
  exact inv ((hypercompletion R).map q) ≫ (hypercompletion R).map (coneDiagramInclusion f)

def sourceConeBoundary (R : RealizedFoundation) {F G : SphericalDiagram} (f : F ⟶ G) :
    (hypercompletion R).obj (coneDiagram f) ⟶
      (biShift R (1,0)).obj ((hypercompletion R).obj F) :=
  (hypercompletion R).map (coneDiagramProjection f) ≫ (biShiftComparison R (1,0)).inv.app F

/-- A source triangle is isomorphic, with all THREE arrows, to one of the
actual localized diagram cones. Every morphism in the source has a strict
arrow presentation after derived replacement; establishing that presentation
and the triangulated axioms are model-construction proof obligations. -/
def IsSourceTriangle (R : RealizedFoundation) {X Y Z : HypercompleteCategory R}
    (f : X ⟶ Y) (g : Y ⟶ Z) (h : Z ⟶ (biShift R (1,0)).obj X) : Prop :=
  ∃ (F G : SphericalDiagram) (a : F ⟶ G)
    (eX : (hypercompletion R).obj F ≅ X)
    (eY : (hypercompletion R).obj G ≅ Y)
    (eZ : (hypercompletion R).obj (coneDiagram a) ≅ Z),
    eX.hom ≫ f = (hypercompletion R).map a ≫ eY.hom ∧
    eY.hom ≫ g = sourceConeInclusion R a ≫ eZ.hom ∧
    eZ.hom ≫ h = sourceConeBoundary R a ≫ (biShift R (1,0)).map eX.hom

end
end KIP126.Synthetic.Source
