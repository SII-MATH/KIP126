import Prop79TargetSearch.Constructed

namespace Prop79TargetSearch.Constructed
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference Row3151ActualTransport Row3151ActualTransport.Named

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : AdditiveCoordinates S 2 4}

noncomputable def raw (initial : AdditiveCoordinates S 2 4) : (S.element 2 degree).carrier :=
  initial.coordinates.equivalence.symm vector2

theorem raw_coordinate : initial.coordinates.equivalence (raw initial) = NoHit.input :=
  initial.coordinates.equivalence.apply_symm_apply _

noncomputable def endpoint2 (initial : AdditiveCoordinates S 2 4) :
    Endpoint S pages 2 degree (raw initial) := ⟨raw initial, .start _⟩

theorem coordinate2 : initial.coordinates.equivalence (endpoint2 (pages := pages) initial).value =
    vector2 := initial.coordinates.equivalence.apply_symm_apply _

noncomputable def Prefix3.endpoint3 (P : Prefix3 S pages initial) :
    Endpoint S pages 3 degree (raw initial) :=
  advance S pages 2 degree wire2 initial.coordinates P.page3.coordinates
    (P.step2.stepMeaning accepted2) _ (endpoint2 initial) (by
      erw [coordinate2]
      exact finite2.1)

theorem Prefix3.coordinate3 (P : Prefix3 S pages initial) :
    P.page3.coordinates.equivalence P.endpoint3.value = vectorNext := by
  calc
    _ = eval wire2.comparison.projection
        (initial.coordinates.equivalence (endpoint2 (pages := pages) initial).value) :=
      (P.step2.stepMeaning accepted2).quotient _ _
    _ = vectorNext := (congrArg (eval wire2.comparison.projection)
      (coordinate2 (pages := pages) (initial := initial))).trans finite2.2.1

noncomputable def Prefix4.endpoint4 (P : Prefix4 S pages initial) :
    Endpoint S pages 4 degree (raw initial) :=
  advance S pages 3 degree wire3 P.previous.page3.coordinates P.page4.coordinates
    (P.step3.stepMeaning accepted3) _ P.previous.endpoint3 (by
      erw [P.previous.coordinate3]
      exact finite3.1)

theorem Prefix4.coordinate4 (P : Prefix4 S pages initial) :
    P.page4.coordinates.equivalence P.endpoint4.value = vectorNext := by
  calc
    _ = eval wire3.comparison.projection
        (P.previous.page3.coordinates.equivalence P.previous.endpoint3.value) :=
      (P.step3.stepMeaning accepted3).quotient _ _
    _ = vectorNext := (congrArg (eval wire3.comparison.projection)
      P.previous.coordinate3).trans finite3.2.1

noncomputable def Prefix5.endpoint5 (P : Prefix5 S pages initial) :
    Endpoint S pages 5 degree (raw initial) :=
  advance S pages 4 degree wire4 P.previous.page4.coordinates P.page5.coordinates
    (P.step4.stepMeaning accepted4) _ P.previous.endpoint4 (by
      erw [P.previous.coordinate4]
      exact finite4.1)

theorem Prefix5.coordinate5 (P : Prefix5 S pages initial) :
    P.page5.coordinates.equivalence P.endpoint5.value = vectorNext := by
  calc
    _ = eval wire4.comparison.projection
        (P.previous.page4.coordinates.equivalence P.previous.endpoint4.value) :=
      (P.step4.stepMeaning accepted4).quotient _ _
    _ = vectorNext := (congrArg (eval wire4.comparison.projection)
      P.previous.coordinate4).trans finite4.2.1

theorem Prefix5.nonzero5 (P : Prefix5 S pages initial) : P.endpoint5.value ≠ 0 := by
  intro h
  have hc := P.coordinate5
  rw [h, P.page5.coordinates.zero_value] at hc
  exact (show (zero : Vec 2) ≠ vectorNext from by decide) hc

structure Page5Input (P : Prefix5 S pages initial) where
  source : ActualAdamsIncomingBridge.Source S 5 degree ≃ Vec 1
  incoming : ∀ x, P.page5.coordinates.equivalence
    (ActualAdamsIncomingBridge.differential S 5 degree x) = eval NoHit.incoming5 (source x)

theorem Prefix5.nonboundaries (P : Prefix5 S pages initial) (last : Page5Input P) :
    ¬ PageBoundary S 2 degree (raw initial) ∧
    ¬ PageBoundary S 3 degree P.previous.previous.endpoint3.value ∧
    ¬ PageBoundary S 4 degree P.previous.endpoint4.value ∧
    ¬ PageBoundary S 5 degree P.endpoint5.value := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro h
    have f := (P.previous.previous.step2.whole.meaning.boundary_iff _).mp h
    change InImage _ (initial.coordinates.equivalence (initial.coordinates.equivalence.symm vector2)) at f
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
  · intro h
    obtain ⟨x, hx⟩ := (ActualAdamsIncomingBridge.differential_image S 5 degree _).mpr h
    apply NoHit.no_hit5
    refine ⟨last.source x, ?_⟩
    exact (last.incoming x).symm.trans
      ((congrArg P.page5.coordinates.equivalence hx).trans P.coordinate5)

def ResultValid (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (initial : AdditiveCoordinates S 2 4) (input : (S.element 2 degree).carrier) : Prop :=
  initial.coordinates.equivalence input = NoHit.input ∧
    ∃ (e3 : (S.element 3 degree).carrier) (e4 : (S.element 4 degree).carrier)
      (e5 : (S.element 5 degree).carrier),
      Nonempty (Trace S pages degree 3 input e3) ∧
      Nonempty (Trace S pages degree 4 input e4) ∧
      Nonempty (Trace S pages degree 5 input e5) ∧ e5 ≠ 0 ∧
      ¬ PageBoundary S 2 degree input ∧ ¬ PageBoundary S 3 degree e3 ∧
      ¬ PageBoundary S 4 degree e4 ∧ ¬ PageBoundary S 5 degree e5

theorem result_sound (P : Prefix5 S pages initial) (last : Page5Input P)
    (input : (S.element 2 degree).carrier)
    (named : initial.coordinates.equivalence input = NoHit.input) :
    ResultValid S pages initial input := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (named.trans raw_coordinate.symm)
  subst input
  exact ⟨raw_coordinate, P.previous.previous.endpoint3.value, P.previous.endpoint4.value,
    P.endpoint5.value, ⟨P.previous.previous.endpoint3.trace⟩, ⟨P.previous.endpoint4.trace⟩,
    ⟨P.endpoint5.trace⟩, P.nonzero5, P.nonboundaries last⟩

theorem zero_input_rejected : ¬ ResultValid S pages initial 0 := by
  intro h
  have bad := h.1
  rw [initial.coordinates.zero_value] at bad
  exact (show (zero : Vec 4) ≠ NoHit.input from by decide) bad

#print axioms Prefix3.coordinate3
#print axioms Prefix4.coordinate4
#print axioms Prefix5.coordinate5
#print axioms Prefix5.nonzero5
#print axioms Prefix5.nonboundaries
#print axioms result_sound
#print axioms zero_input_rejected
end Prop79TargetSearch.Constructed
