import Row2684D5Search.Descent
import ActualAdamsProductTraceBridge.Basic

namespace Row2684D5Search.Actual
open ManualInputObligations ManualInputObligations.Reference LinearCertificates
open ActualAdamsProductTraceBridge ActualAdamsProductCycleBridge

structure Witness (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (product : CertifiedAdamsProduct S) where
  source : SourcePrefix S pages
  factor : FactorPrefix S pages
  product2 : ∀ a b, source.initial.equivalence
      (product.product.multiply 2 factorDegree factorDegree a b) =
    PageProductCertificates.product Data.tensor
      (factor.initial.equivalence a) (factor.initial.equivalence b)
  transition2 : Transition S pages product 2 factorDegree factorDegree
  transition3 : Transition S pages product 3 factorDegree factorDegree
  transition4 : Transition S pages product 4 factorDegree factorDegree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S}

theorem square_next (r : Nat) (transition : Transition S pages P r factorDegree factorDegree)
    (a : PageCycle S r factorDegree) (x : PageCycle S r sourceDegree)
    (named : x.val = P.product.multiply r factorDegree factorDegree a.val a.val) :
    (pages.nextPage r sourceDegree).toNext (Quotient.mk _ x) =
      P.product.multiply (r+1) factorDegree factorDegree
        ((pages.nextPage r factorDegree).toNext (Quotient.mk _ a))
        ((pages.nextPage r factorDegree).toNext (Quotient.mk _ a)) := by
  have same : x = multiplyCycle S P r factorDegree factorDegree a a := Subtype.ext named
  rw [same]
  exact transition.formula a a

theorem Witness.named3 (W : Witness S pages P) :
    W.source.endpoint3.value = P.product.multiply 3 factorDegree factorDegree
      W.factor.endpoint3.value W.factor.endpoint3.value := by
  let a : PageCycle S 2 factorDegree :=
    ⟨W.factor.endpoint2.value,W.factor.step2.cycle _ (by
      erw [W.factor.coordinate2]; exact Data.factor_path.1)⟩
  let square := multiplyCycle S P 2 factorDegree factorDegree a a
  have next := W.transition2.formula a a
  apply (W.source.step2.next Data.source2_valid).equivalence.injective
  erw [W.source.coordinate3, ← next]
  have coordinates := W.source.step2.meaning.nextCoordinates_quotient pages
    Data.source2_valid W.source.step2.zeroMeaning square
  erw [coordinates]
  change Data.middleVector = eval Data.source2.comparison.projection
    (W.source.initial.equivalence (P.product.multiply 2 factorDegree factorDegree
      W.factor.endpoint2.value W.factor.endpoint2.value))
  rw [W.product2,W.factor.coordinate2,Data.square_coordinates,Data.source_path.2.2.1]

theorem Witness.named4 (W : Witness S pages P) :
    W.source.endpoint4.value = P.product.multiply 4 factorDegree factorDegree
      W.factor.endpoint4.value W.factor.endpoint4.value :=
  square_next 3 W.transition3
    ⟨W.factor.endpoint3.value,W.factor.cycle3 _⟩
    ⟨W.source.endpoint3.value,W.source.step3.cycle _ (by
      erw [W.source.coordinate3]; exact Data.source_path.2.2.2.1)⟩ W.named3

theorem Witness.named5 (W : Witness S pages P) :
    W.source.endpoint5.value = P.product.multiply 5 factorDegree factorDegree
      W.factor.endpoint5.value W.factor.endpoint5.value :=
  square_next 4 W.transition4
    ⟨W.factor.endpoint4.value,W.factor.cycle4 _⟩
    ⟨W.source.endpoint4.value,W.source.step4.cycle _ (by
      erw [W.source.coordinate4]; exact Data.source_path.2.2.2.2.2.1)⟩ W.named4

theorem named_d5_zero (W : Witness S pages P) :
    S.differential 5 sourceDegree W.source.endpoint5.value = 0 := by
  rw [W.named5]
  exact square_cycle S P 5 factorDegree W.factor.endpoint5.value

/-- The complete source E5 chart has one dimension, with the same constructed
named element at coordinate one. This upgrades its zero value to the full map. -/
theorem whole_d5_zero (W : Witness S pages P) (x : (S.element 5 sourceDegree).carrier) :
    S.differential 5 sourceDegree x = 0 := by
  let c := W.source.step4.next Data.source4_valid
  have cases : ∀ v : Vec 1, v = zero ∨ v = Data.finalVector := by decide
  rcases cases (c.equivalence x) with hz | hn
  · have same : x = 0 := c.equivalence.injective (hz.trans c.zero_value.symm)
    rw [same]
    exact (S.differential 5 sourceDegree).map_zero'
  · have same : x = W.source.endpoint5.value := c.equivalence.injective
      (hn.trans W.source.coordinate5.symm)
    rw [same]
    exact named_d5_zero W

#print axioms square_next
#print axioms Witness.named3
#print axioms Witness.named4
#print axioms Witness.named5
#print axioms named_d5_zero
#print axioms whole_d5_zero
end Row2684D5Search.Actual
