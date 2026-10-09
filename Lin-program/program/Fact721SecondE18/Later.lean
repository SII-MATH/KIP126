import Fact721SecondE18.Targets
namespace Fact721SecondE18
open ManualInputObligations ManualInputObligations.Reference Fact721ConstructedActual.Second
variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 3}
  {product : CertifiedAdamsProduct S}

structure Input {P : Prefix5 S pages initial} {I : Fact721SecondE6.Input P product}
    {old : Fact721SecondE6.LaterInput P I} (previous : Fact721SecondLater.Input old) where
  targets2 : Targets.Stage2 S pages
  targets3 : Targets.Stage3 targets2
  known4 : Targets.Known4 targets3


namespace Input
variable {P : Prefix5 S pages initial} {I : Fact721SecondE6.Input P product}
  {old : Fact721SecondE6.LaterInput P I} {previous : Fact721SecondLater.Input old} (L : Input previous)
include L

theorem cycle11 : S.differential 11 degree previous.endpoint11.value = S.zero 11 (AdamsTarget 11 degree) :=
  (L.known4.target11_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint12 : Endpoint S pages 12 degree (raw initial) :=
  ⟨(pages.nextPage 11 degree).toNext (Quotient.mk _ (⟨previous.endpoint11.value,L.cycle11⟩ : PageCycle S 11 degree)),
    .step previous.endpoint11.trace L.cycle11⟩

theorem nonzero12 : L.endpoint12.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 11 degree
    (⟨previous.endpoint11.value,L.cycle11⟩ : PageCycle S 11 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact previous.incoming.no_boundary L.targets3.zeros 11 (by decide) _
    previous.nonzero11 boundary

theorem same_input12 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 12 input L.endpoint12.value) ∧ L.endpoint12.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint12.trace⟩,L.nonzero12⟩

theorem cycle12 : S.differential 12 degree L.endpoint12.value = S.zero 12 (AdamsTarget 12 degree) :=
  (L.targets3.target12_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint13 : Endpoint S pages 13 degree (raw initial) :=
  ⟨(pages.nextPage 12 degree).toNext (Quotient.mk _ (⟨L.endpoint12.value,L.cycle12⟩ : PageCycle S 12 degree)),
    .step L.endpoint12.trace L.cycle12⟩

theorem nonzero13 : L.endpoint13.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 12 degree
    (⟨L.endpoint12.value,L.cycle12⟩ : PageCycle S 12 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact previous.incoming.no_boundary L.targets3.zeros 12 (by decide) _
    L.nonzero12 boundary

theorem same_input13 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 13 input L.endpoint13.value) ∧ L.endpoint13.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint13.trace⟩,L.nonzero13⟩

theorem cycle13 : S.differential 13 degree L.endpoint13.value = S.zero 13 (AdamsTarget 13 degree) :=
  (L.targets3.target13_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint14 : Endpoint S pages 14 degree (raw initial) :=
  ⟨(pages.nextPage 13 degree).toNext (Quotient.mk _ (⟨L.endpoint13.value,L.cycle13⟩ : PageCycle S 13 degree)),
    .step L.endpoint13.trace L.cycle13⟩

theorem nonzero14 : L.endpoint14.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 13 degree
    (⟨L.endpoint13.value,L.cycle13⟩ : PageCycle S 13 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact previous.incoming.no_boundary L.targets3.zeros 13 (by decide) _
    L.nonzero13 boundary

theorem same_input14 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 14 input L.endpoint14.value) ∧ L.endpoint14.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint14.trace⟩,L.nonzero14⟩

theorem cycle14 : S.differential 14 degree L.endpoint14.value = S.zero 14 (AdamsTarget 14 degree) :=
  (L.targets3.target14_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint15 : Endpoint S pages 15 degree (raw initial) :=
  ⟨(pages.nextPage 14 degree).toNext (Quotient.mk _ (⟨L.endpoint14.value,L.cycle14⟩ : PageCycle S 14 degree)),
    .step L.endpoint14.trace L.cycle14⟩

theorem nonzero15 : L.endpoint15.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 14 degree
    (⟨L.endpoint14.value,L.cycle14⟩ : PageCycle S 14 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact previous.incoming.no_boundary L.targets3.zeros 14 (by decide) _
    L.nonzero14 boundary

theorem same_input15 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 15 input L.endpoint15.value) ∧ L.endpoint15.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint15.trace⟩,L.nonzero15⟩

theorem cycle15 : S.differential 15 degree L.endpoint15.value = S.zero 15 (AdamsTarget 15 degree) :=
  (L.targets3.target15_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint16 : Endpoint S pages 16 degree (raw initial) :=
  ⟨(pages.nextPage 15 degree).toNext (Quotient.mk _ (⟨L.endpoint15.value,L.cycle15⟩ : PageCycle S 15 degree)),
    .step L.endpoint15.trace L.cycle15⟩

theorem nonzero16 : L.endpoint16.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 15 degree
    (⟨L.endpoint15.value,L.cycle15⟩ : PageCycle S 15 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact previous.incoming.no_boundary L.targets3.zeros 15 (by decide) _
    L.nonzero15 boundary

theorem same_input16 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 16 input L.endpoint16.value) ∧ L.endpoint16.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint16.trace⟩,L.nonzero16⟩

theorem cycle16 : S.differential 16 degree L.endpoint16.value = S.zero 16 (AdamsTarget 16 degree) :=
  (L.targets3.target16_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint17 : Endpoint S pages 17 degree (raw initial) :=
  ⟨(pages.nextPage 16 degree).toNext (Quotient.mk _ (⟨L.endpoint16.value,L.cycle16⟩ : PageCycle S 16 degree)),
    .step L.endpoint16.trace L.cycle16⟩

theorem nonzero17 : L.endpoint17.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 16 degree
    (⟨L.endpoint16.value,L.cycle16⟩ : PageCycle S 16 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact previous.incoming.no_boundary L.targets3.zeros 16 (by decide) _
    L.nonzero16 boundary

theorem same_input17 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 17 input L.endpoint17.value) ∧ L.endpoint17.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint17.trace⟩,L.nonzero17⟩

theorem cycle17 : S.differential 17 degree L.endpoint17.value = S.zero 17 (AdamsTarget 17 degree) :=
  (L.known4.target17_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint18 : Endpoint S pages 18 degree (raw initial) :=
  ⟨(pages.nextPage 17 degree).toNext (Quotient.mk _ (⟨L.endpoint17.value,L.cycle17⟩ : PageCycle S 17 degree)),
    .step L.endpoint17.trace L.cycle17⟩

theorem nonzero18 : L.endpoint18.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages L.targets3.zeros 17 degree
    (⟨L.endpoint17.value,L.cycle17⟩ : PageCycle S 17 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact previous.incoming.no_boundary L.targets3.zeros 17 (by decide) _
    L.nonzero17 boundary

theorem same_input18 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Nonempty (Trace S pages degree 18 input L.endpoint18.value) ∧ L.endpoint18.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨L.endpoint18.trace⟩,L.nonzero18⟩

#print axioms cycle11
#print axioms nonzero12
#print axioms same_input12
#print axioms cycle12
#print axioms nonzero13
#print axioms same_input13
#print axioms cycle13
#print axioms nonzero14
#print axioms same_input14
#print axioms cycle14
#print axioms nonzero15
#print axioms same_input15
#print axioms cycle15
#print axioms nonzero16
#print axioms same_input16
#print axioms cycle16
#print axioms nonzero17
#print axioms same_input17
#print axioms cycle17
#print axioms nonzero18
#print axioms same_input18
end Input
end Fact721SecondE18
