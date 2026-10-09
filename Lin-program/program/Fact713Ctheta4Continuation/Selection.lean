import Fact713Ctheta4Continuation.Branches
import Fact713Ctheta4Transport.Constructed
import Row2907TargetProduct.Actual

namespace Fact713Ctheta4Continuation.Selection
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact713Ctheta4Transport Fact713Ctheta4Transport.Source

/-- The Ctheta4 source d3 cycle is derived from its finite complete source
meaning. The residual matrix is compared on the whole actual source. -/
structure ResidualInput (C S : AdamsSpectralSequence) (r : Bool) where
  stage2 : Stage2 C S
  transition : stage2.input.Transition
  sourceMeaning : Meaning C 3 Source.sourceDegree Comparison.c17_169_3 stage2.input.nextSource
  targetMap : (C.element 3 (AdamsTarget 3 Source.sourceDegree)).carrier →
    (S.element 3 (AdamsTarget 3 sphereDegree)).carrier
  targetZero : targetMap 0 = 0
  naturality : ∀ x, S.differential 3 sphereDegree (stage2.input.nextMap x) =
    targetMap (C.differential 3 Source.sourceDegree x)
  source : Coordinates S 3 sphereDegree 1
  target : Coordinates S 3 (AdamsTarget 3 sphereDegree) 2
  incoming : ∀ x, target.equivalence (S.differential 3 sphereDegree x) =
    eval (matrixOf 2 1 [false,r]) (source.equivalence x)

theorem residual_zero (D : ResidualInput C S r) : r = false := by
  apply Fact713Ctheta4Transport.Branches.residual_false D.stage2 D.transition
    ?_ D.targetMap D.targetZero D.naturality r D.source D.target D.incoming
  have h := (D.sourceMeaning.cycle_iff D.stage2.value3).mpr (by
    erw [D.stage2.coordinate3]
    exact Comparison.source3_cycle)
  exact h.trans (C.zero_is_zero _ _)

theorem only_two_families
    {W : Row2907PDeltaDetection.Branches.Witness S pages P}
    (targetMeaning : Row2907TargetProduct.Actual.TargetMeaning W r a)
    (D : ResidualInput C S r) (b : Bool) :
    r = false ∧ a = false ∧ IndexedFamilyCertificates.Coherent (family b) :=
  ⟨residual_zero D,Row2907TargetProduct.Actual.parameter_zero targetMeaning,family_coherent b⟩

#print axioms residual_zero
#print axioms only_two_families
end Fact713Ctheta4Continuation.Selection
