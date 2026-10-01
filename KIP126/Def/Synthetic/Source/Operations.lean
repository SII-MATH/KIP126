import KIP126.Def.Synthetic.Source.Presheaves
import KIP126.Def.StableHomotopy.Source.Orthogonal.Cones
import KIP126.Def.StableHomotopy.Source.Orthogonal.PathPullback

/-! Actual derived shifts and the canonical suspension comparison on
spherical diagrams. Lambda is a displayed zigzag built from the two-cone
square, the constant-path comparison, the zero-coordinate loop inclusion
and the suspension-loop counit. Only known equivalences are inverted.
There is no chosen map justified merely by its bidegree.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

theorem finite_of_stable_equivalence {E F : Orthogonal.Spectrum} (f : E ⟶ F)
    (h : Orthogonal.stableEquivalences f) : FiniteOrthogonal E ↔ FiniteOrthogonal F := by
  sorry

theorem finite_derivedShift (n : ℤ) (E : Orthogonal.Spectrum) (h : FiniteOrthogonal E) :
    FiniteOrthogonal ((Orthogonal.derivedShift n).obj E) := by sorry

theorem finite_cone (E : Orthogonal.Spectrum) : FiniteOrthogonal (Orthogonal.cone E) := by
  sorry

def finiteCofibrant : FiniteSite ⥤ FiniteSite where
  obj P := ⟨Orthogonal.cofibrantResolution.functor.obj P.obj, by
    exact (finite_of_stable_equivalence (Orthogonal.cofibrantResolution.projection.app P.obj)
      (Orthogonal.levelTrivialFibration_stable _
        (Orthogonal.cofibrantResolution.trivial P.obj))).mpr P.property⟩
  map f := ObjectProperty.homMk (Orthogonal.cofibrantResolution.functor.map f.hom)
  map_id := by sorry
  map_comp := by sorry

def finiteCofibrantProjection (P : FiniteSite) : finiteCofibrant.obj P ⟶ P :=
  ObjectProperty.homMk (Orthogonal.cofibrantResolution.projection.app P.obj)

def finiteShift (n : ℤ) : FiniteSite ⥤ FiniteSite where
  obj P := ⟨(Orthogonal.derivedShift n).obj P.obj, finite_derivedShift n P.obj P.property⟩
  map f := ObjectProperty.homMk ((Orthogonal.derivedShift n).map f.hom)
  map_id := by sorry
  map_comp := by sorry

def finiteCofibrantCone : FiniteSite ⥤ FiniteSite where
  obj P := ⟨Orthogonal.cone (finiteCofibrant.obj P).obj, finite_cone _⟩
  map f := ObjectProperty.homMk (Orthogonal.coneMap ((finiteCofibrant.map f).hom))
  map_id := by sorry
  map_comp := by sorry

def finiteConeInclusion (P : FiniteSite) :
    finiteCofibrant.obj P ⟶ finiteCofibrantCone.obj P :=
  ObjectProperty.homMk (Orthogonal.coneInclusion (finiteCofibrant.obj P).obj)

def finiteConeLeft (P : FiniteSite) : finiteCofibrantCone.obj P ⟶ (finiteShift 1).obj P :=
  ObjectProperty.homMk (Orthogonal.coneToSuspensionLeft (finiteCofibrant.obj P).obj)
def finiteConeRight (P : FiniteSite) : finiteCofibrantCone.obj P ⟶ (finiteShift 1).obj P :=
  ObjectProperty.homMk (Orthogonal.coneToSuspensionRight (finiteCofibrant.obj P).obj)

def preShiftDiagram (n : ℤ) (F : SphericalDiagram) : SphericalDiagram :=
  ⟨(finiteShift n).op ⋙ F.obj, by sorry⟩
def postShiftDiagram (n : ℤ) (F : SphericalDiagram) : SphericalDiagram :=
  ⟨F.obj ⋙ Orthogonal.derivedShift n, by sorry⟩
def postShiftMap (n : ℤ) {F G : SphericalDiagram} (f : F ⟶ G) :
    postShiftDiagram n F ⟶ postShiftDiagram n G :=
  ObjectProperty.homMk (whiskerRight f.hom (Orthogonal.derivedShift n))

/-- (t,w) acts by P |-> Sigma^(t-w) F(Sigma^(-w) P), with the
specified point-set representatives of both derived shifts. -/
def biShiftDiagram (p : ℤ × ℤ) : SphericalDiagram ⥤ SphericalDiagram where
  obj F := postShiftDiagram (p.1-p.2) (preShiftDiagram (-p.2) F)
  map f := ObjectProperty.homMk
    (whiskerRight (whiskerLeft (finiteShift (-p.2)).op f.hom)
      (Orthogonal.derivedShift (p.1-p.2)))
  map_id := by sorry
  map_comp := by sorry

theorem biShiftDiagram_local (R : RealizedFoundation) (p : ℤ × ℤ)
    {F G : SphericalDiagram} (f : F ⟶ G) (h : localStableEquivalences R f) :
    localStableEquivalences R ((biShiftDiagram p).map f) := by sorry

theorem biShiftDiagram_inverts (R : RealizedFoundation) (p : ℤ × ℤ) :
    (localStableEquivalences R).IsInvertedBy (biShiftDiagram p ⋙ hypercompletion R) := by
  intro F G f h
  exact (localStableEquivalences R).Q_inverts _ (biShiftDiagram_local R p f h)

def biShift (R : RealizedFoundation) (p : ℤ × ℤ) :
    HypercompleteCategory R ⥤ HypercompleteCategory R :=
  Localization.Construction.lift (biShiftDiagram p ⋙ hypercompletion R)
    (biShiftDiagram_inverts R p)

def lambdaQDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨finiteCofibrant.op ⋙ F.obj, by sorry⟩
def lambdaResolvedDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨(lambdaQDiagram F).obj ⋙ Orthogonal.fibrantResolution.functor, by sorry⟩
def lambdaLoopsDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨(lambdaQDiagram F).obj ⋙ Orthogonal.derivedLoops, by sorry⟩

def lambdaPullbackPresheaf (F : SphericalDiagram) : SpectralPresheaf where
  obj P := Orthogonal.derivedPullback (F.obj.map (finiteConeInclusion P.unop).op)
    (F.obj.map (finiteConeInclusion P.unop).op)
  map f := Orthogonal.derivedPullbackMap
    (F.obj.map (finiteCofibrantCone.map f.unop).op)
    (F.obj.map (finiteCofibrantCone.map f.unop).op)
    (F.obj.map (finiteCofibrant.map f.unop).op) (by sorry) (by sorry)
  map_id := by sorry
  map_comp := by sorry

def lambdaPullbackDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨lambdaPullbackPresheaf F, by sorry⟩

def lambdaConeComparison (F : SphericalDiagram) :
    preShiftDiagram 1 F ⟶ lambdaPullbackDiagram F := ObjectProperty.homMk
  { app := fun P => Orthogonal.derivedPullbackComparison
      (F.obj.map (finiteConeInclusion P.unop).op)
      (F.obj.map (finiteConeInclusion P.unop).op)
      (F.obj.map (finiteConeLeft P.unop).op)
      (F.obj.map (finiteConeRight P.unop).op) (by sorry)
    naturality := by sorry }

def lambdaLoopInclusion (F : SphericalDiagram) :
    lambdaLoopsDiagram F ⟶ lambdaPullbackDiagram F := ObjectProperty.homMk
  { app := fun P => Orthogonal.loopsToPathPullback
      (Orthogonal.fibrantResolution.functor.map (F.obj.map (finiteConeInclusion P.unop).op))
      (Orthogonal.fibrantResolution.functor.map (F.obj.map (finiteConeInclusion P.unop).op))
    naturality := by sorry }

def lambdaCounit (F : SphericalDiagram) :
    postShiftDiagram 1 (lambdaLoopsDiagram F) ⟶ lambdaResolvedDiagram F := ObjectProperty.homMk
  { app := fun P => Orthogonal.suspensionMap
      (Orthogonal.cofibrantResolution.projection.app
        (Orthogonal.loops (Orthogonal.fibrantResolution.functor.obj
          ((lambdaQDiagram F).obj.obj P)))) ≫
      Orthogonal.suspensionLoopCounit (Orthogonal.fibrantResolution.functor.obj
        ((lambdaQDiagram F).obj.obj P))
    naturality := by sorry }

def lambdaFibrantInclusion (F : SphericalDiagram) :
    lambdaQDiagram F ⟶ lambdaResolvedDiagram F := ObjectProperty.homMk
  { app := fun P => Orthogonal.fibrantResolution.inclusion.app ((lambdaQDiagram F).obj.obj P)
    naturality := by sorry }

def lambdaCofibrantComparison (F : SphericalDiagram) : F ⟶ lambdaQDiagram F :=
  ObjectProperty.homMk
    { app := fun P => F.obj.map (finiteCofibrantProjection P.unop).op
      naturality := by sorry }

theorem lambdaLoopInclusion_local (R : RealizedFoundation) (F : SphericalDiagram) :
    localStableEquivalences R (postShiftMap 1 (lambdaLoopInclusion F)) := by sorry
theorem lambdaFibrantInclusion_local (R : RealizedFoundation) (F : SphericalDiagram) :
    localStableEquivalences R (lambdaFibrantInclusion F) := by sorry
theorem lambdaCofibrantComparison_local (R : RealizedFoundation) (F : SphericalDiagram) :
    localStableEquivalences R (lambdaCofibrantComparison F) := by sorry

/-- Canonical Sigma F(Sigma P) -> F(P). The three inverses below are
fixed maps already proved to be local equivalences, never chosen lifts.
The cone comparison itself is NOT asserted to be an equivalence. -/
def lambdaOnDiagram (R : RealizedFoundation) (F : SphericalDiagram) :
    (hypercompletion R).obj ((biShiftDiagram (0,-1)).obj F) ⟶
      (hypercompletion R).obj F := by
  let L := hypercompletion R
  let a := postShiftMap 1 (lambdaConeComparison F)
  let b := postShiftMap 1 (lambdaLoopInclusion F)
  haveI : IsIso (L.map b) :=
    (localStableEquivalences R).Q_inverts b (lambdaLoopInclusion_local R F)
  haveI : IsIso (L.map (lambdaFibrantInclusion F)) :=
    (localStableEquivalences R).Q_inverts _ (lambdaFibrantInclusion_local R F)
  haveI : IsIso (L.map (lambdaCofibrantComparison F)) :=
    (localStableEquivalences R).Q_inverts _ (lambdaCofibrantComparison_local R F)
  exact L.map a ≫ inv (L.map b) ≫ L.map (lambdaCounit F) ≫
    inv (L.map (lambdaFibrantInclusion F)) ≫ inv (L.map (lambdaCofibrantComparison F))

def lambdaDiagramTransformation (R : RealizedFoundation) :
    biShiftDiagram (0,-1) ⋙ hypercompletion R ⟶ hypercompletion R where
  app := lambdaOnDiagram R
  naturality := by sorry

/-- Descend the explicitly constructed transformation along the same
diagram localization used to define the source category. -/
def lambda (R : RealizedFoundation) : biShift R (0,-1) ⟶ 𝟭 (HypercompleteCategory R) := by
  letI : Localization.Lifting (hypercompletion R) (localStableEquivalences R)
      (biShiftDiagram (0,-1) ⋙ hypercompletion R) (biShift R (0,-1)) := by
    unfold biShift
    infer_instance
  exact Localization.liftNatTrans (hypercompletion R) (localStableEquivalences R)
    (biShiftDiagram (0,-1) ⋙ hypercompletion R) (hypercompletion R)
    (biShift R (0,-1)) (𝟭 (HypercompleteCategory R))
    (lambdaDiagramTransformation R)

end
end KIP126.Synthetic.Source
