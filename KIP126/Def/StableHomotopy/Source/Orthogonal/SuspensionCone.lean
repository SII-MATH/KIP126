import KIP126.Def.StableHomotopy.Source.Orthogonal.MappingCone

/-! Actual permutation of the retained suspension and cone coordinates.
This fixes exact-functor boundary signs independently of any convention
for multiplying bigraded sphere classes. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

/-- [t,[u,x]] is sent to [u,[t,x]]. -/
def doubleSuspensionSwap (E : Spectrum) : suspension (suspension E) ⟶ suspension (suspension E) where
  level n :=
    { map := ⟨Quotient.lift (fun tx : I × Source.suspension (E.level n) =>
        Quotient.lift (fun ux : I × E.level n =>
          Source.suspensionPoint (Source.suspension (E.level n)) ux.1
            (Source.suspensionPoint (E.level n) tx.1 ux.2)) (by sorry) tx.2)
          (by sorry), by sorry⟩
      point := by sorry }
  naturality := by sorry

/-- External suspension passes through the actual cone. It keeps the
external t coordinate inside the resulting suspended source, while the
cone coordinate u remains the cone coordinate. -/
def suspensionConeMap {E F : Spectrum} (f : E ⟶ F) :
    suspension (mappingCone f) ⟶ mappingCone (suspensionMap f) where
  level n :=
    { map := ⟨Quotient.lift
        (fun tx : I × Source.mappingCone (f.level n) =>
          Quotient.lift (fun z : F.level n ⊕ (I × E.level n) => match z with
            | .inl y => Source.coneBase ((suspensionMap f).level n)
                (Source.suspensionPoint (F.level n) tx.1 y)
            | .inr ux => Source.coneLine ((suspensionMap f).level n) ux.1
                (Source.suspensionPoint (E.level n) tx.1 ux.2)) (by sorry) tx.2)
        (by sorry), by sorry⟩
      point := by sorry }
  naturality := by sorry

instance suspensionConeMap_isIso {E F : Spectrum} (f : E ⟶ F) :
    IsIso (suspensionConeMap f) := by sorry

theorem suspensionConeMap_inclusion {E F : Spectrum} (f : E ⟶ F) :
    suspensionMap (mappingConeInclusion f) ≫ suspensionConeMap f =
      mappingConeInclusion (suspensionMap f) := by sorry

/-- The THIRD arrow exposes the permutation, rather than silently treating
it as identity. In stable homotopy this interchange is minus identity. -/
theorem suspensionConeMap_boundary {E F : Spectrum} (f : E ⟶ F) :
    suspensionConeMap f ≫ mappingConeProjection (suspensionMap f) =
      suspensionMap (mappingConeProjection f) ≫ doubleSuspensionSwap E := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
