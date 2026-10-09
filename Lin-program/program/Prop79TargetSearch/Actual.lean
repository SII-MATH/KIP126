import Prop79TargetSearch.Naturality
import ActualAdamsSystemBridge.Basic

namespace Prop79TargetSearch.Actual
open ManualInputObligations.Reference
abbrev sourceDegree : Bidegree := ⟨14,139⟩
abbrev targetDegree : Bidegree := ⟨17,141⟩

structure Meaning (sphere cnu : AdamsSpectralSequence)
    (lower : (sphere.element 3 sourceDegree).carrier → (cnu.element 3 sourceDegree).carrier) where
  source : (sphere.element 3 sourceDegree).carrier ≃ Naturality.S
  target : (sphere.element 3 targetDegree).carrier → Naturality.U
  targetFaithful : Function.Injective target
  targetZero : target 0 = Naturality.zu
  cnuSource : (cnu.element 3 sourceDegree).carrier → Naturality.T
  cnuSourceFaithful : Function.Injective cnuSource
  sourceMap : ∀ x, cnuSource (lower x) = Naturality.f (source x)

theorem actual_row4411_d3_zero (sphere cnu : AdamsSpectralSequence)
    (lower : (sphere.element 3 sourceDegree).carrier → (cnu.element 3 sourceDegree).carrier)
    (upper : (sphere.element 3 targetDegree).carrier → (cnu.element 3 targetDegree).carrier)
    (M : Meaning sphere cnu lower)
    (naturality : ∀ x, cnu.differential 3 sourceDegree (lower x) = upper (sphere.differential 3 sourceDegree x))
    (upperZero : upper 0 = 0)
    (x : (cnu.element 3 sourceDegree).carrier)
    (named : M.cnuSource x = CnuPageCertificates.targetClass) :
    cnu.differential 3 sourceDegree x = 0 := by
  let y := M.source.symm Naturality.named
  have hy : M.source y = Naturality.named := M.source.apply_symm_apply _
  have sphereZero : sphere.differential 3 sourceDegree y = 0 := by
    apply M.targetFaithful
    exact (Naturality.sphere_target_zero _).trans M.targetZero.symm
  have lift : lower y = x := by
    apply M.cnuSourceFaithful
    rw [M.sourceMap,hy,Naturality.named_maps_to_target,named]
  exact (congrArg (cnu.differential 3 sourceDegree) lift.symm).trans
    ((naturality y).trans ((congrArg upper sphereZero).trans upperZero))

#print axioms actual_row4411_d3_zero
end Prop79TargetSearch.Actual
