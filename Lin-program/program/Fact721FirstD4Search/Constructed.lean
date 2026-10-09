import Fact721FirstD4Search.Actual
import Fact721ConstructedActual.First
import Prop79TargetSearch.ZeroSpaces

namespace Fact721FirstD4Search.Constructed
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport Row3151ActualTransport.Named
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact721ConstructedActual

abbrev degree := First.degree
def wire4 : WireComparison :=
  { version := 1, k := 2, m := 1, n := 0, h := 1,
    outgoing := [false,false], incoming := [], inclusion := [true],
    projection := [true], up := [], down := [false,false] }
theorem accepted4 : checkWire wire4 = true := by decide
theorem finite4 : InKernel (matrixOf wire4.k wire4.m wire4.outgoing) First.named4 ∧
    eval wire4.comparison.projection First.named4 = First.named4 ∧
    ¬ InImage (matrixOf wire4.m wire4.n wire4.incoming) First.named4 := by
  unfold InKernel InImage
  decide

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates degree S 2 2}

structure Prefix5 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 2) where
  previous : First.Prefix4 S pages initial
  step4 : StepInput degree S pages 4 wire4 previous.page4

noncomputable def Prefix5.page5 (P : Prefix5 S pages initial) :
    AdditiveCoordinates degree S 5 1 := P.step4.next accepted4

noncomputable def Prefix5.endpoint (P : Prefix5 S pages initial) :
    Endpoint S pages 5 degree (First.raw initial) :=
  advance S pages 4 degree wire4 P.previous.page4.coordinates P.page5.coordinates
    (P.step4.stepMeaning accepted4) _ P.previous.endpoint (by
      erw [P.previous.coordinate]
      exact finite4.1)

theorem Prefix5.coordinate (P : Prefix5 S pages initial) :
    P.page5.coordinates.equivalence P.endpoint.value = First.named4 :=
  ((P.step4.stepMeaning accepted4).quotient _ _).trans
    ((congrArg (eval wire4.comparison.projection) P.previous.coordinate).trans finite4.2.1)

theorem Prefix5.nonzero (P : Prefix5 S pages initial) : P.endpoint.value ≠ 0 := by
  intro h
  have hc := P.coordinate
  rw [h,P.page5.coordinates.zero_value] at hc
  exact (show (zero : Vec 1) ≠ First.named4 from by decide) hc

/-- The entire d4 map comes from the C2h6 detector. A full zero-dimensional
incoming source supplies the other map, without a supplied vanishing value. -/
noncomputable def assemble (P : First.Prefix4 S pages initial)
    (detector : AdamsSpectralSequence) (M : Actual.Meaning S detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 4 degree (M.lower.nextMap x) =
      M.upper.nextMap (S.differential 4 degree x))
    (outgoingTarget : Coordinates S 4 (AdamsTarget 4 degree) 2)
    (incomingSource : ActualAdamsIncomingBridge.Source S 4 degree ≃ Vec 0)
    (zeroMeaning : LocalZeroMeaning pages 4 degree)
    (addMeaning : LocalAddMeaning pages 4 degree) : Prefix5 S pages initial where
  previous := P
  step4 := {
    outgoingTarget := outgoingTarget
    incomingSource := incomingSource
    outgoing := by
      intro x
      have hz := Actual.actual_row2622_d4_zero S detector M lowerTransition upperTransition naturality x
      exact (congrArg outgoingTarget.equivalence hz).trans
        (outgoingTarget.zero_value.trans
          ((show ∀ v : Vec 1, eval (matrixOf 2 1 wire4.outgoing) v = zero from by decide) _).symm)
    incoming := by
      intro x
      have hz := Prop79TargetSearch.ZeroSpaces.incoming_zero S 4 degree incomingSource x
      exact (congrArg P.page4.coordinates.equivalence hz).trans
        (P.page4.coordinates.zero_value.trans
          ((show ∀ v : Vec 0, eval (matrixOf 1 0 wire4.incoming) v = zero from by decide) _).symm)
    zeroMeaning := zeroMeaning
    addMeaning := addMeaning }

def ResultValid (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 2) (input : (S.element 2 degree).carrier) : Prop :=
  initial.coordinates.equivalence input = Fact721PageCertificates.First.target ∧
  ∃ endpoint : (S.element 5 degree).carrier, Nonempty (Trace S pages degree 5 input endpoint) ∧ endpoint ≠ 0

theorem result_sound (P : Prefix5 S pages initial) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    ResultValid S pages initial input := by
  have same : input = First.raw initial := initial.coordinates.equivalence.injective
    (binding.trans First.raw_binding.symm)
  subst input
  exact ⟨First.raw_binding,P.endpoint.value,⟨P.endpoint.trace⟩,P.nonzero⟩

theorem zero_input_rejected : ¬ ResultValid S pages initial 0 := by
  intro h
  have bad := h.1
  rw [initial.coordinates.zero_value] at bad
  exact (show (zero : Vec 2) ≠ Fact721PageCertificates.First.target from by decide) bad

#print axioms accepted4
#print axioms finite4
#print axioms Prefix5.coordinate
#print axioms Prefix5.nonzero
#print axioms assemble
#print axioms result_sound
#print axioms zero_input_rejected
end Fact721FirstD4Search.Constructed
