import KIP126.Def.StableHomotopy.Source.Spheres

/-! Actual topological mapping cones in the prespectrum source. The maps
are defined on quotient representatives, including the connecting quotient
to levelwise reduced suspension. Their descent, continuity and naturality
are proof obligations, not extra operations chosen by the route model. -/
namespace KIP126.StableHomotopy.Source
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

inductive ConeRelation {X Y : BasedSpace} (f : X ⟶ Y) :
    (Y ⊕ (I × X)) → (Y ⊕ (I × X)) → Prop
  | bottom (x : X) : ConeRelation f (.inr (0,x)) (.inl (f.map x))
  | top (x : X) : ConeRelation f (.inr (1,x)) (.inl Y.point)
  | basepoint (t : I) : ConeRelation f (.inr (t,X.point)) (.inl Y.point)

def mappingCone {X Y : BasedSpace} (f : X ⟶ Y) : BasedSpace where
  carrier := Quotient (Relation.EqvGen.setoid (ConeRelation f))
  topology := inferInstance
  point := Quotient.mk _ (.inl Y.point)

def coneBase {X Y : BasedSpace} (f : X ⟶ Y) (y : Y) : mappingCone f :=
  Quotient.mk _ (.inl y)

def coneLine {X Y : BasedSpace} (f : X ⟶ Y) (t : I) (x : X) : mappingCone f :=
  Quotient.mk _ (.inr (t,x))

/-- Levelwise suspension bonding, including the interchange of its
external suspension coordinate and the prespectrum bonding coordinate. -/
def suspensionLevelBonding (E : Prespectrum) (n : ℕ) :
    suspension (E.level n) ⟶ loopSpace (suspension (E.level (n+1))) where
  map := ⟨Quotient.lift (fun z : I × E.level n =>
    (⟨⟨fun t => suspensionPoint (E.level (n+1)) z.1
      (((E.bonding n).map z.2).val t), by sorry⟩, by sorry⟩ :
      Loops PUnit (suspension (E.level (n+1))))) (by sorry), by sorry⟩
  point := by sorry

def levelSuspension (E : Prespectrum) : Prespectrum where
  level n := suspension (E.level n)
  bonding n := suspensionLevelBonding E n

def levelSuspensionMap {E F : Prespectrum} (f : E ⟶ F) :
    levelSuspension E ⟶ levelSuspension F where
  level n := suspensionMap (f.level n)
  commutes n := by sorry

/-- The cone bonding sends [t,x] to the loop u |-> [t,bonding(x)(u)]. -/
def coneBonding {E F : Prespectrum} (f : E ⟶ F) (n : ℕ) :
    mappingCone (f.level n) ⟶ loopSpace (mappingCone (f.level (n+1))) where
  map := ⟨Quotient.lift (fun z : F.level n ⊕ (I × E.level n) =>
    (⟨⟨fun t => match z with
      | .inl y => coneBase (f.level (n+1)) (((F.bonding n).map y).val t)
      | .inr z => coneLine (f.level (n+1)) z.1 (((E.bonding n).map z.2).val t),
      by sorry⟩, by sorry⟩ : Loops PUnit (mappingCone (f.level (n+1)))))
    (by sorry), by sorry⟩
  point := by sorry

def cone {E F : Prespectrum} (f : E ⟶ F) : Prespectrum where
  level n := mappingCone (f.level n)
  bonding n := coneBonding f n

def coneInclusion {E F : Prespectrum} (f : E ⟶ F) : F ⟶ cone f where
  level n := ⟨⟨coneBase (f.level n), by sorry⟩, rfl⟩
  commutes n := by sorry

/-- The quotient C(f) -> Sigma E collapses the target and preserves the
cone coordinate. This fixes the sign convention of the connecting map. -/
def coneProjection {E F : Prespectrum} (f : E ⟶ F) : cone f ⟶ levelSuspension E where
  level n := ⟨⟨Quotient.lift (fun z : F.level n ⊕ (I × E.level n) => match z with
    | .inl _ => (suspension (E.level n)).point
    | .inr z => suspensionPoint (E.level n) z.1 z.2) (by sorry), by sorry⟩, rfl⟩
  commutes n := by sorry
end
end KIP126.StableHomotopy.Source
