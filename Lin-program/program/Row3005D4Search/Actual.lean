import Row3005D4Search.Source

namespace Row3005D4Search.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Source

structure Certificate (C S : AdamsSpectralSequence) where
  input : Source.Input C S
  transition3 : input.Transition3
  cZeros : ActualAdamsSystemBridge.ZeroMeaning C input.stage2.middle.sourcePages
  cTarget2 : Coordinates C 2 (AdamsTarget 4 cDegree) 0
  targetMap4 : (C.element 4 (AdamsTarget 4 cDegree)).carrier →
    (S.element 4 (AdamsTarget 4 sDegree)).carrier
  targetMapZero : targetMap4 0 = 0
  naturality4 : ∀ x, S.differential 4 sDegree (input.map4 x) =
    targetMap4 (C.differential 4 cDegree x)

variable {C S : AdamsSpectralSequence}

theorem Certificate.c_target_empty4 (D : Certificate C S)
    (x : (C.element 4 (AdamsTarget 4 cDegree)).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later C D.input.stage2.middle.sourcePages D.cZeros _ 2
    (Fact715IncomingTail.coordinate_empty D.cTarget2) 4 (by decide) x

theorem Certificate.source_zero4 (D : Certificate C S) (x : (C.element 4 cDegree).carrier) :
    C.differential 4 cDegree x = 0 := D.c_target_empty4 _

theorem Certificate.named_zero4 (D : Certificate C S) :
    S.differential 4 sDegree (D.input.map4 D.input.value4) = 0 := by
  rw [D.naturality4,D.source_zero4,D.targetMapZero]

theorem Certificate.named_nonzero4 (D : Certificate C S) : D.input.map4 D.input.value4 ≠ 0 := by
  intro h
  exact Data.named_nonzero ((D.input.named4 D.transition3).symm.trans
    ((congrArg D.input.sphere4.equivalence h).trans D.input.sphere4.zero_value))

/-- Every E4 element is covered by the one-dimensional sphere chart. -/
theorem Certificate.whole_zero4 (D : Certificate C S) (x : (S.element 4 sDegree).carrier) :
    S.differential 4 sDegree x = 0 := by
  have casesV : ∀ v : Vec 1, v = zero ∨ v = Data.sphereName := by decide
  rcases casesV (D.input.sphere4.equivalence x) with hz | hn
  · have hx : x = 0 := D.input.sphere4.equivalence.injective
      (hz.trans D.input.sphere4.zero_value.symm)
    rw [hx,(S.differential 4 sDegree).map_zero']
  · have hx : x = D.input.map4 D.input.value4 := D.input.sphere4.equivalence.injective
      (hn.trans (D.input.named4 D.transition3).symm)
    rw [hx]
    exact D.named_zero4

noncomputable def Certificate.value5 (D : Certificate C S) :=
  (D.input.stage2.middle.targetPages.nextPage 4 sDegree).toNext (Quotient.mk _
    (⟨D.input.map4 D.input.value4,D.named_zero4.trans (S.zero_is_zero _ _).symm⟩ : PageCycle S 4 sDegree))

noncomputable def Certificate.trace5 (D : Certificate C S) :
    Trace S D.input.stage2.middle.targetPages sDegree 5
      (D.input.stage2.middleMap D.input.stage2.raw) D.value5 :=
  .step (D.input.sphere_trace4 D.transition3) (D.named_zero4.trans (S.zero_is_zero _ _).symm)

def ResultValid (D : Certificate C S) (input : (S.element 2 sDegree).carrier) : Prop :=
  D.input.stage2.sphereCoordinates.equivalence input = Data.sphereRaw ∧
  Nonempty (Trace S D.input.stage2.middle.targetPages sDegree 5 input D.value5) ∧
  D.input.map4 D.input.value4 ≠ 0 ∧ S.differential 4 sDegree (D.input.map4 D.input.value4) = 0

theorem result_sound (D : Certificate C S) (input : (S.element 2 sDegree).carrier)
    (binding : D.input.stage2.sphereCoordinates.equivalence input = Data.sphereRaw) :
    ResultValid D input := by
  have same : input = D.input.stage2.middleMap D.input.stage2.raw :=
    D.input.stage2.sphereCoordinates.equivalence.injective (binding.trans D.input.stage2.named2.symm)
  exact ⟨binding,same ▸ ⟨D.trace5⟩,D.named_nonzero4,D.named_zero4⟩

#print axioms Certificate.c_target_empty4
#print axioms Certificate.source_zero4
#print axioms Certificate.named_zero4
#print axioms Certificate.named_nonzero4
#print axioms Certificate.whole_zero4
#print axioms Certificate.trace5
#print axioms result_sound
end Row3005D4Search.Actual
