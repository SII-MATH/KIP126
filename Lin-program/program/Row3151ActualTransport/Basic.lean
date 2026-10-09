import Row3151FullNeighborhood.Links
import Row3152BranchCertificates.Actual

namespace Row3151ActualTransport
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference Row3151FullNeighborhood

abbrev incomingDegree : Bidegree := ⟨7,134⟩
abbrev sourceDegree : Bidegree := ⟨11,137⟩
abbrev targetDegree : Bidegree := ⟨15,140⟩

/-- Coordinates cover the whole actual carrier and identify its zero. -/
structure Coordinates (S : AdamsSpectralSequence) (r : Nat) (degree : Bidegree) (n : Nat) where
  equivalence : (S.element r degree).carrier ≃ Vec n
  zero_value : equivalence 0 = zero

/-- The unknown d3 bit remains a parameter. Its complete comparison and
actual quotient law connect the two possible dimensions at (7,134). -/
structure IncomingMeaning (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) (a : Bool) where
  page3 : Coordinates S 3 incomingDegree 2
  target3 : Coordinates S 3 (AdamsTarget 3 incomingDegree) 1
  page4 : Coordinates S 4 incomingDegree (Semantics.incomingDimension a)
  outgoing : ∀ x, target3.equivalence (S.differential 3 incomingDegree x) =
    eval (Semantics.outgoing3 a) (page3.equivalence x)
  allIncomingZero : ∀ x : ActualAdamsIncomingBridge.Source S 3 incomingDegree,
    ActualAdamsIncomingBridge.differential S 3 incomingDegree x = 0
  quotient : ∀ (x : (S.element 3 incomingDegree).carrier)
    (cycle : S.differential 3 incomingDegree x = S.zero 3 (AdamsTarget 3 incomingDegree)),
    page4.equivalence ((pages.nextPage 3 incomingDegree).toNext
      (Quotient.mk _ (⟨x,cycle⟩ : PageCycle S 3 incomingDegree))) =
      eval (matrixOf (Semantics.incomingDimension a) 2 (Data.incomingD3 a false false).projection)
        (page3.equivalence x)

theorem prefix_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a : Bool) (I : IncomingMeaning S pages a) (x : (S.element 3 incomingDegree).carrier)
    (coordinate : I.page3.equivalence x = fun i => i.val == 0) :
    S.differential 3 incomingDegree x = S.zero 3 (AdamsTarget 3 incomingDegree) := by
  apply I.target3.equivalence.injective
  rw [I.outgoing,coordinate,S.zero_is_zero,I.target3.zero_value]
  cases a <;> decide

theorem prefix_nonboundary (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a : Bool) (I : IncomingMeaning S pages a) (x : (S.element 3 incomingDegree).carrier)
    (coordinate : I.page3.equivalence x = fun i => i.val == 0) :
    ¬ PageBoundary S 3 incomingDegree x := by
  intro boundary
  obtain ⟨z,hz⟩ := (ActualAdamsIncomingBridge.differential_image S 3 incomingDegree x).mpr boundary
  have hx : x = 0 := hz.symm.trans (I.allIncomingZero z)
  have h := coordinate
  rw [hx,I.page3.zero_value] at h
  exact (show (zero : Vec 2) ≠ (fun i => i.val == 0) from by decide) h

def prefixEndpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a : Bool) (I : IncomingMeaning S pages a) (raw : (S.element 2 incomingDegree).carrier)
    (previous : Endpoint S pages 3 incomingDegree raw)
    (coordinate : I.page3.equivalence previous.value = fun i => i.val == 0) :
    Endpoint S pages 4 incomingDegree raw :=
  ⟨(pages.nextPage 3 incomingDegree).toNext (Quotient.mk _
      (⟨previous.value,prefix_cycle S pages a I previous.value coordinate⟩ : PageCycle S 3 incomingDegree)),
    .step previous.trace (prefix_cycle S pages a I previous.value coordinate)⟩

theorem prefix_endpoint_coordinate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a : Bool) (I : IncomingMeaning S pages a) (raw : (S.element 2 incomingDegree).carrier)
    (previous : Endpoint S pages 3 incomingDegree raw)
    (coordinate : I.page3.equivalence previous.value = fun i => i.val == 0) :
    I.page4.equivalence (prefixEndpoint S pages a I raw previous coordinate).value =
      Semantics.prefixVector a := by
  change I.page4.equivalence ((pages.nextPage 3 incomingDegree).toNext _) = _
  rw [I.quotient,coordinate]
  exact Links.prefix_survives_in_both_dimensions a false false

theorem prefix_endpoint_nonzero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (a : Bool) (I : IncomingMeaning S pages a) (raw : (S.element 2 incomingDegree).carrier)
    (previous : Endpoint S pages 3 incomingDegree raw)
    (coordinate : I.page3.equivalence previous.value = fun i => i.val == 0) :
    (prefixEndpoint S pages a I raw previous coordinate).value ≠ S.zero 4 incomingDegree := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages zeroMeaning 3 incomingDegree
    ⟨previous.value,prefix_cycle S pages a I previous.value coordinate⟩).mp hz
  exact prefix_nonboundary S pages a I previous.value coordinate boundary

/-- Both differential equations quantify over the full actual sources.
The event value remains a separately interpreted stored matrix condition. -/
structure EventMeaning (S : AdamsSpectralSequence) (a : Bool)
    (incoming : Coordinates S 4 incomingDegree (Semantics.incomingDimension a)) where
  source : Coordinates S 4 sourceDegree 2
  target : Coordinates S 4 targetDegree 2
  d : Matrix 2 2
  inc : Matrix 2 (Semantics.incomingDimension a)
  outgoing : ∀ x, target.equivalence (S.differential 4 sourceDegree x) = eval d (source.equivalence x)
  incoming : ∀ x, source.equivalence (S.differential 4 incomingDegree x) = eval inc (incoming.equivalence x)

theorem actual_complex (S : AdamsSpectralSequence) (a : Bool)
    (incoming : Coordinates S 4 incomingDegree (Semantics.incomingDimension a))
    (E : EventMeaning S a incoming) : IsComplex E.d E.inc := by
  intro v
  obtain ⟨x,rfl⟩ := incoming.equivalence.surjective v
  rw [← E.incoming,← E.outgoing]
  have square : S.differential 4 sourceDegree (S.differential 4 incomingDegree x) = 0 :=
    S.differentialSq 4 incomingDegree x
  rw [square]
  exact E.target.zero_value

theorem full_boundary_iff (S : AdamsSpectralSequence) (a : Bool)
    (incoming : Coordinates S 4 incomingDegree (Semantics.incomingDimension a))
    (E : EventMeaning S a incoming) (x : (S.element 4 sourceDegree).carrier) :
    PageBoundary S 4 sourceDegree x ↔ InImage E.inc (E.source.equivalence x) := by
  rw [← ActualAdamsIncomingBridge.differential_image]
  constructor
  · rintro ⟨y,hy⟩
    refine ⟨incoming.equivalence (y (by decide)),?_⟩
    rw [← E.incoming]
    change E.source.equivalence (ActualAdamsIncomingBridge.differential S 4 sourceDegree y) = _
    rw [hy]
  · rintro ⟨v,hv⟩
    obtain ⟨y,rfl⟩ := incoming.equivalence.surjective v
    refine ⟨fun _ => y,?_⟩
    apply E.source.equivalence.injective
    change E.source.equivalence (S.differential 4 incomingDegree y) = _
    rw [E.incoming]
    exact hv

theorem actual_quotient_zero_iff (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ActualAdamsSystemBridge.ZeroMeaning S pages) (a : Bool)
    (incoming : Coordinates S 4 incomingDegree (Semantics.incomingDimension a))
    (E : EventMeaning S a incoming) (x : PageCycle S 4 sourceDegree) :
    (pages.nextPage 4 sourceDegree).toNext (Quotient.mk _ x) = S.zero 5 sourceDegree ↔
      InImage E.inc (E.source.equivalence x.val) :=
  (ActualAdamsSystemBridge.quotient_zero_iff S pages zeroMeaning 4 sourceDegree x).trans
    (full_boundary_iff S a incoming E x.val)

#print axioms prefix_cycle
#print axioms prefix_nonboundary
#print axioms prefix_endpoint_coordinate
#print axioms prefix_endpoint_nonzero
#print axioms actual_complex
#print axioms full_boundary_iff
#print axioms actual_quotient_zero_iff
end Row3151ActualTransport
