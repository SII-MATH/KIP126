"""Generate the fixed four-step actual trace; no actual meaning is synthesized."""
from pathlib import Path

HERE = Path(__file__).resolve().parent
lines = ['''import Fact713Row2773Refinement.Data
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
structure Meanings (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where''']
for r in range(2, 7):
    dim = 2 if r < 4 else 1
    lines.append(f'  page{r} : Coordinates S {r} degree {dim}')
for r in range(2, 6):
    lines.append(f'  step{r} : StepMeaning S pages {r} degree wire{r} page{r} page{r+1}')
lines.append('''
variable (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
  (M : Meanings S pages)

def raw : (S.element 2 degree).carrier := M.page2.equivalence.symm vector2
def endpoint2 : Endpoint S pages 2 degree (raw S pages M) :=
  ⟨raw S pages M,.start _⟩
theorem coordinate2 : M.page2.equivalence (endpoint2 S pages M).value = vector2 :=
  M.page2.equivalence.apply_symm_apply _
''')
for r in range(2, 6):
    lines.append(f'''theorem finite{r} :
    eval (matrixOf wire{r}.k wire{r}.m wire{r}.outgoing) vector{r} = zero ∧
    eval wire{r}.comparison.projection vector{r} = vector{r+1} ∧
    ¬ InImage (matrixOf wire{r}.m wire{r}.n wire{r}.incoming) vector{r} := by
  unfold InImage
  decide

theorem cycle{r} : S.differential {r} degree (endpoint{r} S pages M).value =
    S.zero {r} (AdamsTarget {r} degree) :=
  cycle S pages {r} degree wire{r} M.page{r} M.page{r+1} M.step{r} _ (by
    erw [coordinate{r}]; exact finite{r}.1)

theorem nonboundary{r} : ¬ PageBoundary S {r} degree (endpoint{r} S pages M).value := by
  intro hb
  have h := (boundary_iff S pages {r} degree wire{r} M.page{r} M.page{r+1} M.step{r} _).mp hb
  erw [coordinate{r}] at h
  exact finite{r}.2.2 h

def endpoint{r+1} : Endpoint S pages {r+1} degree (raw S pages M) :=
  advance S pages {r} degree wire{r} M.page{r} M.page{r+1} M.step{r} _
    (endpoint{r} S pages M) (by erw [coordinate{r}]; exact finite{r}.1)

theorem coordinate{r+1} : M.page{r+1}.equivalence (endpoint{r+1} S pages M).value = vector{r+1} := by
  calc
    _ = eval wire{r}.comparison.projection (M.page{r}.equivalence (endpoint{r} S pages M).value) :=
      M.step{r}.quotient _ _
    _ = vector{r+1} := (congrArg (eval wire{r}.comparison.projection)
      (coordinate{r} S pages M)).trans finite{r}.2.1
''')
lines.append('''theorem nonzero6 : (endpoint6 S pages M).value ≠ 0 := by
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
#print axioms named_E6''')
for r in range(2, 6):
    lines.append(f'#print axioms cycle{r}\n#print axioms nonboundary{r}')
lines.append('end Fact713NamedActual\n')
(HERE / 'Basic.lean').write_text('\n'.join(lines))
