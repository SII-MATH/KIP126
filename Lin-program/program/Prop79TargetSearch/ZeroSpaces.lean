import Prop79TargetSearch.Constructed

namespace Prop79TargetSearch.ZeroSpaces
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open Prop79TargetSearch.Constructed

/-- A full zero-dimensional outgoing coordinate system forces the entire
actual outgoing map to vanish, irrespective of the stored unknown row. -/
theorem outgoing_zero (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (coordinates : Coordinates S r (AdamsTarget r d) 0) :
    ∀ x, S.differential r d x = 0 := by
  intro x
  apply coordinates.equivalence.injective
  funext i
  exact Fin.elim0 i

theorem incoming_zero (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (coordinates : ActualAdamsIncomingBridge.Source S r d ≃ Vec 0) :
    ∀ x, ActualAdamsIncomingBridge.differential S r d x = 0 := by
  intro x
  have same : x = ActualAdamsIncomingBridge.sourceZero S r d := by
    apply coordinates.injective
    funext i
    exact Fin.elim0 i
  exact (congrArg (ActualAdamsIncomingBridge.differential S r d) same).trans
    ((ActualAdamsIncomingBridge.differential_zero S r d).trans (S.zero_is_zero r d))

def step4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (current : AdditiveCoordinates S 4 2)
    (outgoingTarget : Coordinates S 4 (AdamsTarget 4 degree) 0)
    (incomingSource : ActualAdamsIncomingBridge.Source S 4 degree ≃ Vec 0)
    (zeroMeaning : Meaning.LocalZeroMeaning pages 4 degree)
    (addMeaning : LocalAddMeaning pages 4 degree) : StepInput S pages 4 wire4 current where
  outgoingTarget := outgoingTarget
  incomingSource := incomingSource
  outgoing := by
    intro x
    funext i
    exact Fin.elim0 i
  incoming := by
    intro x
    exact (congrArg current.coordinates.equivalence (incoming_zero S 4 degree incomingSource x)).trans
      (current.coordinates.zero_value.trans (by
        funext i
        exact (show ∀ (v : Vec 0) i, zero i = eval (matrixOf 2 0 wire4.incoming) v i from by decide) _ i))
  zeroMeaning := zeroMeaning
  addMeaning := addMeaning

#print axioms outgoing_zero
#print axioms incoming_zero
#print axioms step4
end Prop79TargetSearch.ZeroSpaces
