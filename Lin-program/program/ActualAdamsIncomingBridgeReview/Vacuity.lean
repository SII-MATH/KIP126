import ActualAdamsIncomingBridge.Basic

namespace ActualAdamsIncomingBridgeReview
open ManualInputObligations.Reference ActualAdamsIncomingBridge

/-- A genuine source degree exists at page4 even when its carrier is the zero
group. Its tagged zero is different from the explicit Unit zero. -/
def extraZero (S : AdamsSpectralSequence) :
    ActualAdamsSystemBridge.Incoming S 4 fact762Degree :=
  .inr ⟨⟨10,136⟩, ⟨rfl,trivial⟩, 0⟩

theorem extraZero_ne (S : AdamsSpectralSequence) : extraZero S ≠ .inl () := by
  intro h
  cases h

/-- Review finding: the original actual incoming assembly has uninhabitable
conditions because its zero-quotient route demands injectivity on tagged zeros. -/
theorem conditions_impossible (S : AdamsSpectralSequence)
    (target : ∀ r, (S.element r fact762Degree).carrier) :
    ¬ Nonempty (Conditions S target) := by
  rintro ⟨conditions⟩
  let route := conditions.page4
  have hz := Fact762Source4Certificates.sourceE4_zero_under_complete_kernel
    route.outgoing route.incomingD3 route.complex route.survivorCycle route.completeKernel
    (route.coordinates (extraZero S))
  have equal := route.faithful (hz.trans route.zeroMeaning.symm)
  exact extraZero_ne S equal

#print axioms extraZero_ne
#print axioms conditions_impossible
end ActualAdamsIncomingBridgeReview
