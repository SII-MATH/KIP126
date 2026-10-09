import Fact713NextSourceSearch.Naturality
import ActualAdamsSystemBridge.Basic

namespace Fact713NextSourceSearch.Actual
open ManualInputObligations.Reference

abbrev sourceDegree : Bidegree := ⟨12,134⟩
abbrev targetDegree : Bidegree := ⟨15,136⟩

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

theorem actual_row2684_d3_zero (sphere detector : AdamsSpectralSequence)
    (lower : (sphere.element 3 sourceDegree).carrier → (detector.element 3 sourceDegree).carrier)
    (upper : (sphere.element 3 targetDegree).carrier → (detector.element 3 targetDegree).carrier)
    (M : Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 sourceDegree (lower x) =
      upper (sphere.differential 3 sourceDegree x))
    (x : (sphere.element 3 sourceDegree).carrier) (named : M.source x = Naturality.named) :
    sphere.differential 3 sourceDegree x = 0 := by
  have lowerZero : lower x = 0 := by
    apply M.imageSourceFaithful
    rw [M.sourceMap,named,Naturality.named_maps_zero]
    exact M.imageSourceZero.symm
  have upperZero : upper (sphere.differential 3 sourceDegree x) = 0 :=
    (naturality x).symm.trans ((congrArg (detector.differential 3 sourceDegree) lowerZero).trans
      (detector.differential 3 sourceDegree).map_zero')
  have detected : Naturality.g (M.target (sphere.differential 3 sourceDegree x)) = Naturality.zv := by
    rw [← M.targetMap]
    exact (congrArg M.imageTarget upperZero).trans M.imageTargetZero
  apply M.targetFaithful
  exact (Naturality.g_reflects_zero _ detected).trans M.targetZero.symm

#print axioms actual_row2684_d3_zero
end Fact713NextSourceSearch.Actual
