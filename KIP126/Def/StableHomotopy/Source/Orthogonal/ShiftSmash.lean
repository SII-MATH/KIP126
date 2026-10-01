import KIP126.Def.StableHomotopy.Source.Orthogonal.Monoidal
import KIP126.Def.StableHomotopy.Source.Orthogonal.ShiftZigzag

/-! Point-set generators for suspension/smash comparison. They are
obtained from the SAME enriched Day pairing by retaining/evaluating the
external interval coordinate. They can be used with the Q/R and derived
adjunction zigzags; matching total degrees is not their definition. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory
open scoped Topology unitInterval
noncomputable section

def suspensionSmashPairing (E F : Spectrum) :
    Pairing (suspension E) F (suspension (smash E F)) where
  pair n m :=
    { map := ⟨fun z => Quotient.lift
        (fun tx : I × E.level n => Source.suspensionPoint ((smash E F).level (n+m)) tx.1
          (((smashPairing E F).pair n m).apply tx.2 z.2))
        (by sorry) z.1, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry

def suspensionSmashMap (E F : Spectrum) :
    smash (suspension E) F ⟶ suspension (smash E F) :=
  liftPairing (suspensionSmashPairing E F)

instance suspensionSmashMap_isIso (E F : Spectrum) : IsIso (suspensionSmashMap E F) := by sorry
def suspensionSmashIso (E F : Spectrum) :
    smash (suspension E) F ≅ suspension (smash E F) := asIso (suspensionSmashMap E F)

def loopsSmashPairing (E F : Spectrum) : Pairing (loops E) F (loops (smash E F)) where
  pair n m :=
    { map := ⟨fun z =>
        ⟨⟨fun t => ((smashPairing E F).pair n m).apply (z.1.val t) z.2,
          by sorry⟩, by sorry⟩, by sorry⟩
      left_point := by sorry
      right_point := by sorry }
  left_natural := by sorry
  right_natural := by sorry

def loopsSmashMap (E F : Spectrum) : smash (loops E) F ⟶ loops (smash E F) :=
  liftPairing (loopsSmashPairing E F)

end
end KIP126.StableHomotopy.Source.Orthogonal
