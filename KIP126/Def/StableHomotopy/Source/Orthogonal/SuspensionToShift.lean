import KIP126.Def.StableHomotopy.Source.Orthogonal.Shifts
import KIP126.Def.StableHomotopy.Source.ShiftComparison

/-! Actual underlying-prespectrum comparison for the retained external
suspension coordinate. This is shared by ordinary realization and nu. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
noncomputable section

def forgetSuspension (E : Spectrum) : underlying (suspension E) ⟶
    Source.levelSuspension (underlying E) where
  level n := { map := ⟨fun x => x, by sorry⟩, point := rfl }
  commutes := by sorry

def suspensionSourceShift (E : Spectrum) : underlying (suspension E) ⟶
    Source.shift (underlying E) 1 0 :=
  forgetSuspension E ≫ suspensionToTail E

/-- Suspension is left Quillen for the same stable q-model structure. -/
theorem suspension_cofibrant (E : Spectrum) (hE : Cofibrant E) :
    Cofibrant (suspension E) := by sorry

end
end KIP126.StableHomotopy.Source.Orthogonal
