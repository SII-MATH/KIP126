import KIP126.Def.Synthetic.Source.Nu
import KIP126.Def.StableHomotopy.Source.Orthogonal.Shifts
import KIP126.Def.StableHomotopy.Source.Orthogonal.SuspensionToShift

/-! The ordinary suspension comparison needed to descend nu. This is a
roof made from displayed point-set arrows: kification identity, the
first-coordinate J insertion, and the SAME Q projection. -/
namespace KIP126.Synthetic.Source
open CategoryTheory
open KIP126.StableHomotopy.Source
noncomputable section

/-- The continuous identity goes from the kified suspension levels to
the raw reduced suspensions, in this direction only. -/
abbrev forgetOrthogonalSuspension (E : Orthogonal.Spectrum) :
    Orthogonal.underlying (Orthogonal.suspension E) ⟶
      levelSuspension (Orthogonal.underlying E) :=
  Orthogonal.forgetSuspension E

def derivedSuspensionTailMap (E : Orthogonal.Spectrum) :
    Orthogonal.underlying (Orthogonal.derivedSuspension.obj E) ⟶
      shift (Orthogonal.underlying E) 1 0 :=
  forgetOrthogonalSuspension (Orthogonal.cofibrantResolution.functor.obj E) ≫
    Orthogonal.suspensionToTail (Orthogonal.cofibrantResolution.functor.obj E) ≫
      shiftMap (Orthogonal.forget.map (Orthogonal.cofibrantResolution.projection.app E)) 1 0

/-- Q is q-cofibrant and thus well based. No CW structure on an arbitrary
raw spectrum or on an arbitrary retract is assumed here. -/
theorem derivedSuspensionTailMap_equivalence (E : Orthogonal.Spectrum) :
    stableEquivalences (derivedSuspensionTailMap E) := by sorry

def ordinaryDerivedSuspensionIso (R : RealizedFoundation) :
    Orthogonal.derivedShift 1 ⋙ ordinaryRealization R ≅
      ordinaryRealization R ⋙ shiftFunctor R.foundation.Spectrum (1 : ℤ) := by
  letI := R.tensor
  refine NatIso.ofComponents (fun E => ?_) (by sorry)
  exact R.binding.equivalence.functor.mapIso
      ((completeFunctor R.coefficientSource).mapIso
        (Localization.Construction.wIso (derivedSuspensionTailMap E)
          (derivedSuspensionTailMap_equivalence E))) ≪≫
    (by simpa only [Nat.cast_one, Nat.cast_zero, sub_zero, Functor.comp_obj,
      ordinaryRealization, sourceFunctor, Orthogonal.forget]
      using R.binding.shiftIso (Orthogonal.underlying E) 1 0)

end
end KIP126.Synthetic.Source
