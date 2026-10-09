import ActualAdamsProductTraceBridge.Named

namespace ActualAdamsProductTraceBridge
open ManualInputObligations ManualInputObligations.Reference LinearCertificates
open ActualAdamsProductCycleBridge

/-- Five actually empty E2 targets: two for each factor's prefix and one for
the final delta d4. No assertion about incoming boundaries is included. -/
structure FactorTargets (S : AdamsSpectralSequence) where
  g2 : (S.element 2 ⟨6,25⟩).carrier → Vec 0
  g2Faithful : Function.Injective g2
  g3 : (S.element 2 ⟨7,26⟩).carrier → Vec 0
  g3Faithful : Function.Injective g3
  delta2 : (S.element 2 ⟨11,55⟩).carrier → Vec 0
  delta2Faithful : Function.Injective delta2
  delta3 : (S.element 2 ⟨12,56⟩).carrier → Vec 0
  delta3Faithful : Function.Injective delta3
  delta4 : (S.element 2 ⟨13,57⟩).carrier → Vec 0
  delta4Faithful : Function.Injective delta4

/-- This constructs the target trace; it does not take one as a certificate field. -/
noncomputable def endpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (targets : FactorTargets S)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (initialName : (S.element 2 namedDegree).carrier)
    (nameMeaning : initialName = namedProduct S P.product 2 g0 delta0) :
    Endpoint S pages 4 namedDegree initialName := by
  let g := gEndpoint S pages zeros targets.g2 targets.g2Faithful targets.g3 targets.g3Faithful g0
  let delta := deltaEndpoint S pages zeros targets.delta2 targets.delta2Faithful
    targets.delta3 targets.delta3Faithful delta0
  exact ⟨namedProduct S P.product 4 g.value delta.value,
    namedTrace_from_name S pages P transitions g0 delta0 g.value delta.value
      g.trace delta.trace initialName nameMeaning⟩

theorem endpoint_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (targets : FactorTargets S)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (initialName : (S.element 2 namedDegree).carrier)
    (nameMeaning : initialName = namedProduct S P.product 2 g0 delta0) :
    S.differential 4 namedDegree
      (endpoint S pages zeros P transitions targets g0 delta0 initialName nameMeaning).value = 0 :=
  named_cycle_from_empty_target S pages zeros P targets.delta4 targets.delta4Faithful _ _

theorem at_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (targets : FactorTargets S)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (initialName : (S.element 2 namedDegree).carrier)
    (nameMeaning : initialName = namedProduct S P.product 2 g0 delta0) :
    S.differential 4 namedDegree
      ((ActualAdamsSystemBridge.system S pages zeros namedDegree).at initialName 2) = 0 := by
  let ep := endpoint S pages zeros P transitions targets g0 delta0 initialName nameMeaning
  have same := ActualAdamsSystemBridge.endpoint_at S pages zeros namedDegree 2 initialName ep
  rw [← same]
  exact endpoint_cycle S pages zeros P transitions targets g0 delta0 initialName nameMeaning

theorem finite_at_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : CertifiedAdamsProduct S) (transitions : NamedTransitions S pages P)
    (targets : FactorTargets S)
    (g0 : (S.element 2 gDegree).carrier) (delta0 : (S.element 2 deltaDegree).carrier)
    (initialName : (S.element 2 namedDegree).carrier)
    (nameMeaning : initialName = namedProduct S P.product 2 g0 delta0)
    (A : Matrix 1 3) (coordinates : DifferentialCoordinates S A)
    (named : coordinates.source
      ((ActualAdamsSystemBridge.system S pages zeros namedDegree).at initialName 2) =
        Fact764ConstrainedE5.Coordinates.named) :
    InKernel A Fact764ConstrainedE5.Coordinates.named := by
  rw [InKernel, ← named, ← coordinates.allDifferentials,
    at_cycle S pages zeros P transitions targets g0 delta0 initialName nameMeaning,coordinates.targetZero]

#print axioms endpoint
#print axioms endpoint_cycle
#print axioms at_cycle
#print axioms finite_at_cycle
end ActualAdamsProductTraceBridge
