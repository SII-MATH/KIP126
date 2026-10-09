import Fact764NamedActualE5.Basic

namespace Fact764NamedActualE5
open ManualInputObligations ManualInputObligations.Reference
open ActualAdamsProductCycleBridge ActualAdamsSystemBridge ActualAdamsUniqueNext

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

/-- The E5 element is the literal quotient of the constructed E4 product. -/
noncomputable def Input.endpoint5 (I : Input S pages) :
    Endpoint S pages 5 namedDegree I.initial :=
  ⟨(pages.nextPage 4 namedDegree).toNext
    (Quotient.mk _ (⟨I.endpoint4.value,I.cycle4⟩ : PageCycle S 4 namedDegree)),
    .step I.endpoint4.trace I.cycle4⟩

theorem Witness.unique5 {I : Input S pages} (W : Witness I) :
    IsOnlyNonzero S 5 namedDegree I.endpoint5.value := by
  have result := next_unique S pages I.zeros 4 namedDegree I.endpoint4.value W.actual_unique
  rw [advance_on_cycle S pages 4 namedDegree I.endpoint4.value I.cycle4] at result
  exact result

theorem Witness.endpoint_nonzero {I : Input S pages} (W : Witness I) :
    I.endpoint5.value ≠ 0 := by
  simpa only [S.zero_is_zero] using W.unique5.1

theorem Witness.no_boundary4 {I : Input S pages} (W : Witness I) :
    ¬ PageBoundary S 4 namedDegree I.endpoint4.value := W.actual_unique.2.1

/-- A separate exact input and exact output occur in the mathematical result;
the trace and uniqueness quantify over this same output. -/
def ResultValid (I : Input S pages) (input : (S.element 2 namedDegree).carrier)
    (output : (S.element 5 namedDegree).carrier) : Prop :=
  input = I.initial ∧ output = I.endpoint5.value ∧
    Nonempty (Trace S pages namedDegree 5 input output) ∧
    IsOnlyNonzero S 5 namedDegree output

theorem result_sound {I : Input S pages} (W : Witness I)
    (input : (S.element 2 namedDegree).carrier) (output : (S.element 5 namedDegree).carrier)
    (input_binding : input = I.initial) (output_binding : output = I.endpoint5.value) :
    ResultValid I input output := by
  subst input
  subst output
  exact ⟨rfl,rfl,⟨I.endpoint5.trace⟩,W.unique5⟩

theorem zero_output_rejected {I : Input S pages} (input : (S.element 2 namedDegree).carrier) :
    ¬ ResultValid I input 0 := by
  intro h
  exact h.2.2.2.1 (S.zero_is_zero 5 _).symm

theorem advance_zero (I : Input S pages) (r : Nat) (d : Bidegree) :
    advance S pages r d 0 = 0 := by
  have hz : S.differential r d 0 = S.zero r (AdamsTarget r d) := by
    rw [(S.differential r d).map_zero', S.zero_is_zero]
  rw [advance_on_cycle S pages r d 0 hz]
  exact (I.zeros r d).trans (S.zero_is_zero (r+1) d)

theorem zero_trace (I : Input S pages) {d : Bidegree} {r : Nat}
    {initial : (S.element 2 d).carrier} {value : (S.element r d).carrier}
    (trace : Trace S pages d r initial value) (hz : initial = 0) : value = 0 := by
  induction trace with
  | start x => exact hz
  | @step q initial x previous cycle ih =>
    rw [← advance_on_cycle S pages q d x cycle, ih hz, advance_zero I]

theorem zero_input_rejected {I : Input S pages} (output : (S.element 5 namedDegree).carrier) :
    ¬ ResultValid I 0 output := by
  intro h
  obtain ⟨trace⟩ := h.2.2.1
  exact h.2.2.2.1 ((zero_trace I trace rfl).trans (S.zero_is_zero 5 _).symm)

theorem result_unique_output {I : Input S pages}
    {input : (S.element 2 namedDegree).carrier} {x y : (S.element 5 namedDegree).carrier}
    (hx : ResultValid I input x) (hy : ResultValid I input y) : x = y :=
  hx.2.1.trans hy.2.1.symm

#print axioms Input.endpoint5
#print axioms Witness.unique5
#print axioms Witness.endpoint_nonzero
#print axioms Witness.no_boundary4
#print axioms result_sound
#print axioms zero_output_rejected
#print axioms advance_zero
#print axioms zero_trace
#print axioms zero_input_rejected
#print axioms result_unique_output
end Fact764NamedActualE5
