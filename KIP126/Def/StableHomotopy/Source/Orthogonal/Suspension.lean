import KIP126.Def.StableHomotopy.Source.Orthogonal.DerivedSmash

/-! The suspension-spectrum specialization of the SAME derived smash.
The universal pairing is [(a,x),(b,y)] |-> [a directSum b,[x,y]].
It is retained to identify the older CW comparison with Day convolution,
rather than leaving two unrelated tensor comparisons in the realization. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory CategoryTheory.MonoidalCategory
noncomputable section

def suspensionSpace (X : BasedSpace) (n : ℕ) : BasedSpace where
  carrier := Source.smash (J 0 n) X
  topology := TopologicalSpace.compactlyGenerated.{0} (Source.smash (J 0 n) X)
  point := (Source.smash (J 0 n) X).point

def suspensionObject (X : BasedSpace) (hX : IsConvenient X) : Spectrum where
  level := suspensionSpace X
  convenient := by sorry
  action n m :=
    { map := ⟨fun z => Quotient.lift
        (fun ax : J 0 n × X =>
          (Quotient.mk _ (jCompose ax.1 z.1,ax.2) : Source.smash (J 0 m) X))
        (by sorry) z.2, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  identity := by sorry
  composition := by sorry

theorem cellular_convenient (X : BasedSpace) (x : CellularSpace X) : IsConvenient X := by sorry
theorem cellularSmash_convenient (X Y : BasedSpace)
    (x : CellularSpace X) (y : CellularSpace Y) : IsConvenient (kify (Source.smash X Y)) := by sorry

/-- In particular, no assertion that the raw product of two arbitrary CW
spaces is already a k-space is needed. Compact test cubes see the same
homotopy groups after this actual continuous identity map. -/
theorem kifySuspension_equivalence (X Y : BasedSpace)
    (x : CellularSpace X) (y : CellularSpace Y) :
    Source.stableEquivalences
      (Source.suspensionSpectrumMap (kifyMap (Source.smash X Y))) := by sorry
def kifySuspensionIso (X Y : BasedSpace) (x : CellularSpace X) (y : CellularSpace Y) :
    Source.stabilizeFunctor.obj (Source.suspensionSpectrum (kify (Source.smash X Y))) ≅
      Source.stabilizeFunctor.obj (Source.suspensionSpectrum (Source.smash X Y)) :=
  Localization.Construction.wIso (Source.suspensionSpectrumMap (kifyMap (Source.smash X Y)))
    (kifySuspension_equivalence X Y x y)

/-- The comparison from iterated reduced suspensions is recursively the
actual adjoint bonding map; its level-zero map is x |-> [id_R0,x]. -/
def suspensionComparisonLevel (X : BasedSpace) (hX : IsConvenient X) :
    ∀ n, Source.suspensionLevel X n ⟶ (suspensionObject X hX).level n
  | 0 =>
    { map := ⟨fun x => (Quotient.mk _ (jId 0,x) : Source.smash (J 0 0) X), by sorry⟩
      point := by sorry }
  | n+1 =>
    { map := ⟨Quotient.lift
        (fun tx : unitInterval × Source.suspensionLevel X n =>
          ((suspensionObject X hX).action n (n+1)).apply (jLine n tx.1)
            ((suspensionComparisonLevel X hX n).map tx.2)) (by sorry), by sorry⟩
      point := by sorry }

def suspensionComparisonMap (X : BasedSpace) (hX : IsConvenient X) :
    Source.suspensionSpectrum X ⟶ underlying (suspensionObject X hX) where
  level := suspensionComparisonLevel X hX
  commutes := by sorry

theorem suspensionComparison_equivalence (X : BasedSpace) (hX : IsConvenient X) :
    Source.stableEquivalences (suspensionComparisonMap X hX) := by sorry
def suspensionComparisonIso (X : BasedSpace) (hX : IsConvenient X) :
    Source.stabilizeFunctor.obj (Source.suspensionSpectrum X) ≅
      Source.stabilizeFunctor.obj (underlying (suspensionObject X hX)) :=
  Localization.Construction.wIso (suspensionComparisonMap X hX)
    (suspensionComparison_equivalence X hX)

def suspensionPairing (X Y : BasedSpace) (x : CellularSpace X) (y : CellularSpace Y) :
    Pairing (suspensionObject X (cellular_convenient X x))
      (suspensionObject Y (cellular_convenient Y y))
      (suspensionObject (kify (Source.smash X Y)) (cellularSmash_convenient X Y x y)) where
  pair n m :=
    { map := ⟨fun z => Quotient.lift
        (fun ax : J 0 n × X => Quotient.lift
          (fun by' : J 0 m × Y =>
            (Quotient.mk _ (jDirectSum ax.1 by'.1,
              (Quotient.mk _ (ax.2,by'.2) : Source.smash X Y)) :
                Source.smash (J 0 (n+m)) (kify (Source.smash X Y))))
          (by sorry) z.2) (by sorry) z.1, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry

theorem suspensionObject_cofibrant (X : BasedSpace) (x : CellularSpace X) :
    Cofibrant (suspensionObject X (cellular_convenient X x)) := by sorry
instance suspensionPairing_isIso (X Y : BasedSpace) (x : CellularSpace X) (y : CellularSpace Y) :
    IsIso (liftPairing (suspensionPairing X Y x y)) := by sorry

def cellularObject (X : BasedSpace) (x : CellularSpace X) : CofibrantSpectra :=
  ⟨suspensionObject X (cellular_convenient X x), suspensionObject_cofibrant X x⟩

/-- Entirely assembled from the SAME localized tensor, the actual
universal suspension pairing, and the recursive suspension comparison. -/
def stableSuspensionSmashIso (X Y : BasedSpace) (x : CellularSpace X) (y : CellularSpace Y) :
    Source.stabilizeFunctor.obj (Source.suspensionSpectrum (Source.smash X Y)) ≅
      Source.stabilizeFunctor.obj (Source.suspensionSpectrum X) ⊗
        Source.stabilizeFunctor.obj (Source.suspensionSpectrum Y) :=
  (kifySuspensionIso X Y x y).symm ≪≫
    suspensionComparisonIso (kify (Source.smash X Y)) (cellularSmash_convenient X Y x y) ≪≫
    (Source.stabilizeFunctor.mapIso (forget.mapIso
      (asIso (liftPairing (suspensionPairing X Y x y))))).symm ≪≫
    (Functor.Monoidal.μIso cofibrantToStable (cellularObject X x) (cellularObject Y y)).symm ≪≫
    tensorIso (suspensionComparisonIso X (cellular_convenient X x)).symm
      (suspensionComparisonIso Y (cellular_convenient Y y)).symm

end
end KIP126.StableHomotopy.Source.Orthogonal

namespace KIP126.StableHomotopy.Source
open CategoryTheory CategoryTheory.MonoidalCategory
noncomputable section

def suspensionSmashIso (H : Mod2Source) (X Y : BasedSpace)
    (x : CellularSpace X) (y : CellularSpace Y) :
    (sourceFunctor H).obj (suspensionSpectrum (smash X Y)) ≅
      (sourceFunctor H).obj (suspensionSpectrum X) ⊗
        (sourceFunctor H).obj (suspensionSpectrum Y) :=
  (completeFunctor H).mapIso (Orthogonal.stableSuspensionSmashIso X Y x y) ≪≫
    (Functor.Monoidal.μIso (completeFunctor H)
      (stabilizeFunctor.obj (suspensionSpectrum X))
      (stabilizeFunctor.obj (suspensionSpectrum Y))).symm

end
end KIP126.StableHomotopy.Source
