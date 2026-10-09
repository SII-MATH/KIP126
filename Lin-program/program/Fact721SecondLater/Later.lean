import Fact721SecondLater.Incoming
namespace Fact721SecondLater
open ManualInputObligations ManualInputObligations.Reference Fact721ConstructedActual.Second
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
  {product : CertifiedAdamsProduct S}

structure Input {P : Prefix5 S pages initial} {I : Fact721SecondE6.Input P product}
    (previous : Fact721SecondE6.LaterInput P I) where
  targets2 : Targets.Stage2 S pages
  targets3 : Targets.Stage3 targets2
  known4 : Targets.Known4 targets3
  incoming : Incoming S

namespace Input
variable {P : Prefix5 S pages initial} {I : Fact721SecondE6.Input P product}
  {previous : Fact721SecondE6.LaterInput P I} (L : Input previous)
include L

theorem cycle8 : S.differential 8 degree previous.endpoint8.value = S.zero 8 (AdamsTarget 8 degree) :=
  (L.known4.target8_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint9 : Endpoint S pages 9 degree (raw initial) :=
  ⟨(pages.nextPage 8 degree).toNext (Quotient.mk _ (⟨previous.endpoint8.value,L.cycle8⟩ : PageCycle S 8 degree)),
    .step previous.endpoint8.trace L.cycle8⟩

theorem nonzero9 : L.endpoint9.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 8 degree
    (⟨previous.endpoint8.value,L.cycle8⟩ : PageCycle S 8 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact L.incoming.no_boundary L.targets3.zeros 8 (by decide) _
    previous.nonzero8 boundary

theorem same_input9 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 9 input L.endpoint9.value) ∧ L.endpoint9.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint9.trace⟩,L.nonzero9⟩

theorem cycle9 : S.differential 9 degree L.endpoint9.value = S.zero 9 (AdamsTarget 9 degree) :=
  (L.targets3.target9_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint10 : Endpoint S pages 10 degree (raw initial) :=
  ⟨(pages.nextPage 9 degree).toNext (Quotient.mk _ (⟨L.endpoint9.value,L.cycle9⟩ : PageCycle S 9 degree)),
    .step L.endpoint9.trace L.cycle9⟩

theorem nonzero10 : L.endpoint10.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 9 degree
    (⟨L.endpoint9.value,L.cycle9⟩ : PageCycle S 9 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact L.incoming.no_boundary L.targets3.zeros 9 (by decide) _
    L.nonzero9 boundary

theorem same_input10 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 10 input L.endpoint10.value) ∧ L.endpoint10.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint10.trace⟩,L.nonzero10⟩

theorem cycle10 : S.differential 10 degree L.endpoint10.value = S.zero 10 (AdamsTarget 10 degree) :=
  (L.targets3.target10_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint11 : Endpoint S pages 11 degree (raw initial) :=
  ⟨(pages.nextPage 10 degree).toNext (Quotient.mk _ (⟨L.endpoint10.value,L.cycle10⟩ : PageCycle S 10 degree)),
    .step L.endpoint10.trace L.cycle10⟩

theorem nonzero11 : L.endpoint11.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 10 degree
    (⟨L.endpoint10.value,L.cycle10⟩ : PageCycle S 10 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact L.incoming.no_boundary L.targets3.zeros 10 (by decide) _
    L.nonzero10 boundary

theorem same_input11 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 11 input L.endpoint11.value) ∧ L.endpoint11.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint11.trace⟩,L.nonzero11⟩

#print axioms cycle8
#print axioms nonzero9
#print axioms same_input9
#print axioms cycle9
#print axioms nonzero10
#print axioms same_input10
#print axioms cycle10
#print axioms nonzero11
#print axioms same_input11
end Input
end Fact721SecondLater
