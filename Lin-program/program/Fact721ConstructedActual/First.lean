import Fact721ConstructedActual.Basic
import Fact713DC2h6Source.Overlay

namespace Fact721ConstructedActual.First
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference Row3151ActualTransport Row3151ActualTransport.Named
open ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨11,133⟩
abbrev wire2 := Fact713DC2h6Source.Overlay.staircaseSource
abbrev wire3 := Fact713DC2h6Source.Overlay.b_S0_11_133_d3
def named2 : Vec 2 := fun i => i.val == 1
def named3 : Vec 2 := fun i => i.val == 1
def named4 : Vec 1 := fun _ => true
theorem accepted2 : checkWire wire2 = true := by decide
theorem accepted3 : checkWire wire3 = true := by decide
theorem named_binding : named2 = Fact721PageCertificates.First.target := by decide
theorem finite2 : InKernel (matrixOf wire2.k wire2.m wire2.outgoing) named2 ∧
    eval wire2.comparison.projection named2 = named3 ∧
    ¬ InImage (matrixOf wire2.m wire2.n wire2.incoming) named2 := by
  unfold InKernel InImage
  decide
theorem finite3 : InKernel (matrixOf wire3.k wire3.m wire3.outgoing) named3 ∧
    eval wire3.comparison.projection named3 = named4 ∧
    ¬ InImage (matrixOf wire3.m wire3.n wire3.incoming) named3 := by
  unfold InKernel InImage
  decide

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates degree S 2 2}
noncomputable def raw (initial : AdditiveCoordinates degree S 2 2) :
    (S.element 2 degree).carrier := initial.coordinates.equivalence.symm named2

structure Prefix3 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 2) where
  step2 : StepInput degree S pages 2 wire2 initial
noncomputable def Prefix3.page3 (P : Prefix3 S pages initial) :
    AdditiveCoordinates degree S 3 2 := P.step2.next accepted2

structure Prefix4 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 2) where
  previous : Prefix3 S pages initial
  step3 : StepInput degree S pages 3 wire3 previous.page3
noncomputable def Prefix4.page4 (P : Prefix4 S pages initial) :
    AdditiveCoordinates degree S 4 1 := P.step3.next accepted3

noncomputable def start (initial : AdditiveCoordinates degree S 2 2) :
    Endpoint S pages 2 degree (raw initial) := ⟨raw initial,.start _⟩
noncomputable def Prefix3.endpoint (P : Prefix3 S pages initial) :
    Endpoint S pages 3 degree (raw initial) :=
  advance S pages 2 degree wire2 initial.coordinates P.page3.coordinates
    (P.step2.stepMeaning accepted2) _ (start initial) (by
      change InKernel _ (initial.coordinates.equivalence (initial.coordinates.equivalence.symm named2))
      rw [initial.coordinates.equivalence.apply_symm_apply]
      exact finite2.1)
theorem Prefix3.coordinate (P : Prefix3 S pages initial) :
    P.page3.coordinates.equivalence P.endpoint.value = named3 := by
  have h := (P.step2.stepMeaning accepted2).quotient (raw initial)
    ((P.step2.whole.meaning.cycle_iff _).mpr (by
      change InKernel _ (initial.coordinates.equivalence (initial.coordinates.equivalence.symm named2))
      rw [initial.coordinates.equivalence.apply_symm_apply]
      exact finite2.1))
  change _ = eval wire2.comparison.projection
    (initial.coordinates.equivalence (initial.coordinates.equivalence.symm named2)) at h
  exact h.trans ((congrArg (eval wire2.comparison.projection)
    (initial.coordinates.equivalence.apply_symm_apply named2)).trans finite2.2.1)
noncomputable def Prefix4.endpoint (P : Prefix4 S pages initial) :
    Endpoint S pages 4 degree (raw initial) :=
  advance S pages 3 degree wire3 P.previous.page3.coordinates P.page4.coordinates
    (P.step3.stepMeaning accepted3) _ P.previous.endpoint (by
      erw [P.previous.coordinate]
      exact finite3.1)
theorem Prefix4.coordinate (P : Prefix4 S pages initial) :
    P.page4.coordinates.equivalence P.endpoint.value = named4 :=
  ((P.step3.stepMeaning accepted3).quotient _ _).trans
    ((congrArg (eval wire3.comparison.projection) P.previous.coordinate).trans finite3.2.1)
theorem Prefix4.nonzero (P : Prefix4 S pages initial) : P.endpoint.value ≠ 0 := by
  intro h
  have hc := P.coordinate
  rw [h,P.page4.coordinates.zero_value] at hc
  exact (show (zero : Vec 1) ≠ named4 from by decide) hc

/-- The known other column remains explicit. The named unknown column is
supplied by the existing DC2h6 actual naturality theorem. -/
structure DetectorInput (P : Prefix3 S pages initial) where
  detector : AdamsSpectralSequence
  lower : (S.element 3 degree).carrier → (detector.element 3 degree).carrier
  upper : (S.element 3 (AdamsTarget 3 degree)).carrier →
    (detector.element 3 (AdamsTarget 3 degree)).carrier
  meaning : Fact713DC2h6Source.Actual.Meaning S detector lower upper
  naturality : ∀ x, detector.differential 3 degree (lower x) = upper (S.differential 3 degree x)
  binding : meaning.source (P.page3.coordinates.equivalence.symm named3) =
    Fact713DC2h6Source.Naturality.named
  known : S.differential 3 degree
    (P.page3.coordinates.equivalence.symm (fun i => i.val == 0)) = 0
  outgoingTarget : Coordinates S 3 (AdamsTarget 3 degree) wire3.k
  incomingSource : ActualAdamsIncomingBridge.Source S 3 degree ≃ Vec wire3.n
  incoming : ∀ x, P.page3.coordinates.equivalence
      (ActualAdamsIncomingBridge.differential S 3 degree x) =
    eval (matrixOf wire3.m wire3.n wire3.incoming) (incomingSource x)
  zeroMeaning : LocalZeroMeaning pages 3 degree
  addMeaning : LocalAddMeaning pages 3 degree

noncomputable def DetectorInput.assemble {P : Prefix3 S pages initial} (D : DetectorInput P) :
    Prefix4 S pages initial where
  previous := P
  step3 := {
    outgoingTarget := D.outgoingTarget
    incomingSource := D.incomingSource
    incoming := D.incoming
    zeroMeaning := D.zeroMeaning
    addMeaning := D.addMeaning
    outgoing := by
      intro x
      have namedZero := Fact713DC2h6Source.Actual.actual_row2622_d3_zero S D.detector
        D.lower D.upper D.meaning D.naturality _ D.binding
      have allZero := whole_zero_of_basis S 3 degree P.page3.coordinates P.page3.map_add
        D.known namedZero x
      exact (congrArg D.outgoingTarget.equivalence allZero).trans
        (D.outgoingTarget.zero_value.trans
          ((show ∀ v : Vec 2, eval (matrixOf wire3.k wire3.m wire3.outgoing) v = zero from by decide) _).symm) }

def ResultValid (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates degree S 2 2) (input : (S.element 2 degree).carrier) : Prop :=
  initial.coordinates.equivalence input = Fact721PageCertificates.First.target ∧
  ∃ endpoint : (S.element 4 degree).carrier, Nonempty (Trace S pages degree 4 input endpoint) ∧ endpoint ≠ 0
theorem raw_binding : initial.coordinates.equivalence (raw initial) = Fact721PageCertificates.First.target :=
  (initial.coordinates.equivalence.apply_symm_apply _).trans named_binding
theorem result_sound (P : Prefix4 S pages initial) (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    ResultValid S pages initial input := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨raw_binding,P.endpoint.value,⟨P.endpoint.trace⟩,P.nonzero⟩
theorem zero_input_rejected : ¬ ResultValid S pages initial 0 := by
  intro h
  have bad := h.1
  rw [initial.coordinates.zero_value] at bad
  exact (show (zero : Vec 2) ≠ Fact721PageCertificates.First.target from by decide) bad

#print axioms Prefix3.coordinate
#print axioms Prefix4.coordinate
#print axioms Prefix4.nonzero
#print axioms DetectorInput.assemble
#print axioms result_sound
#print axioms zero_input_rejected
end Fact721ConstructedActual.First
