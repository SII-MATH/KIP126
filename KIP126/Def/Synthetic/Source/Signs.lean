import KIP126.Def.Synthetic.Source.Day
import KIP126.Def.Synthetic.Source.Nu
import KIP126.Def.StableHomotopy.Source.Orthogonal.Signs

/-! Canonical signs on the source, before any transported Preadditive
instance. The negative map is the loop-coordinate reversal, conjugated
by Q -> Id and Q -> Omega R Sigma Q. All inverted arrows are the actual
replacement/unit weak equivalences on whole diagrams.
-/
namespace KIP126.Synthetic.Source
open CategoryTheory CategoryTheory.Functor Opposite
open KIP126.StableHomotopy.Source
noncomputable section

def signQDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨F.obj ⋙ Orthogonal.cofibrantResolution.functor, by sorry⟩
def signLoopDiagram (F : SphericalDiagram) : SphericalDiagram :=
  ⟨F.obj ⋙ Orthogonal.derivedSuspension ⋙ Orthogonal.derivedLoops, by sorry⟩

def signQProjection (F : SphericalDiagram) : signQDiagram F ⟶ F :=
  ObjectProperty.homMk (whiskerLeft F.obj Orthogonal.cofibrantResolution.projection)
def signLoopUnit (F : SphericalDiagram) : signQDiagram F ⟶ signLoopDiagram F :=
  ObjectProperty.homMk (whiskerLeft F.obj Orthogonal.derivedShiftUnit)
def signLoopReversal (F : SphericalDiagram) : signLoopDiagram F ≅ signLoopDiagram F where
  hom := ObjectProperty.homMk (whiskerLeft F.obj Orthogonal.derivedLoopReversal.hom)
  inv := ObjectProperty.homMk (whiskerLeft F.obj Orthogonal.derivedLoopReversal.inv)
  hom_inv_id := by sorry
  inv_hom_id := by sorry

theorem signQProjection_equivalence (F : SphericalDiagram) :
    diagramStableEquivalences (signQProjection F) := by
  intro P
  exact Orthogonal.levelTrivialFibration_stable _
    (Orthogonal.cofibrantResolution.trivial (F.obj.obj P))
theorem signLoopUnit_equivalence (F : SphericalDiagram) :
    diagramStableEquivalences (signLoopUnit F) := fun P =>
  Orthogonal.derivedShiftUnit_equivalence (F.obj.obj P)

/-- Explicit conjugation of the loop reversal. The same arrow is its
inverse; its action on stable homotopy is additive inversion. -/
def negativeOnPresentation (R : RealizedFoundation) (F : SphericalDiagram) :
    (hypercompletion R).obj F ≅ (hypercompletion R).obj F := by
  let L := hypercompletion R
  let q := signQProjection F
  let u := signLoopUnit F
  letI : IsIso (L.map q) := hypercompletion_inverts_pointwise R q
    (signQProjection_equivalence F)
  letI : IsIso (L.map u) := hypercompletion_inverts_pointwise R u
    (signLoopUnit_equivalence F)
  exact (asIso (L.map q)).symm ≪≫ asIso (L.map u) ≪≫
    L.mapIso (signLoopReversal F) ≪≫ (asIso (L.map u)).symm ≪≫ asIso (L.map q)

def negativePresented (R : RealizedFoundation) : hypercompletion R ≅ hypercompletion R :=
  NatIso.ofComponents (negativeOnPresentation R) (by sorry)

def canonicalNegative (R : RealizedFoundation) :
    𝟭 (HypercompleteCategory R) ≅ 𝟭 (HypercompleteCategory R) :=
  Localization.liftNatIso (hypercompletion R) (localStableEquivalences R)
    (hypercompletion R) (hypercompletion R) (𝟭 _) (𝟭 _) (negativePresented R)

/-- This statement fixes the meaning of the interval reversal in the
already source-bound ordinary category. It tests the actual map, rather
than using a selected sign as its definition. -/
theorem loopReversal_realizes_negative (R : RealizedFoundation) (E : Orthogonal.Spectrum) :
    (ordinaryRealization R).map (Orthogonal.loopReversal E) =
      -(𝟙 ((ordinaryRealization R).obj (Orthogonal.loops E))) := by sorry

theorem canonicalNegative_square (R : RealizedFoundation) :
    canonicalNegative R ≪≫ canonicalNegative R = Iso.refl _ := by sorry

/-- Integer parity, including negative degrees, controls the one actual
involution. There is no independently chosen sign in each degree. -/
def signIso (R : RealizedFoundation) (n : ℤ) :
    𝟭 (HypercompleteCategory R) ≅ 𝟭 (HypercompleteCategory R) :=
  if n % 2 = 0 then Iso.refl _ else canonicalNegative R

theorem signIso_add (R : RealizedFoundation) (m n : ℤ) :
    signIso R (m+n) = signIso R m ≪≫ signIso R n := by sorry

end
end KIP126.Synthetic.Source
