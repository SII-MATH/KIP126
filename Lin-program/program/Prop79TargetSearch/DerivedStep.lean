import Prop79TargetSearch.Actual
import Prop79TargetSearch.ActualIncoming
import Prop79TargetSearch.ZeroSpaces

namespace Prop79TargetSearch.DerivedStep
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open Prop79TargetSearch.Constructed

def basis2 (j : Fin 2) : Vec 2 := fun i => i == j

theorem whole_zero_of_basis (S : AdamsSpectralSequence) (r : Nat)
    (current : AdditiveCoordinates S r 2)
    (col0 : S.differential r degree (current.coordinates.equivalence.symm (basis2 0)) = 0)
    (col1 : S.differential r degree (current.coordinates.equivalence.symm (basis2 1)) = 0) :
    ∀ x, S.differential r degree x = 0 := by
  have inverseZero : current.coordinates.equivalence.symm zero = 0 := by
    apply current.coordinates.equivalence.injective
    exact (current.coordinates.equivalence.apply_symm_apply _).trans current.coordinates.zero_value.symm
  have inverseAdd (a b : Vec 2) : current.coordinates.equivalence.symm (add a b) =
      current.coordinates.equivalence.symm a + current.coordinates.equivalence.symm b := by
    apply current.coordinates.equivalence.injective
    rw [current.map_add, current.coordinates.equivalence.apply_symm_apply,
      current.coordinates.equivalence.apply_symm_apply, current.coordinates.equivalence.apply_symm_apply]
  intro x
  let v := current.coordinates.equivalence x
  have decompose : v = add (if v 0 then basis2 0 else zero) (if v 1 then basis2 1 else zero) :=
    (show ∀ v : Vec 2, v = add (if v 0 then basis2 0 else zero) (if v 1 then basis2 1 else zero) from by decide) v
  have hx : x = current.coordinates.equivalence.symm v := (current.coordinates.equivalence.symm_apply_apply x).symm
  rw [hx, decompose, inverseAdd, (S.differential r degree).map_add']
  split_ifs <;> simp only [col0, col1, inverseZero, (S.differential r degree).map_zero', add_zero]

/-- The first outgoing column is derived from the full bottom inclusion and
the zero S0 target; only the other stored future-event prefix is supplied. -/
theorem derived_outgoing_zero (sphere cnu : AdamsSpectralSequence)
    (lower : (sphere.element 3 Actual.sourceDegree).carrier → (cnu.element 3 Actual.sourceDegree).carrier)
    (upper : (sphere.element 3 Actual.targetDegree).carrier → (cnu.element 3 Actual.targetDegree).carrier)
    (M : Actual.Meaning sphere cnu lower)
    (naturality : ∀ x, cnu.differential 3 Actual.sourceDegree (lower x) =
      upper (sphere.differential 3 Actual.sourceDegree x))
    (upperZero : upper 0 = 0) (current : AdditiveCoordinates cnu 3 2)
    (named : M.cnuSource (current.coordinates.equivalence.symm (basis2 0)) = CnuPageCertificates.targetClass)
    (futurePrefix : cnu.differential 3 degree (current.coordinates.equivalence.symm (basis2 1)) = 0) :
    ∀ x, cnu.differential 3 degree x = 0 :=
  whole_zero_of_basis cnu 3 current
    (Actual.actual_row4411_d3_zero sphere cnu lower upper M naturality upperZero _ named) futurePrefix

theorem derived_incoming_zero (cnu : AdamsSpectralSequence)
    (dc : Prop79IncomingSearch.Naturality.T → Prop79IncomingSearch.Naturality.V)
    (M : ActualIncoming.Meaning cnu dc)
    (complete : ∀ x, Prop79IncomingSearch.Incoming.represented dc x =
      eval Prop79IncomingSearch.Incoming.zeroIncoming x) :
    ∀ x, ActualAdamsIncomingBridge.differential cnu 3 degree x = 0 := by
  intro x
  have zero := ActualIncoming.all_actual_incoming_zero cnu dc M complete (x (by decide))
  unfold ActualAdamsIncomingBridge.differential
  rw [dif_pos (show 3 ≤ degree.filtration from by decide)]
  change pageCast cnu 3 _
    (cnu.differential 3 ActualIncoming.sourceDegree (x (by decide))) = 0
  rw [zero]
  exact ActualAdamsIncomingBridge.cast_zero _ _ _

/-- Assemble the actual whole d3 step from derived maps. No next-page
coordinate, quotient formula, survival or non-hit conclusion is supplied. -/
def step3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (current : AdditiveCoordinates S 3 2)
    (outgoingTarget : Coordinates S 3 (AdamsTarget 3 degree) 2)
    (incomingSource : ActualAdamsIncomingBridge.Source S 3 degree ≃ Vec 3)
    (outgoingZero : ∀ x, S.differential 3 degree x = 0)
    (incomingZero : ∀ x, ActualAdamsIncomingBridge.differential S 3 degree x = 0)
    (zeroMeaning : Meaning.LocalZeroMeaning pages 3 degree)
    (addMeaning : LocalAddMeaning pages 3 degree) : StepInput S pages 3 wire3 current where
  outgoingTarget := outgoingTarget
  incomingSource := incomingSource
  outgoing := fun x =>
    (congrArg outgoingTarget.equivalence (outgoingZero x)).trans
      (outgoingTarget.zero_value.trans (by
        exact (show ∀ v : Vec 2, zero = eval (matrixOf 2 2 wire3.outgoing) v from by decide) _))
  incoming := fun x =>
    (congrArg current.coordinates.equivalence (incomingZero x)).trans
      (current.coordinates.zero_value.trans (by
        exact (show ∀ v : Vec 3, zero = eval (matrixOf 2 3 wire3.incoming) v from by decide) _))
  zeroMeaning := zeroMeaning
  addMeaning := addMeaning

#print axioms whole_zero_of_basis
#print axioms derived_outgoing_zero
#print axioms derived_incoming_zero
#print axioms step3
end Prop79TargetSearch.DerivedStep
