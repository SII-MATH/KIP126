import Fact761ConstructedActual.Incoming

namespace Fact761ConstructedActual.Incoming
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport Row3151ActualTransport.Named
open NamedPageComparison.ConditionalHigherData

def sourceNamed2 : Vec 2 := fun i => i.val == 0
def sourceNamed : Vec 1 := fun _ => true

theorem sourceFinite2 : InKernel (matrixOf b3_130_2.k b3_130_2.m b3_130_2.outgoing) sourceNamed2 ∧
    eval b3_130_2.comparison.projection sourceNamed2 = sourceNamed := by
  unfold InKernel
  decide

theorem sourceFinite3 : InKernel (matrixOf b3_130_3.k b3_130_3.m b3_130_3.outgoing) sourceNamed ∧
    eval b3_130_3.comparison.projection sourceNamed = sourceNamed := by
  unfold InKernel
  decide

theorem sourceFinite4 : InKernel (matrixOf b3_130_4.k b3_130_4.m b3_130_4.outgoing) sourceNamed ∧
    eval b3_130_4.comparison.projection sourceNamed = sourceNamed := by
  unfold InKernel
  decide

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Source3Stage2.raw (T : Source3Stage2 S pages) : (S.element 2 ⟨3,130⟩).carrier :=
  T.initial.coordinates.equivalence.symm sourceNamed2

noncomputable def Source3Stage2.endpoint2 (T : Source3Stage2 S pages) :
    Endpoint S pages 2 ⟨3,130⟩ T.raw := ⟨T.raw, .start _⟩

noncomputable def Source3Stage2.endpoint3 (T : Source3Stage2 S pages) :
    Endpoint S pages 3 ⟨3,130⟩ T.raw :=
  advance S pages 2 ⟨3,130⟩ b3_130_2 T.initial.coordinates T.page3.coordinates
    (T.step2.stepMeaning accepted3_2) _ T.endpoint2 (by
      change InKernel _ (T.initial.coordinates.equivalence (T.initial.coordinates.equivalence.symm sourceNamed2))
      rw [T.initial.coordinates.equivalence.apply_symm_apply]
      exact sourceFinite2.1)

theorem Source3Stage2.coordinate3 (T : Source3Stage2 S pages) :
    T.page3.coordinates.equivalence T.endpoint3.value = sourceNamed := by
  calc
    _ = eval b3_130_2.comparison.projection
        (T.initial.coordinates.equivalence T.raw) := (T.step2.stepMeaning accepted3_2).quotient _ _
    _ = sourceNamed := by
      change eval _ (T.initial.coordinates.equivalence (T.initial.coordinates.equivalence.symm sourceNamed2)) = _
      rw [T.initial.coordinates.equivalence.apply_symm_apply]
      exact sourceFinite2.2

noncomputable def Source3Stage3.endpoint4 (T : Source3Stage3 S pages) :
    Endpoint S pages 4 ⟨3,130⟩ T.previous.raw :=
  advance S pages 3 ⟨3,130⟩ b3_130_3 T.previous.page3.coordinates T.page4.coordinates
    (T.step3.stepMeaning accepted3_3) _ T.previous.endpoint3 (by
      erw [T.previous.coordinate3]
      exact sourceFinite3.1)

theorem Source3Stage3.coordinate4 (T : Source3Stage3 S pages) :
    T.page4.coordinates.equivalence T.endpoint4.value = sourceNamed := by
  calc
    _ = eval b3_130_3.comparison.projection
        (T.previous.page3.coordinates.equivalence T.previous.endpoint3.value) :=
      (T.step3.stepMeaning accepted3_3).quotient _ _
    _ = sourceNamed := (congrArg (eval b3_130_3.comparison.projection)
      T.previous.coordinate3).trans sourceFinite3.2

noncomputable def Source3Stage4.endpoint5 (T : Source3Stage4 S pages) :
    Endpoint S pages 5 ⟨3,130⟩ T.previous.previous.raw :=
  advance S pages 4 ⟨3,130⟩ b3_130_4 T.previous.page4.coordinates T.page5.coordinates
    (T.step4.stepMeaning accepted3_4) _ T.previous.endpoint4 (by
      erw [T.previous.coordinate4]
      exact sourceFinite4.1)

theorem Source3Stage4.coordinate5 (T : Source3Stage4 S pages) :
    T.page5.coordinates.equivalence T.endpoint5.value = sourceNamed := by
  calc
    _ = eval b3_130_4.comparison.projection
        (T.previous.page4.coordinates.equivalence T.previous.endpoint4.value) :=
      (T.step4.stepMeaning accepted3_4).quotient _ _
    _ = sourceNamed := (congrArg (eval b3_130_4.comparison.projection)
      T.previous.coordinate4).trans sourceFinite4.2

theorem Source3Stage5.traced_cycle (T : Source3Stage5 S pages) :
    S.differential 5 ⟨3,130⟩ T.previous.endpoint5.value = 0 := by
  have eq : T.previous.endpoint5.value = T.previous.page5.coordinates.equivalence.symm sourceNamed :=
    T.previous.page5.coordinates.equivalence.injective
      (T.previous.coordinate5.trans (T.previous.page5.coordinates.equivalence.apply_symm_apply _).symm)
  rw [eq]
  exact T.cycle5

#print axioms Source3Stage2.coordinate3
#print axioms Source3Stage3.coordinate4
#print axioms Source3Stage4.coordinate5
#print axioms Source3Stage5.traced_cycle
end Fact761ConstructedActual.Incoming
