import Prop79IncomingSearch.Incoming

namespace Prop79TargetSearch.ActualIncoming
open LinearCertificates ManualInputObligations.Reference
open Prop79IncomingSearch

abbrev sourceDegree : Bidegree := ⟨11,137⟩
abbrev targetDegree : Bidegree := ⟨14,139⟩

/-- Full source coordinates and a faithful target interpretation bind the
finite all-column conclusion to every actual incoming source element. -/
structure Meaning (cnu : AdamsSpectralSequence) (dc : Naturality.T → Naturality.V) where
  source : (cnu.element 3 sourceDegree).carrier → Naturality.T
  sourceSurjective : Function.Surjective source
  target : (cnu.element 3 targetDegree).carrier → Naturality.V
  targetFaithful : Function.Injective target
  targetZero : target 0 = Naturality.zv
  differential : ∀ x, target (cnu.differential 3 sourceDegree x) = dc (source x)

theorem all_actual_incoming_zero (cnu : AdamsSpectralSequence)
    (dc : Naturality.T → Naturality.V) (M : Meaning cnu dc)
    (complete : ∀ x, Incoming.represented dc x = eval Incoming.zeroIncoming x) :
    ∀ x, cnu.differential 3 sourceDegree x = 0 := by
  intro x
  have finiteZero : dc (M.source x) = Naturality.zv := by
    have h := complete (CoordinateBridge.sourceCoordinates.toCoordinates (M.source x))
    unfold Incoming.represented at h
    rw [CoordinateBridge.sourceCoordinates.leftInverse] at h
    have hz : eval Incoming.zeroIncoming (CoordinateBridge.sourceCoordinates.toCoordinates (M.source x)) = zero :=
      (show ∀ v : Vec 3, eval Incoming.zeroIncoming v = zero from by decide) _
    have hcz : CoordinateBridge.targetCoordinates.toCoordinates Naturality.zv = zero := eval_zero _
    exact (CoordinateBridge.targetCoordinates.leftInverse (dc (M.source x))).symm.trans
      ((congrArg CoordinateBridge.targetCoordinates.fromCoordinates ((h.trans hz).trans hcz.symm)).trans
        (CoordinateBridge.targetCoordinates.leftInverse Naturality.zv))
  apply M.targetFaithful
  exact (M.differential x).trans (finiteZero.trans M.targetZero.symm)

theorem actual_no_hit (cnu : AdamsSpectralSequence)
    (dc : Naturality.T → Naturality.V) (M : Meaning cnu dc)
    (complete : ∀ x, Incoming.represented dc x = eval Incoming.zeroIncoming x)
    (target : (cnu.element 3 targetDegree).carrier)
    (named : M.target target = CnuPageCertificates.targetClass) :
    ¬ ∃ x, cnu.differential 3 sourceDegree x = target := by
  rintro ⟨x, hit⟩
  apply Incoming.complete_no_hit dc complete
  refine ⟨M.source x, ?_⟩
  exact (M.differential x).symm.trans ((congrArg M.target hit).trans named)

#print axioms all_actual_incoming_zero
#print axioms actual_no_hit
end Prop79TargetSearch.ActualIncoming
