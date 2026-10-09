import Row3151ActualTransport.Basic

namespace Row3151ActualTransport
open LinearCertificates PageTransitionCertificates ManualInputObligations
open ManualInputObligations.Reference Row3151FullNeighborhood

/-- Actual eta multiplication constrains only the second unknown coordinate.
The separate known column is the stored nonzero event interpretation. -/
theorem six_actual_branches (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a : Bool) (I : IncomingMeaning S pages a) (E : EventMeaning S a I.page4)
    (P : CertifiedAdamsProduct S) (eta : (S.element 4 Row2925EtaD4.Actual.etaDegree).carrier)
    (M : Row2925EtaD4.Actual.ProductMeaning S P eta)
    (named : (S.element 4 sourceDegree).carrier)
    (namedProduct : M.source named = Row2925EtaD4.Naturality.named)
    (namedCoordinate : E.source.equivalence named = fun i => i.val == 0)
    (targetProduct : ∀ y, E.target.equivalence y =
      Row3152BranchCertificates.Actual.source4Coordinates S P eta M y)
    (known : eval E.d (fun i => i.val == 1) = fun i => i.val == 0)
    (rawPrefix : (S.element 2 incomingDegree).carrier)
    (prefix3 : Endpoint S pages 3 incomingDegree rawPrefix)
    (prefixCoordinate : I.page3.equivalence prefix3.value = fun i => i.val == 0)
    (prefix4Cycle : S.differential 4 incomingDegree
      (prefixEndpoint S pages a I rawPrefix prefix3 prefixCoordinate).value = 0) :
    ∃ b q : Bool, (a = true → q = false) ∧
      E.d = matrixOf 2 2 (Data.event a b q).outgoing ∧
      E.inc = matrixOf 2 (Semantics.incomingDimension a) (Data.event a b q).incoming ∧
      (Data.event a b q).n = Semantics.incomingDimension a ∧ (Data.event a b q).Valid := by
  apply Semantics.all_admissible_matrices a E.d E.inc known
  · have h := Row2925EtaD4.Actual.actual_second_coordinate_zero S P eta M named namedProduct
    have values := E.outgoing named
    rw [namedCoordinate,targetProduct] at values
    rw [← values]
    exact h
  · have h := E.incoming (prefixEndpoint S pages a I rawPrefix prefix3 prefixCoordinate).value
    rw [prefix4Cycle] at h
    change E.source.equivalence (0 : (S.element 4 sourceDegree).carrier) = _ at h
    rw [E.source.zero_value,prefix_endpoint_coordinate] at h
    exact h.symm
  · exact actual_complex S a I.page4 E

theorem kernel_boundary_cases (a b q : Bool) :
    InImage (Semantics.incoming4 a b q) (fun i => i.val == 0 || b) ↔
      (!a && q) = true := by
  unfold InImage
  cases a <;> cases b <;> cases q <;> decide

theorem actual_kernel_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a b q : Bool) (I : IncomingMeaning S pages a) (E : EventMeaning S a I.page4)
    (outgoing : E.d = matrixOf 2 2 (Data.event a b q).outgoing)
    (x : (S.element 4 sourceDegree).carrier)
    (coordinate : E.source.equivalence x = fun i => i.val == 0 || b) :
    S.differential 4 sourceDegree x = S.zero 4 (AdamsTarget 4 sourceDegree) := by
  apply E.target.equivalence.injective
  rw [E.outgoing,coordinate,outgoing,Semantics.outgoing_matrix_exact,S.zero_is_zero]
  have hz := E.target.zero_value
  change E.target.equivalence (0 : (S.element 4 (AdamsTarget 4 sourceDegree)).carrier) = zero at hz
  rw [hz]
  cases b <;> decide

/-- In branches 001/011 the extra incoming value really kills the kernel
class. This conclusion uses every actual incoming element, not a prefix. -/
theorem actual_kernel_quotient (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ActualAdamsSystemBridge.ZeroMeaning S pages) (a b q : Bool)
    (I : IncomingMeaning S pages a) (E : EventMeaning S a I.page4)
    (incoming : E.inc = matrixOf 2 (Semantics.incomingDimension a) (Data.event a b q).incoming)
    (x : PageCycle S 4 sourceDegree)
    (coordinate : E.source.equivalence x.val = fun i => i.val == 0 || b) :
    (pages.nextPage 4 sourceDegree).toNext (Quotient.mk _ x) = S.zero 5 sourceDegree ↔
      (!a && q) = true := by
  rw [actual_quotient_zero_iff S pages zeroMeaning a I.page4 E x,incoming,
    Semantics.incoming_matrix_exact,coordinate,kernel_boundary_cases]

theorem actual_event (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a : Bool) (I : IncomingMeaning S pages a) (E : EventMeaning S a I.page4)
    (known : eval E.d (fun i => i.val == 1) = fun i => i.val == 0)
    (rawSource : (S.element 2 sourceDegree).carrier)
    (rawTarget : (S.element 2 targetDegree).carrier)
    (source : Endpoint S pages 4 sourceDegree rawSource)
    (target : Endpoint S pages 4 targetDegree rawTarget)
    (sourceCoordinate : E.source.equivalence source.value = fun i => i.val == 1)
    (targetCoordinate : E.target.equivalence target.value = fun i => i.val == 0) :
    S.differential 4 sourceDegree source.value = target.value ∧
      target.value ≠ 0 ∧ PageBoundary S 4 targetDegree target.value := by
  have value : S.differential 4 sourceDegree source.value = target.value := by
    apply E.target.equivalence.injective
    rw [E.outgoing,sourceCoordinate,known,targetCoordinate]
  refine ⟨value,?_,Or.inr ⟨sourceDegree,source.value,by decide,value⟩⟩
  intro hz
  have h := targetCoordinate
  rw [hz,E.target.zero_value] at h
  exact (show (zero : Vec 2) ≠ (fun i => i.val == 0) from by decide) h

/-- Complete finite coverage and the actual nonzero event are separate,
simultaneous conclusions. No branch bit is chosen by a parser or C++ log. -/
theorem checked_and_actual (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (a b q : Bool) (I : IncomingMeaning S pages a) (E : EventMeaning S a I.page4)
    (outgoing : E.d = matrixOf 2 2 (Data.event a b q).outgoing)
    (incoming : E.inc = matrixOf 2 (Semantics.incomingDimension a) (Data.event a b q).incoming)
    (rawSource : (S.element 2 sourceDegree).carrier)
    (rawTarget : (S.element 2 targetDegree).carrier)
    (source : Endpoint S pages 4 sourceDegree rawSource)
    (target : Endpoint S pages 4 targetDegree rawTarget)
    (sourceCoordinate : E.source.equivalence source.value = fun i => i.val == 1)
    (targetCoordinate : E.target.equivalence target.value = fun i => i.val == 0) :
    IndexedFamilyCertificates.Coherent (Data.family a b q) ∧
    IndexedFamilyCertificates.CoversKeys (Data.family a b q) Checks.keys ∧
    IndexedFamilyCertificates.DifferentialAt (Data.family a b q)
      ⟨"S0",4,11,137⟩ [false,true] [true,false] ∧
    (∀ x : (S.element 4 sourceDegree).carrier,
      PageBoundary S 4 sourceDegree x ↔
        InImage (matrixOf 2 (Semantics.incomingDimension a) (Data.event a b q).incoming)
          (E.source.equivalence x)) ∧
    S.differential 4 sourceDegree source.value = target.value ∧
      target.value ≠ 0 ∧ PageBoundary S 4 targetDegree target.value := by
  have window := Checks.complete_window a b q
  refine ⟨window.1,window.2,Checks.event3151 a b q,?_,?_⟩
  · intro x
    rw [← incoming]
    exact full_boundary_iff S a I.page4 E x
  apply actual_event S pages a I E _ rawSource rawTarget source target sourceCoordinate targetCoordinate
  rw [outgoing,Semantics.outgoing_matrix_exact]
  cases b <;> decide

#print axioms six_actual_branches
#print axioms kernel_boundary_cases
#print axioms actual_kernel_cycle
#print axioms actual_kernel_quotient
#print axioms actual_event
#print axioms checked_and_actual
end Row3151ActualTransport
