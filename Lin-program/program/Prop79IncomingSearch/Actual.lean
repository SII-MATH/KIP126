import Prop79IncomingSearch.Naturality
import ActualAdamsSystemBridge.Basic

namespace Prop79IncomingSearch.Actual
open ManualInputObligations.Reference

abbrev sourceDegree : Bidegree := ⟨11,137⟩
abbrev targetDegree : Bidegree := ⟨14,139⟩
abbrev etaSourceDegree : Bidegree := ⟨12,143⟩
abbrev etaTargetDegree : Bidegree := ⟨15,145⟩

/-- Whole finite-map meanings and faithful actual coordinates; no value of
either unknown differential is a field of this structure. -/
structure Meaning (sphere cnu : AdamsSpectralSequence)
    (etaLower : (sphere.element 3 sourceDegree).carrier → (cnu.element 3 etaSourceDegree).carrier)
    (etaUpper : (sphere.element 3 targetDegree).carrier → (cnu.element 3 etaTargetDegree).carrier)
    (bottomLower : (sphere.element 3 sourceDegree).carrier → (cnu.element 3 sourceDegree).carrier)
    (bottomUpper : (sphere.element 3 targetDegree).carrier → (cnu.element 3 targetDegree).carrier) where
  source : (sphere.element 3 sourceDegree).carrier ≃ Naturality.S
  target : (sphere.element 3 targetDegree).carrier → Naturality.U
  targetFaithful : Function.Injective target
  targetZero : target 0 = Row2925Detector.Naturality.zs
  etaSource : (cnu.element 3 etaSourceDegree).carrier → Row2925Detector.Naturality.T
  etaTarget : (cnu.element 3 etaTargetDegree).carrier → Row2925Detector.Naturality.V
  etaSourceFaithful : Function.Injective etaSource
  etaSourceZero : etaSource 0 = Row2925Detector.Naturality.zt
  etaTargetZero : etaTarget 0 = Row2925Detector.Naturality.zv
  etaSourceMap : ∀ x, etaSource (etaLower x) = Row2925Detector.Naturality.f (source x)
  etaTargetMap : ∀ x, etaTarget (etaUpper x) = Row2925Detector.Naturality.g (target x)
  bottomSource : (cnu.element 3 sourceDegree).carrier → Naturality.T
  bottomTarget : (cnu.element 3 targetDegree).carrier → Naturality.V
  bottomSourceFaithful : Function.Injective bottomSource
  bottomSourceMap : ∀ x, bottomSource (bottomLower x) = Naturality.f (source x)
  bottomTargetMap : ∀ x, bottomTarget (bottomUpper x) = Naturality.g (target x)

theorem actual_row4180_d3_zero (sphere cnu : AdamsSpectralSequence)
    (etaLower : (sphere.element 3 sourceDegree).carrier → (cnu.element 3 etaSourceDegree).carrier)
    (etaUpper : (sphere.element 3 targetDegree).carrier → (cnu.element 3 etaTargetDegree).carrier)
    (bottomLower : (sphere.element 3 sourceDegree).carrier → (cnu.element 3 sourceDegree).carrier)
    (bottomUpper : (sphere.element 3 targetDegree).carrier → (cnu.element 3 targetDegree).carrier)
    (M : Meaning sphere cnu etaLower etaUpper bottomLower bottomUpper)
    (etaNaturality : ∀ x, cnu.differential 3 etaSourceDegree (etaLower x) =
      etaUpper (sphere.differential 3 sourceDegree x))
    (bottomNaturality : ∀ x, cnu.differential 3 sourceDegree (bottomLower x) =
      bottomUpper (sphere.differential 3 sourceDegree x))
    (bottomZero : bottomUpper 0 = 0)
    (x : (cnu.element 3 sourceDegree).carrier) (named : M.bottomSource x = Naturality.named) :
    cnu.differential 3 sourceDegree x = 0 := by
  let y := M.source.symm Row2925Detector.Naturality.named
  have hy : M.source y = Row2925Detector.Naturality.named := M.source.apply_symm_apply _
  have etaZero : etaLower y = 0 := by
    apply M.etaSourceFaithful
    rw [M.etaSourceMap, hy, Row2925Detector.Naturality.named_maps_zero]
    exact M.etaSourceZero.symm
  have upperZero : etaUpper (sphere.differential 3 sourceDegree y) = 0 :=
    (etaNaturality y).symm.trans ((congrArg (cnu.differential 3 etaSourceDegree) etaZero).trans
      (cnu.differential 3 etaSourceDegree).map_zero')
  have sphereZero : sphere.differential 3 sourceDegree y = 0 := by
    apply M.targetFaithful
    apply Eq.trans (Row2925Detector.Naturality.g_reflects_zero _ ?_) M.targetZero.symm
    rw [← M.etaTargetMap, upperZero, M.etaTargetZero]
  have lift : bottomLower y = x := by
    apply M.bottomSourceFaithful
    rw [M.bottomSourceMap, hy, Naturality.source_named_image, named]
  exact (congrArg (cnu.differential 3 sourceDegree) lift.symm).trans
    ((bottomNaturality y).trans ((congrArg bottomUpper sphereZero).trans bottomZero))

#print axioms actual_row4180_d3_zero
end Prop79IncomingSearch.Actual
