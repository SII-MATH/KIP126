import KIP126.Def.StableHomotopy.Source.Orthogonal.ShiftZigzag

/-! The sign is an actual point-set map: reverse the retained loop
coordinate. No additive structure on a localization is postulated here. -/
namespace KIP126.StableHomotopy.Source.Orthogonal
open CategoryTheory CategoryTheory.Functor
noncomputable section

/-- gamma(t) is sent to gamma(1-t), in the EXTERNAL PUnit loop coordinate. -/
def loopReversal (E : Spectrum) : loops E ⟶ loops E where
  level n :=
    { map := ⟨fun γ => GenLoop.symmAt PUnit.unit γ, by sorry⟩
      point := by sorry }
  naturality := by sorry

def loopReversalIso (E : Spectrum) : loops E ≅ loops E where
  hom := loopReversal E
  inv := loopReversal E
  hom_inv_id := by sorry
  inv_hom_id := by sorry

def loopReversalNatural : loopsFunctor ≅ loopsFunctor :=
  NatIso.ofComponents loopReversalIso (by sorry)

/-- The same reversal after the actual Q/Σ/R replacement word. -/
def derivedLoopReversal : derivedSuspension ⋙ derivedLoops ≅
    derivedSuspension ⋙ derivedLoops :=
  isoWhiskerLeft (derivedSuspension ⋙ fibrantResolution.functor) loopReversalNatural

end
end KIP126.StableHomotopy.Source.Orthogonal
