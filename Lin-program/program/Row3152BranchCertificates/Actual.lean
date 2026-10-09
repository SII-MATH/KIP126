import Row3152BranchCertificates.Semantics
import Row2925EtaD4.Actual
import ActualAdamsIncomingBridge.Basic

namespace Row3152BranchCertificates.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference

abbrev sourceDegree : Bidegree := ⟨15,140⟩
abbrev targetDegree : Bidegree := ⟨20,144⟩

def source4Coordinates (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 Row2925EtaD4.Actual.etaDegree).carrier)
    (M : Row2925EtaD4.Actual.ProductMeaning S P eta)
    (y : (S.element 4 sourceDegree).carrier) : Vec 2 :=
  Row2925EtaD4.Naturality.ue.toCoordinates (M.target y)

/-- Full incoming values are interpreted for every actual incoming element.
No finite incoming dimension or unknown d4 coefficient is silently fixed. -/
structure Incoming4Meaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 Row2925EtaD4.Actual.etaDegree).carrier)
    (M : Row2925EtaD4.Actual.ProductMeaning S P eta) (b c : Bool) where
  coordinates : ActualAdamsIncomingBridge.Source S 4 sourceDegree → Vec 2
  values : ∀ a, source4Coordinates S P eta M
    (ActualAdamsIncomingBridge.differential S 4 sourceDegree a) =
      eval (Row3151BranchCertificates.Semantics.outgoing b c) (coordinates a)

theorem source4_nonboundary (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 Row2925EtaD4.Actual.etaDegree).carrier)
    (M : Row2925EtaD4.Actual.ProductMeaning S P eta)
    (x : (S.element 4 Row2925EtaD4.Actual.sourceDegree).carrier)
    (named : M.source x = Row2925EtaD4.Naturality.named)
    (b c : Bool)
    (column : source4Coordinates S P eta M (S.differential 4 Row2925EtaD4.Actual.sourceDegree x) =
      fun i => if i.val = 0 then b else c)
    (incoming : Incoming4Meaning S P eta M b c)
    (y : (S.element 4 sourceDegree).carrier)
    (coordinates : source4Coordinates S P eta M y = RemainingThreeAudit.event3152Source) :
    ¬ PageBoundary S 4 sourceDegree y := by
  have finite := Row2925EtaD4.Actual.actual_source_nonboundary S P eta M x named b c column
  intro boundary
  obtain ⟨a,ha⟩ := (ActualAdamsIncomingBridge.differential_image S 4 sourceDegree y).mpr boundary
  apply finite
  refine ⟨incoming.coordinates a,?_⟩
  rw [← incoming.values,ha,coordinates]

/-- The constructed endpoint uses the actual next-page quotient map. -/
def nextEndpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (raw : (S.element 2 sourceDegree).carrier) (previous : Endpoint S pages 4 sourceDegree raw)
    (cycle : S.differential 4 sourceDegree previous.value = S.zero 4 (AdamsTarget 4 sourceDegree)) :
    Endpoint S pages 5 sourceDegree raw :=
  ⟨(pages.nextPage 4 sourceDegree).toNext (Quotient.mk _ (⟨previous.value,cycle⟩ : PageCycle S 4 sourceDegree)),
    .step previous.trace cycle⟩

theorem nextEndpoint_nonzero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (raw : (S.element 2 sourceDegree).carrier) (previous : Endpoint S pages 4 sourceDegree raw)
    (cycle : S.differential 4 sourceDegree previous.value = S.zero 4 (AdamsTarget 4 sourceDegree))
    (nonboundary : ¬ PageBoundary S 4 sourceDegree previous.value) :
    (nextEndpoint S pages raw previous cycle).value ≠ S.zero 5 sourceDegree := by
  intro zero
  exact nonboundary ((ActualAdamsSystemBridge.quotient_zero_iff S pages zeroMeaning 4 sourceDegree
    ⟨previous.value,cycle⟩).mp zero)

/-- Coordinates for the entire actual d5 map. Faithfulness is explicit.
This is the external mathematical interpretation of its stored matrix value. -/
structure Event5Meaning (S : AdamsSpectralSequence) where
  source : (S.element 5 sourceDegree).carrier → Vec 1
  target : (S.element 5 targetDegree).carrier → Vec 1
  sourceFaithful : Function.Injective source
  targetFaithful : Function.Injective target
  sourceZero : source 0 = zero
  targetZero : target 0 = zero
  values : ∀ x, target (S.differential 5 sourceDegree x) = eval Generic.outgoing (source x)

theorem actual_d5_value (S : AdamsSpectralSequence) (M : Event5Meaning S)
    (x : (S.element 5 sourceDegree).carrier) (y : (S.element 5 targetDegree).carrier)
    (source : M.source x = fun _ => true) (target : M.target y = fun _ => true) :
    S.differential 5 sourceDegree x = y ∧ y ≠ 0 := by
  constructor
  · apply M.targetFaithful
    rw [M.values,source,Generic.named_event,target]
  · intro hy
    have bad := target
    rw [hy,M.targetZero] at bad
    exact Generic.target_nonzero bad.symm

theorem actual_d5_injective (S : AdamsSpectralSequence) (M : Event5Meaning S) :
    Function.Injective (S.differential 5 sourceDegree) := by
  intro x y h
  apply M.sourceFaithful
  have values := congrArg M.target h
  simpa only [M.values,Generic.outgoing,ResolutionCertificates.eval_identity] using values

/-- This quantifies over the actual whole incoming carrier, regardless of
its cardinality. An injective outgoing d5 and d5 squared zero force its image zero. -/
theorem all_actual_incoming_zero (S : AdamsSpectralSequence) (M : Event5Meaning S)
    (a : ActualAdamsIncomingBridge.Source S 5 sourceDegree) :
    ActualAdamsIncomingBridge.differential S 5 sourceDegree a = 0 := by
  apply actual_d5_injective S M
  rw [(S.differential 5 sourceDegree).map_zero']
  change S.differential 5 sourceDegree
    (S.differential 5 (⟨10,136⟩ : Bidegree) (a (by decide))) = 0
  exact S.differentialSq 5 ⟨10,136⟩ _

/-- Interpretation of the whole checked quotient projection. Both retained
finite branches have this same second-coordinate projection. -/
structure Quotient5Meaning (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 Row2925EtaD4.Actual.etaDegree).carrier)
    (M : Row2925EtaD4.Actual.ProductMeaning S P eta) (E : Event5Meaning S) (b : Bool) where
  values : ∀ (y : (S.element 4 sourceDegree).carrier)
    (cycle : S.differential 4 sourceDegree y = S.zero 4 (AdamsTarget 4 sourceDegree)),
    E.source ((pages.nextPage 4 sourceDegree).toNext
      (Quotient.mk _ (⟨y,cycle⟩ : PageCycle S 4 sourceDegree))) =
        eval (matrixOf 1 2 (Semantics.sourceD4 b).projection) (source4Coordinates S P eta M y)

/-- The retained first bit is universally quantified. Inputs include actual
earlier traces and the explicit stored-event matrix interpretation; eta
supplies the missing source nonboundary constraint, not the d5 value itself. -/
theorem actual_event_from_eta (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ActualAdamsSystemBridge.ZeroMeaning S pages) (P : CertifiedAdamsProduct S)
    (eta : (S.element 4 Row2925EtaD4.Actual.etaDegree).carrier)
    (M : Row2925EtaD4.Actual.ProductMeaning S P eta)
    (x : (S.element 4 Row2925EtaD4.Actual.sourceDegree).carrier)
    (named : M.source x = Row2925EtaD4.Naturality.named) (b c : Bool)
    (column : source4Coordinates S P eta M (S.differential 4 Row2925EtaD4.Actual.sourceDegree x) =
      fun i => if i.val = 0 then b else c)
    (incoming : Incoming4Meaning S P eta M b c)
    (raw : (S.element 2 sourceDegree).carrier) (previous : Endpoint S pages 4 sourceDegree raw)
    (cycle : S.differential 4 sourceDegree previous.value = S.zero 4 (AdamsTarget 4 sourceDegree))
    (source4 : source4Coordinates S P eta M previous.value = RemainingThreeAudit.event3152Source)
    (E : Event5Meaning S) (Q : Quotient5Meaning S pages P eta M E b)
    (rawTarget : (S.element 2 targetDegree).carrier)
    (target : Endpoint S pages 5 targetDegree rawTarget)
    (targetCoordinate : E.target target.value = fun _ => true) :
    (nextEndpoint S pages raw previous cycle).value ≠ S.zero 5 sourceDegree ∧
    S.differential 5 sourceDegree (nextEndpoint S pages raw previous cycle).value = target.value ∧
    target.value ≠ 0 := by
  have nb := source4_nonboundary S P eta M x named b c column incoming previous.value source4
  refine ⟨nextEndpoint_nonzero S pages zeroMeaning raw previous cycle nb,?_⟩
  apply actual_d5_value S E _ target.value _ targetCoordinate
  change E.source ((pages.nextPage 4 sourceDegree).toNext
    (Quotient.mk _ (⟨previous.value,cycle⟩ : PageCycle S 4 sourceDegree))) = _
  rw [Q.values,source4]
  exact Semantics.both_source_projection b

#print axioms source4_nonboundary
#print axioms nextEndpoint
#print axioms nextEndpoint_nonzero
#print axioms actual_d5_value
#print axioms actual_d5_injective
#print axioms all_actual_incoming_zero
#print axioms actual_event_from_eta
end Row3152BranchCertificates.Actual
