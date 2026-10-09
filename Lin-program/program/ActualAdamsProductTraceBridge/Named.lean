import ActualAdamsProductTraceBridge.Factors

namespace ActualAdamsProductTraceBridge
open ManualInputObligations ManualInputObligations.Reference
open ActualAdamsProductCycleBridge

/-- Only the six local squares needed for g*g, g^2*g^2 and g^4*delta,
at pages2/3, are required. Each square covers all actual cycles. -/
structure NamedTransitions (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) : Prop where
  square : ∀ q, 2 ≤ q → q < 4 → Transition S pages P q gDegree gDegree
  fourth : ∀ q, 2 ≤ q → q < 4 → Transition S pages P q gSquaredDegree gSquaredDegree
  named : ∀ q, 2 ≤ q → q < 4 → Transition S pages P q gFourthDegree deltaDegree

/-- The actual E2 product determines the actual E4 endpoint through genuine
factor traces and the local multiplicativity squares. -/
noncomputable def namedTrace (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (g4 : (S.element 4 gDegree).carrier) (delta4 : (S.element 4 deltaDegree).carrier)
    (tg : Trace S pages gDegree 4 g0 g4) (td : Trace S pages deltaDegree 4 delta0 delta4) :
    Trace S pages namedDegree 4 (namedProduct S P.product 2 g0 delta0)
      (namedProduct S P.product 4 g4 delta4) := by
  let t2 := trace_product S pages P gDegree gDegree tg tg transitions.square
  let t4 := trace_product S pages P gSquaredDegree gSquaredDegree t2 t2 transitions.fourth
  exact trace_product S pages P gFourthDegree deltaDegree t4 td transitions.named

/-- Supplying the intended E2 name as the actual product is necessary; equal
bidegrees or matching database strings cannot replace this equality. -/
noncomputable def namedTrace_from_name (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (g4 : (S.element 4 gDegree).carrier) (delta4 : (S.element 4 deltaDegree).carrier)
    (tg : Trace S pages gDegree 4 g0 g4) (td : Trace S pages deltaDegree 4 delta0 delta4)
    (initialName : (S.element 2 namedDegree).carrier)
    (nameMeaning : initialName = namedProduct S P.product 2 g0 delta0) :
    Trace S pages namedDegree 4 initialName (namedProduct S P.product 4 g4 delta4) := by
  subst initialName
  exact namedTrace S pages P transitions g0 delta0 g4 delta4 tg td

theorem named_at (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (g4 : (S.element 4 gDegree).carrier) (delta4 : (S.element 4 deltaDegree).carrier)
    (tg : Trace S pages gDegree 4 g0 g4) (td : Trace S pages deltaDegree 4 delta0 delta4)
    (initialName : (S.element 2 namedDegree).carrier)
    (nameMeaning : initialName = namedProduct S P.product 2 g0 delta0) :
    namedProduct S P.product 4 g4 delta4 =
      (ActualAdamsSystemBridge.system S pages zeros namedDegree).at initialName 2 :=
  ActualAdamsSystemBridge.trace_at S pages zeros namedDegree
    (namedTrace_from_name S pages P transitions g0 delta0 g4 delta4 tg td initialName nameMeaning)

theorem traced_named_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (g4 : (S.element 4 gDegree).carrier) (delta4 : (S.element 4 deltaDegree).carrier)
    (tg : Trace S pages gDegree 4 g0 g4) (td : Trace S pages deltaDegree 4 delta0 delta4)
    (initialName : (S.element 2 namedDegree).carrier)
    (nameMeaning : initialName = namedProduct S P.product 2 g0 delta0)
    (c : (S.element 2 ⟨13,57⟩).carrier → LinearCertificates.Vec 0)
    (faithful : Function.Injective c) :
    S.differential 4 namedDegree
      ((ActualAdamsSystemBridge.system S pages zeros namedDegree).at initialName 2) = 0 := by
  rw [← named_at S pages zeros P transitions g0 delta0 g4 delta4 tg td initialName nameMeaning]
  exact named_cycle_from_empty_target S pages zeros P c faithful g4 delta4

#print axioms namedTrace
#print axioms namedTrace_from_name
#print axioms named_at
#print axioms traced_named_cycle
end ActualAdamsProductTraceBridge
