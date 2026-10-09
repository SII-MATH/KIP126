import Prop79TargetSearch.DerivedStep
import Prop79TargetSearch.Tactic

namespace Prop79TargetSearch.Assembly
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open Prop79TargetSearch.Constructed

section
variable (sphere cnu : AdamsSpectralSequence) (pages : CertifiedAdamsPages cnu)
  (initial : AdditiveCoordinates cnu 2 4) (first : Prefix3 cnu pages initial)
  (lower : (sphere.element 3 Actual.sourceDegree).carrier → (cnu.element 3 Actual.sourceDegree).carrier)
  (upper : (sphere.element 3 Actual.targetDegree).carrier → (cnu.element 3 Actual.targetDegree).carrier)
  (targetMeaning : Actual.Meaning sphere cnu lower)
  (naturality : ∀ x, cnu.differential 3 Actual.sourceDegree (lower x) =
    upper (sphere.differential 3 Actual.sourceDegree x))
  (upperZero : upper 0 = 0)
  (bindingProof : targetMeaning.cnuSource
    (first.page3.coordinates.equivalence.symm (DerivedStep.basis2 0)) = CnuPageCertificates.targetClass)
  (futurePrefix : cnu.differential 3 degree
    (first.page3.coordinates.equivalence.symm (DerivedStep.basis2 1)) = 0)
  (dc : Prop79IncomingSearch.Naturality.T → Prop79IncomingSearch.Naturality.V)
  (incomingMeaning : ActualIncoming.Meaning cnu dc)
  (ds : Prop79IncomingSearch.Naturality.S → Prop79IncomingSearch.Naturality.U)
  (detector : Row2925Detector.Naturality.T → Row2925Detector.Naturality.V)
  (etaZero : detector Row2925Detector.Naturality.zt = Row2925Detector.Naturality.zv)
  (etaNaturality : ∀ x, detector (Row2925Detector.Naturality.f x) = Row2925Detector.Naturality.g (ds x))
  (bottomNaturality : ∀ x, dc (Prop79IncomingSearch.Naturality.f x) = Prop79IncomingSearch.Naturality.g (ds x))
  (mapZero : Prop79IncomingSearch.Incoming.represented dc zero = zero)
  (mapAdd : ∀ x y, Prop79IncomingSearch.Incoming.represented dc (add x y) =
    add (Prop79IncomingSearch.Incoming.represented dc x) (Prop79IncomingSearch.Incoming.represented dc y))
  (boundaryColumn : Prop79IncomingSearch.Incoming.represented dc (Prop79IncomingSearch.Incoming.basis 0) = zero)
  (futureIncomingColumn : Prop79IncomingSearch.Incoming.represented dc (Prop79IncomingSearch.Incoming.basis 2) = zero)
  (outgoingTarget : Coordinates cnu 3 (AdamsTarget 3 degree) 2)
  (incomingSource : ActualAdamsIncomingBridge.Source cnu 3 degree ≃ Vec 3)
  (zeroMeaning : Meaning.LocalZeroMeaning pages 3 degree)
  (addMeaning : LocalAddMeaning pages 3 degree)

/-- The constructor takes source meanings and naturality, not the two
desired unknown values or a preassembled d3 matrix meaning. -/
noncomputable def prefix4 : Prefix4 cnu pages initial where
  previous := first
  step3 := DerivedStep.step3 cnu pages first.page3 outgoingTarget incomingSource
    (DerivedStep.derived_outgoing_zero sphere cnu lower upper targetMeaning naturality upperZero
      first.page3 bindingProof futurePrefix)
    (DerivedStep.derived_incoming_zero cnu dc incomingMeaning
      (Prop79IncomingSearch.Incoming.complete_incoming_zero ds detector dc etaZero etaNaturality
        bottomNaturality mapZero mapAdd boundaryColumn futureIncomingColumn))
    zeroMeaning addMeaning
end

noncomputable def prefix5 (cnu : AdamsSpectralSequence) (pages : CertifiedAdamsPages cnu)
    (initial : AdditiveCoordinates cnu 2 4) (first : Prefix4 cnu pages initial)
    (outgoingTarget : Coordinates cnu 4 (AdamsTarget 4 degree) 0)
    (incomingSource : ActualAdamsIncomingBridge.Source cnu 4 degree ≃ Vec 0)
    (zeroMeaning : Meaning.LocalZeroMeaning pages 4 degree)
    (addMeaning : LocalAddMeaning pages 4 degree) : Prefix5 cnu pages initial where
  previous := first
  step4 := ZeroSpaces.step4 cnu pages first.page4 outgoingTarget incomingSource zeroMeaning addMeaning

/-- The E5 source is complete and one-dimensional. Its last prefix value
still requires its actual imported event meaning; no d5 outgoing is used. -/
def page5 (cnu : AdamsSpectralSequence) (pages : CertifiedAdamsPages cnu)
    (initial : AdditiveCoordinates cnu 2 4) (P : Prefix5 cnu pages initial)
    (source : ActualAdamsIncomingBridge.Source cnu 5 degree ≃ Vec 1)
    (wholePrefix : ∀ x, ActualAdamsIncomingBridge.differential cnu 5 degree x = 0) : Page5Input P where
  source := source
  incoming := fun x => (congrArg P.page5.coordinates.equivalence (wholePrefix x)).trans
    (P.page5.coordinates.zero_value.trans (by
      exact (show ∀ v : Vec 1, zero = eval NoHit.incoming5 v from by decide) _))

#print axioms prefix4
#print axioms prefix5
#print axioms page5
end Prop79TargetSearch.Assembly
