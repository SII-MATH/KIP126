import Fact713Row2773Refinement.Data
import Row3151ActualTransport.Named

namespace Fact713NamedActual
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference Row3151ActualTransport Row3151ActualTransport.Named

abbrev degree : Bidegree := ⟨9,132⟩
abbrev wire2 := Fact713E12Search.Data.b_S0_9_132_d2
abbrev wire3 := Fact713E12Search.Data.b_S0_9_132_d3
abbrev wire4 := Fact713Row2773Refinement.Data.b_S0_9_132_d4
abbrev wire5 := Fact713Row2773Refinement.Data.b_S0_9_132_d5
def vector2 : Vec 2 := fun _ => true
def vector3 : Vec 2 := fun i => i.val == 0
def vector4 : Vec 1 := fun _ => true
def vector5 : Vec 1 := fun _ => true
def vector6 : Vec 1 := fun _ => true

theorem named_E2_binding : vector2 = Fact713PageCertificates.target := rfl

/-- Every full actual map and quotient law is an explicit premise. In
particular raw NULL entries do not produce an actual zero differential. -/
structure Meanings (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  page2 : Coordinates S 2 degree 2
  page3 : Coordinates S 3 degree 2
  page4 : Coordinates S 4 degree 1
  page5 : Coordinates S 5 degree 1
  page6 : Coordinates S 6 degree 1
  step2 : StepMeaning S pages 2 degree wire2 page2 page3
  step3 : StepMeaning S pages 3 degree wire3 page3 page4
  step4 : StepMeaning S pages 4 degree wire4 page4 page5
  step5 : StepMeaning S pages 5 degree wire5 page5 page6

variable (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
  (M : Meanings S pages)

def raw : (S.element 2 degree).carrier := M.page2.equivalence.symm vector2
def endpoint2 : Endpoint S pages 2 degree (raw S pages M) :=
  ⟨raw S pages M,.start _⟩
theorem coordinate2 : M.page2.equivalence (endpoint2 S pages M).value = vector2 :=
  M.page2.equivalence.apply_symm_apply _

theorem finite2 :
    eval (matrixOf wire2.k wire2.m wire2.outgoing) vector2 = zero ∧
    eval wire2.comparison.projection vector2 = vector3 ∧
    ¬ InImage (matrixOf wire2.m wire2.n wire2.incoming) vector2 := by
  unfold InImage
  decide

theorem cycle2 : S.differential 2 degree (endpoint2 S pages M).value =
    S.zero 2 (AdamsTarget 2 degree) :=
  cycle S pages 2 degree wire2 M.page2 M.page3 M.step2 _ (by
    erw [coordinate2]; exact finite2.1)

theorem nonboundary2 : ¬ PageBoundary S 2 degree (endpoint2 S pages M).value := by
  intro hb
  have h := (boundary_iff S pages 2 degree wire2 M.page2 M.page3 M.step2 _).mp hb
  erw [coordinate2] at h
  exact finite2.2.2 h

def endpoint3 : Endpoint S pages 3 degree (raw S pages M) :=
  advance S pages 2 degree wire2 M.page2 M.page3 M.step2 _
    (endpoint2 S pages M) (by erw [coordinate2]; exact finite2.1)

theorem coordinate3 : M.page3.equivalence (endpoint3 S pages M).value = vector3 := by
  calc
    _ = eval wire2.comparison.projection (M.page2.equivalence (endpoint2 S pages M).value) :=
      M.step2.quotient _ _
    _ = vector3 := (congrArg (eval wire2.comparison.projection)
      (coordinate2 S pages M)).trans finite2.2.1

theorem finite3 :
    eval (matrixOf wire3.k wire3.m wire3.outgoing) vector3 = zero ∧
    eval wire3.comparison.projection vector3 = vector4 ∧
    ¬ InImage (matrixOf wire3.m wire3.n wire3.incoming) vector3 := by
  unfold InImage
  decide

theorem cycle3 : S.differential 3 degree (endpoint3 S pages M).value =
    S.zero 3 (AdamsTarget 3 degree) :=
  cycle S pages 3 degree wire3 M.page3 M.page4 M.step3 _ (by
    erw [coordinate3]; exact finite3.1)

theorem nonboundary3 : ¬ PageBoundary S 3 degree (endpoint3 S pages M).value := by
  intro hb
  have h := (boundary_iff S pages 3 degree wire3 M.page3 M.page4 M.step3 _).mp hb
  erw [coordinate3] at h
  exact finite3.2.2 h

def endpoint4 : Endpoint S pages 4 degree (raw S pages M) :=
  advance S pages 3 degree wire3 M.page3 M.page4 M.step3 _
    (endpoint3 S pages M) (by erw [coordinate3]; exact finite3.1)

theorem coordinate4 : M.page4.equivalence (endpoint4 S pages M).value = vector4 := by
  calc
    _ = eval wire3.comparison.projection (M.page3.equivalence (endpoint3 S pages M).value) :=
      M.step3.quotient _ _
    _ = vector4 := (congrArg (eval wire3.comparison.projection)
      (coordinate3 S pages M)).trans finite3.2.1

theorem finite4 :
    eval (matrixOf wire4.k wire4.m wire4.outgoing) vector4 = zero ∧
    eval wire4.comparison.projection vector4 = vector5 ∧
    ¬ InImage (matrixOf wire4.m wire4.n wire4.incoming) vector4 := by
  unfold InImage
  decide

theorem cycle4 : S.differential 4 degree (endpoint4 S pages M).value =
    S.zero 4 (AdamsTarget 4 degree) :=
  cycle S pages 4 degree wire4 M.page4 M.page5 M.step4 _ (by
    erw [coordinate4]; exact finite4.1)

theorem nonboundary4 : ¬ PageBoundary S 4 degree (endpoint4 S pages M).value := by
  intro hb
  have h := (boundary_iff S pages 4 degree wire4 M.page4 M.page5 M.step4 _).mp hb
  erw [coordinate4] at h
  exact finite4.2.2 h

def endpoint5 : Endpoint S pages 5 degree (raw S pages M) :=
  advance S pages 4 degree wire4 M.page4 M.page5 M.step4 _
    (endpoint4 S pages M) (by erw [coordinate4]; exact finite4.1)

theorem coordinate5 : M.page5.equivalence (endpoint5 S pages M).value = vector5 := by
  calc
    _ = eval wire4.comparison.projection (M.page4.equivalence (endpoint4 S pages M).value) :=
      M.step4.quotient _ _
    _ = vector5 := (congrArg (eval wire4.comparison.projection)
      (coordinate4 S pages M)).trans finite4.2.1

theorem finite5 :
    eval (matrixOf wire5.k wire5.m wire5.outgoing) vector5 = zero ∧
    eval wire5.comparison.projection vector5 = vector6 ∧
    ¬ InImage (matrixOf wire5.m wire5.n wire5.incoming) vector5 := by
  unfold InImage
  decide

theorem cycle5 : S.differential 5 degree (endpoint5 S pages M).value =
    S.zero 5 (AdamsTarget 5 degree) :=
  cycle S pages 5 degree wire5 M.page5 M.page6 M.step5 _ (by
    erw [coordinate5]; exact finite5.1)

theorem nonboundary5 : ¬ PageBoundary S 5 degree (endpoint5 S pages M).value := by
  intro hb
  have h := (boundary_iff S pages 5 degree wire5 M.page5 M.page6 M.step5 _).mp hb
  erw [coordinate5] at h
  exact finite5.2.2 h

def endpoint6 : Endpoint S pages 6 degree (raw S pages M) :=
  advance S pages 5 degree wire5 M.page5 M.page6 M.step5 _
    (endpoint5 S pages M) (by erw [coordinate5]; exact finite5.1)

theorem coordinate6 : M.page6.equivalence (endpoint6 S pages M).value = vector6 := by
  calc
    _ = eval wire5.comparison.projection (M.page5.equivalence (endpoint5 S pages M).value) :=
      M.step5.quotient _ _
    _ = vector6 := (congrArg (eval wire5.comparison.projection)
      (coordinate5 S pages M)).trans finite5.2.1

theorem nonzero6 : (endpoint6 S pages M).value ≠ 0 := by
  intro hz
  have h := coordinate6 S pages M
  rw [hz,M.page6.zero_value] at h
  exact (show (zero : Vec 1) ≠ vector6 from by decide) h

/-- Actual E6 survival of the fixed raw vector follows from whole-map
interpretations of the finite input. These interpretations are not proved
for the sphere by this theorem. No E12 conclusion is inferred. -/
theorem named_E6 : ∃ x : (S.element 6 degree).carrier,
    Nonempty (Trace S pages degree 6 (raw S pages M) x) ∧ x ≠ 0 ∧
    M.page6.equivalence x = vector6 :=
  ⟨(endpoint6 S pages M).value,⟨(endpoint6 S pages M).trace⟩,
    nonzero6 S pages M,coordinate6 S pages M⟩

#print axioms named_E2_binding
#print axioms named_E6
#print axioms cycle2
#print axioms nonboundary2
#print axioms cycle3
#print axioms nonboundary3
#print axioms cycle4
#print axioms nonboundary4
#print axioms cycle5
#print axioms nonboundary5
end Fact713NamedActual
