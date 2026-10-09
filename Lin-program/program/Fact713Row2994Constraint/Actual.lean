import Fact713Row2994Constraint.Naturality
import ActualAdamsSystemBridge.Basic

namespace Fact713Row2994Constraint.Actual
open ManualInputObligations.Reference

abbrev sourceDegree : Bidegree := ⟨17,138⟩
abbrev targetDegree : Bidegree := ⟨20,140⟩

/-- Full meanings of the two checked induced maps. The actual naturality
equation is separate, and no value of the unknown differential is supplied. -/
structure Meaning (sphere detector : AdamsSpectralSequence)
    (lower : (sphere.element 3 sourceDegree).carrier → (detector.element 3 sourceDegree).carrier)
    (upper : (sphere.element 3 targetDegree).carrier → (detector.element 3 targetDegree).carrier) where
  source : (sphere.element 3 sourceDegree).carrier → Naturality.S
  target : (sphere.element 3 targetDegree).carrier → Naturality.U
  imageSource : (detector.element 3 sourceDegree).carrier → Naturality.T
  imageTarget : (detector.element 3 targetDegree).carrier → Naturality.V
  imageSourceFaithful : Function.Injective imageSource
  targetFaithful : Function.Injective target
  imageSourceZero : imageSource 0 = Naturality.zt
  imageTargetZero : imageTarget 0 = Naturality.zv
  targetZero : target 0 = Naturality.zs
  sourceMap : ∀ x, imageSource (lower x) = Naturality.f (source x)
  targetMap : ∀ y, imageTarget (upper y) = Naturality.g (target y)

theorem actual_row2994_d3_candidates (sphere detector : AdamsSpectralSequence)
    (lower : (sphere.element 3 sourceDegree).carrier → (detector.element 3 sourceDegree).carrier)
    (upper : (sphere.element 3 targetDegree).carrier → (detector.element 3 targetDegree).carrier)
    (M : Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 sourceDegree (lower x) =
      upper (sphere.differential 3 sourceDegree x))
    (x : (sphere.element 3 sourceDegree).carrier) (named : M.source x = Naturality.named) :
    sphere.differential 3 sourceDegree x = 0 ∨
    M.target (sphere.differential 3 sourceDegree x) = Naturality.residualClass := by
  have lowerZero : lower x = 0 := by
    apply M.imageSourceFaithful
    rw [M.sourceMap, named, Naturality.named_maps_zero]
    exact M.imageSourceZero.symm
  have upperZero : upper (sphere.differential 3 sourceDegree x) = 0 :=
    (naturality x).symm.trans ((congrArg (detector.differential 3 sourceDegree) lowerZero).trans
      (detector.differential 3 sourceDegree).map_zero')
  have detected : Naturality.g (M.target (sphere.differential 3 sourceDegree x)) = Naturality.zv := by
    rw [← M.targetMap]
    exact (congrArg M.imageTarget upperZero).trans M.imageTargetZero
  rcases (Naturality.g_kernel _).mp detected with hz | hr
  · exact Or.inl (M.targetFaithful (hz.trans M.targetZero.symm))
  · exact Or.inr hr

/-- Naming an actual representative identifies the remaining class, not its vanishing. -/
theorem actual_row2994_d3_named_candidates (sphere detector : AdamsSpectralSequence)
    (lower : (sphere.element 3 sourceDegree).carrier → (detector.element 3 sourceDegree).carrier)
    (upper : (sphere.element 3 targetDegree).carrier → (detector.element 3 targetDegree).carrier)
    (M : Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 sourceDegree (lower x) =
      upper (sphere.differential 3 sourceDegree x))
    (x : (sphere.element 3 sourceDegree).carrier) (named : M.source x = Naturality.named)
    (y : (sphere.element 3 targetDegree).carrier) (namedResidual : M.target y = Naturality.residualClass) :
    sphere.differential 3 sourceDegree x = 0 ∨ sphere.differential 3 sourceDegree x = y := by
  rcases actual_row2994_d3_candidates sphere detector lower upper M naturality x named with hz | hr
  · exact Or.inl hz
  · exact Or.inr (M.targetFaithful (hr.trans namedResidual.symm))

#print axioms actual_row2994_d3_candidates
#print axioms actual_row2994_d3_named_candidates
end Fact713Row2994Constraint.Actual
