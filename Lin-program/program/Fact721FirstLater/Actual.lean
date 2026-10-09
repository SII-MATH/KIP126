import Fact721FirstLater.Incoming
import Row2907PDeltaDetection.Branches

namespace Fact721FirstLater
open ManualInputObligations ManualInputObligations.Reference
open Fact721ConstructedActual.First

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {initial : Fact721ConstructedActual.AdditiveCoordinates degree S 2 2}
  {product : CertifiedAdamsProduct S}

/-- The named main class keeps its old E5 endpoint. The separate product
detector proves its entire d5 target zero, independently of coordinate names. -/
structure Input (previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial)
    (product : CertifiedAdamsProduct S) where
  witness : Row2907PDeltaDetection.Branches.Witness S pages product
  incoming : Incoming S
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages

namespace Input
variable {previous : Fact721FirstD4Search.Constructed.Prefix5 S pages initial}
  (I : Input previous product)
include I

theorem d5target_zero (x : (S.element 5 (⟨16,137⟩ : Bidegree)).carrier) : x = 0 := by
  obtain ⟨cycle,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 4 ⟨16,137⟩ x
  have cases : ∀ v : LinearCertificates.Vec 1,
      v = LinearCertificates.zero ∨ v = (fun _ => true) := by decide
  have hz : cycle.val = 0 := by
    rcases cases (I.witness.data.source4.equivalence cycle.val) with zero | named
    · exact I.witness.data.source4.equivalence.injective
        (zero.trans I.witness.data.source4.zero_value.symm)
    · have same : cycle.val = I.witness.next := I.witness.data.source4.equivalence.injective
        (named.trans I.witness.next_name.symm)
      exact False.elim (I.witness.d4_nonzero (same ▸ (cycle.property.trans (S.zero_is_zero _ _))))
  have same : cycle = ActualAdamsSystemBridge.zeroCycle S 4 ⟨16,137⟩ := Subtype.ext hz
  exact (congrArg (fun z : PageCycle S 4 ⟨16,137⟩ =>
    (pages.nextPage 4 ⟨16,137⟩).toNext (Quotient.mk _ z)) same).trans
      ((I.zeros 4 ⟨16,137⟩).trans (S.zero_is_zero _ _))

theorem whole_d5_zero (x : (S.element 5 degree).carrier) : S.differential 5 degree x = 0 :=
  I.d5target_zero _

theorem cycle5 : S.differential 5 degree previous.endpoint.value = S.zero 5 (AdamsTarget 5 degree) :=
  (I.whole_d5_zero _).trans (S.zero_is_zero _ _).symm

noncomputable def endpoint6 : Endpoint S pages 6 degree (raw initial) :=
  ⟨(pages.nextPage 5 degree).toNext (Quotient.mk _ (⟨previous.endpoint.value,I.cycle5⟩ : PageCycle S 5 degree)),
    .step previous.endpoint.trace I.cycle5⟩

theorem nonzero6 : I.endpoint6.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S pages I.zeros 5 degree
    (⟨previous.endpoint.value,I.cycle5⟩ : PageCycle S 5 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  exact I.incoming.no_boundary I.zeros 5 (by decide) _ previous.nonzero boundary

theorem same_input6 (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.First.target) :
    Nonempty (Trace S pages degree 6 input I.endpoint6.value) ∧ I.endpoint6.value ≠ 0 := by
  have same : input = raw initial := initial.coordinates.equivalence.injective (binding.trans raw_binding.symm)
  subst input
  exact ⟨⟨I.endpoint6.trace⟩,I.nonzero6⟩

#print axioms d5target_zero
#print axioms whole_d5_zero
#print axioms cycle5
#print axioms nonzero6
#print axioms same_input6
end Input
end Fact721FirstLater
