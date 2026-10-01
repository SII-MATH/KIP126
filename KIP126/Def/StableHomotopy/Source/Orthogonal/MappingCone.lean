import KIP126.Def.StableHomotopy.Source.Orthogonal.Shifts
import KIP126.Def.StableHomotopy.Source.Cofibers

/-! Actual mapping cones, with the external interval coordinate retained
in the J action.  Cofibrant replacement is applied to the whole arrow
before using this cone as a derived cofiber.  The projection to suspension
preserves its interval coordinate and therefore fixes the boundary sign. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

def mappingConeSpace {X Y : BasedSpace} (f : X ⟶ Y) : BasedSpace where
  carrier := Source.mappingCone f
  topology := TopologicalSpace.compactlyGenerated.{0} (Source.mappingCone f)
  point := (Source.mappingCone f).point

def mappingConeAction {E F : Spectrum} (f : E ⟶ F) {n m : ℕ}
    (a : J n m) (x : mappingConeSpace (f.level n)) : mappingConeSpace (f.level m) :=
  Quotient.lift (fun z : F.level n ⊕ (I × E.level n) => match z with
    | .inl y => Source.coneBase (f.level m) ((F.action n m).apply a y)
    | .inr tx => Source.coneLine (f.level m) tx.1 ((E.action n m).apply a tx.2))
    (by sorry) x

def mappingCone {E F : Spectrum} (f : E ⟶ F) : Spectrum where
  level n := mappingConeSpace (f.level n)
  convenient := by sorry
  action n m :=
    { map := ⟨fun z => mappingConeAction f z.1 z.2, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  identity := by sorry
  composition := by sorry

def mappingConeInclusion {E F : Spectrum} (f : E ⟶ F) : F ⟶ mappingCone f where
  level n := ⟨⟨Source.coneBase (f.level n), by sorry⟩, rfl⟩
  naturality := by sorry

def mappingConeProjection {E F : Spectrum} (f : E ⟶ F) :
    mappingCone f ⟶ suspension E where
  level n :=
    { map := ⟨Quotient.lift (fun z : F.level n ⊕ (I × E.level n) => match z with
        | .inl _ => (Source.suspension (E.level n)).point
        | .inr tx => Source.suspensionPoint (E.level n) tx.1 tx.2) (by sorry), by sorry⟩
      point := rfl }
  naturality := by sorry

def mappingConeMap {E F E' F' : Spectrum} (f : E ⟶ F) (g : E' ⟶ F')
    (a : E ⟶ E') (b : F ⟶ F') (h : a ≫ g = f ≫ b) :
    mappingCone f ⟶ mappingCone g where
  level n :=
    { map := ⟨Quotient.lift (fun z : F.level n ⊕ (I × E.level n) => match z with
        | .inl y => Source.coneBase (g.level n) ((b.level n).map y)
        | .inr tx => Source.coneLine (g.level n) tx.1 ((a.level n).map tx.2))
          (by sorry), by sorry⟩
      point := by sorry }
  naturality := by sorry

def derivedCone {E F : Spectrum} (f : E ⟶ F) : Spectrum :=
  mappingCone (cofibrantResolution.functor.map f)

def derivedConeProjection {E F : Spectrum} (f : E ⟶ F) :
    derivedCone f ⟶ derivedSuspension.obj E :=
  mappingConeProjection (cofibrantResolution.functor.map f)

def derivedConeMap {E F E' F' : Spectrum} (f : E ⟶ F) (g : E' ⟶ F')
    (a : E ⟶ E') (b : F ⟶ F') (h : a ≫ g = f ≫ b) :
    derivedCone f ⟶ derivedCone g :=
  mappingConeMap (cofibrantResolution.functor.map f) (cofibrantResolution.functor.map g)
    (cofibrantResolution.functor.map a) (cofibrantResolution.functor.map b)
    (by rw [← Functor.map_comp, ← Functor.map_comp, h])

/-- Derived cones preserve weak equivalences of arrows.  Both source
and target conditions are necessary; a lone isomorphism of labels is not
a replacement for this commuting square. -/
theorem derivedConeMap_equivalence {E F E' F' : Spectrum}
    (f : E ⟶ F) (g : E' ⟶ F') (a : E ⟶ E') (b : F ⟶ F')
    (h : a ≫ g = f ≫ b) (ha : stableEquivalences a) (hb : stableEquivalences b) :
    stableEquivalences (derivedConeMap f g a b h) := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
