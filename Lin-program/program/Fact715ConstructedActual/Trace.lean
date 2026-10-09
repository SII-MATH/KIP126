import Fact715ConstructedActual.Basic

namespace Fact715ConstructedActual
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference Row3151ActualTransport Row3151ActualTransport.Named

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates S 2 5}

noncomputable def raw (initial : AdditiveCoordinates S 2 5) : (S.element 2 degree).carrier :=
  initial.coordinates.equivalence.symm named2

theorem raw_coordinate : initial.coordinates.equivalence (raw initial) = Fact715PageCertificates.target :=
  (initial.coordinates.equivalence.apply_symm_apply named2).trans named_binding

noncomputable def endpoint2 (initial : AdditiveCoordinates S 2 5) :
    Endpoint S pages 2 degree (raw initial) := ⟨raw initial, .start _⟩

theorem coordinate2 : initial.coordinates.equivalence (endpoint2 (pages := pages) initial).value =
    named2 := initial.coordinates.equivalence.apply_symm_apply _

noncomputable def Prefix3.endpoint3 (P : Prefix3 S pages initial) :
    Endpoint S pages 3 degree (raw initial) :=
  advance S pages 2 degree wire2 initial.coordinates P.page3.coordinates
    (P.step2.stepMeaning accepted2) _ (endpoint2 initial) (by
      erw [coordinate2]
      exact finite2.1)

theorem Prefix3.coordinate3 (P : Prefix3 S pages initial) :
    P.page3.coordinates.equivalence P.endpoint3.value = named3 := by
  calc
    _ = eval wire2.comparison.projection
        (initial.coordinates.equivalence (endpoint2 (pages := pages) initial).value) :=
      (P.step2.stepMeaning accepted2).quotient _ _
    _ = named3 := (congrArg (eval wire2.comparison.projection)
      (coordinate2 (pages := pages) (initial := initial))).trans finite2.2.1

noncomputable def Prefix4.endpoint4 (P : Prefix4 S pages initial) :
    Endpoint S pages 4 degree (raw initial) :=
  advance S pages 3 degree wire3 P.previous.page3.coordinates P.page4.coordinates
    (P.step3.stepMeaning accepted3) _ P.previous.endpoint3 (by
      erw [P.previous.coordinate3]
      exact finite3.1)

theorem Prefix4.coordinate4 (P : Prefix4 S pages initial) :
    P.page4.coordinates.equivalence P.endpoint4.value = named4 := by
  calc
    _ = eval wire3.comparison.projection
        (P.previous.page3.coordinates.equivalence P.previous.endpoint3.value) :=
      (P.step3.stepMeaning accepted3).quotient _ _
    _ = named4 := (congrArg (eval wire3.comparison.projection)
      P.previous.coordinate3).trans finite3.2.1

noncomputable def Prefix5.endpoint5 (P : Prefix5 S pages initial) :
    Endpoint S pages 5 degree (raw initial) :=
  advance S pages 4 degree wire4 P.previous.page4.coordinates P.page5.coordinates
    (P.step4.stepMeaning accepted4) _ P.previous.endpoint4 (by
      erw [P.previous.coordinate4]
      exact finite4.1)

theorem Prefix5.coordinate5 (P : Prefix5 S pages initial) :
    P.page5.coordinates.equivalence P.endpoint5.value = named5 := by
  calc
    _ = eval wire4.comparison.projection
        (P.previous.page4.coordinates.equivalence P.previous.endpoint4.value) :=
      (P.step4.stepMeaning accepted4).quotient _ _
    _ = named5 := (congrArg (eval wire4.comparison.projection)
      P.previous.coordinate4).trans finite4.2.1

theorem Prefix5.nonzero5 (P : Prefix5 S pages initial) : P.endpoint5.value ≠ 0 := by
  intro h
  have hc := P.coordinate5
  rw [h, P.page5.coordinates.zero_value] at hc
  exact (show (zero : Vec 1) ≠ named5 from by decide) hc

theorem Prefix5.nonboundaries (P : Prefix5 S pages initial) :
    ¬ PageBoundary S 2 degree (raw initial) ∧
    ¬ PageBoundary S 3 degree P.previous.previous.endpoint3.value ∧
    ¬ PageBoundary S 4 degree P.previous.endpoint4.value := by
  refine ⟨?_, ?_, ?_⟩
  · intro h
    have f := (P.previous.previous.step2.whole.meaning.boundary_iff _).mp h
    change InImage _ (initial.coordinates.equivalence (initial.coordinates.equivalence.symm named2)) at f
    rw [initial.coordinates.equivalence.apply_symm_apply] at f
    exact finite2.2.2 f
  · intro h
    have f := (P.previous.step3.whole.meaning.boundary_iff _).mp h
    erw [P.previous.previous.coordinate3] at f
    exact finite3.2.2 f
  · intro h
    have f := (P.step4.whole.meaning.boundary_iff _).mp h
    erw [P.previous.coordinate4] at f
    exact finite4.2.2 f
/-- This result fixes the supplied initial element and demands an actual
quotient trace, rather than only the existence of some nonzero E5 class. -/
def ResultValid (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 5) (input : (S.element 2 degree).carrier) : Prop :=
  initial.coordinates.equivalence input = Fact715PageCertificates.target ∧
    ∃ endpoint : (S.element 5 degree).carrier,
      Nonempty (Trace S pages degree 5 input endpoint) ∧ endpoint ≠ 0

theorem result_sound (P : Prefix5 S pages initial) (input : (S.element 2 degree).carrier)
    (named : initial.coordinates.equivalence input = Fact715PageCertificates.target) :
    ResultValid S pages initial input := by
  have same : input = raw initial := initial.coordinates.equivalence.injective
    (named.trans raw_coordinate.symm)
  subst input
  exact ⟨raw_coordinate, P.endpoint5.value, ⟨P.endpoint5.trace⟩, P.nonzero5⟩

theorem zero_input_rejected : ¬ ResultValid S pages initial 0 := by
  intro h
  have bad := h.1
  rw [initial.coordinates.zero_value] at bad
  exact (show (zero : Vec 5) ≠ Fact715PageCertificates.target from by decide) bad

#print axioms raw_coordinate
#print axioms Prefix3.coordinate3
#print axioms Prefix4.coordinate4
#print axioms Prefix5.coordinate5
#print axioms Prefix5.nonzero5
#print axioms Prefix5.nonboundaries
#print axioms result_sound
#print axioms zero_input_rejected
end Fact715ConstructedActual
