import KIP126.Def.StableHomotopy.Source.Orthogonal.Shifts

/-! The actual two-cone model of suspension. The cone coordinate runs
from its base at 0 to its collapsed vertex at 1. The two maps to suspension
have coordinates (1-t)/2 and (1+t)/2, so their common base is the equator.
This fixes the orientation of the colimit-to-limit comparison used for
synthetic lambda; no natural map is selected merely by its degree.
-/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

def zeroSpectrum : Spectrum where
  level _ := ⟨PUnit, inferInstance, PUnit.unit⟩
  convenient := by sorry
  action _ _ :=
    { map := ContinuousMap.const _ PUnit.unit
      left_point := by intros; rfl
      right_point := by intros; rfl }
  identity := by intros; rfl
  composition := by intros; rfl

def coneCollapse (X : BasedSpace) : Set (I × X) :=
  {z | z.1 = 1 ∨ z.2 = X.point}

def rawConeSpace (X : BasedSpace) : BasedSpace where
  carrier := Quotient (Source.collapseSetoid (coneCollapse X))
  topology := inferInstance
  point := Quotient.mk _ (1,X.point)

def coneSpace (X : BasedSpace) : BasedSpace where
  carrier := rawConeSpace X
  topology := TopologicalSpace.compactlyGenerated.{0} (rawConeSpace X)
  point := (rawConeSpace X).point

def conePoint (X : BasedSpace) (t : I) (x : X) : coneSpace X :=
  Quotient.mk _ (t,x)

def coneAction {n m : ℕ} (E : Spectrum) (a : J n m)
    (x : coneSpace (E.level n)) : coneSpace (E.level m) :=
  Quotient.lift (fun z : I × E.level n =>
    conePoint (E.level m) z.1 ((E.action n m).apply a z.2)) (by sorry) x

def cone (E : Spectrum) : Spectrum where
  level n := coneSpace (E.level n)
  convenient := by sorry
  action n m :=
    { map := ⟨fun z => coneAction E z.1 z.2, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  identity := by sorry
  composition := by sorry

def coneMap {E F : Spectrum} (f : E ⟶ F) : cone E ⟶ cone F where
  level n :=
    { map := ⟨Quotient.map (fun z : I × E.level n => (z.1,(f.level n).map z.2))
        (by sorry), by sorry⟩
      point := by sorry }
  naturality := by sorry

def coneFunctor : Spectrum ⥤ Spectrum where
  obj := cone
  map := coneMap
  map_id := by sorry
  map_comp := by sorry

def coneInclusion (E : Spectrum) : E ⟶ cone E where
  level n :=
    { map := ⟨fun x => conePoint (E.level n) 0 x, by sorry⟩
      point := by sorry }
  naturality := by sorry

def contractCoordinate (u t : I) : I :=
  ⟨(u : ℝ) + (1-(u : ℝ))*(t : ℝ), by
    constructor <;> nlinarith [u.property.1,u.property.2,t.property.1,t.property.2]⟩

/-- The cone contraction is the displayed coordinate formula, rather
than an unrecorded assertion that some contraction exists. -/
def coneContraction (E : Spectrum) (n : ℕ) (u : I)
    (x : coneSpace (E.level n)) : coneSpace (E.level n) :=
  Quotient.lift (fun z : I × E.level n =>
    conePoint (E.level n) (contractCoordinate u z.1) z.2) (by sorry) x

theorem cone_isZero (E : Spectrum) :
    stableEquivalences (zeroMap (cone E) zeroSpectrum) := by sorry

def leftConeCoordinate (t : I) : I :=
  ⟨(1-(t : ℝ))/2, by constructor <;> linarith [t.property.1,t.property.2]⟩
def rightConeCoordinate (t : I) : I :=
  ⟨(1+(t : ℝ))/2, by constructor <;> linarith [t.property.1,t.property.2]⟩

def coneToSuspensionLeft (E : Spectrum) : cone E ⟶ suspension E where
  level n :=
    { map := ⟨Quotient.lift (fun z : I × E.level n =>
        Source.suspensionPoint (E.level n) (leftConeCoordinate z.1) z.2)
        (by sorry), by sorry⟩
      point := by sorry }
  naturality := by sorry

def coneToSuspensionRight (E : Spectrum) : cone E ⟶ suspension E where
  level n :=
    { map := ⟨Quotient.lift (fun z : I × E.level n =>
        Source.suspensionPoint (E.level n) (rightConeCoordinate z.1) z.2)
        (by sorry), by sorry⟩
      point := by sorry }
  naturality := by sorry

theorem cone_square (E : Spectrum) :
    coneInclusion E ≫ coneToSuspensionLeft E =
      coneInclusion E ≫ coneToSuspensionRight E := by sorry

theorem coneInclusion_natural {E F : Spectrum} (f : E ⟶ F) :
    f ≫ coneInclusion F = coneInclusion E ≫ coneMap f := by sorry

theorem coneToSuspensionLeft_natural {E F : Spectrum} (f : E ⟶ F) :
    coneMap f ≫ coneToSuspensionLeft F = coneToSuspensionLeft E ≫ suspensionMap f := by sorry

theorem coneToSuspensionRight_natural {E F : Spectrum} (f : E ⟶ F) :
    coneMap f ≫ coneToSuspensionRight F = coneToSuspensionRight E ≫ suspensionMap f := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
