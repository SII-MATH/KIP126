import Fact763PageCertificates.Survivor
import Row2693D5Search.Actual
import HomologyCoordinateChoice.Basic
import Row2773D4Leibniz.Descent

namespace Fact763Continuation.Bridge
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning

abbrev degree : Bidegree := ⟨10,134⟩

theorem same_complex :
    Row2693D5Search.Data.product2.outgoing = Fact763PageCertificates.wire.outgoing ∧
    Row2693D5Search.Data.product2.incoming = Fact763PageCertificates.wire.incoming := by decide
theorem same_raw : Row2693D5Search.Finite.product2Name = Fact763PageCertificates.target := by decide

/-- The old contraction and the staircase contraction have the same complete
complex, but different chosen quotient bases. Both retain the original E2 chart. -/
def oldMeaning {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {P : CertifiedAdamsProduct S} (I : Row2693D5Search.Actual.Input S pages P) :
    Meaning S 2 degree Fact763PageCertificates.wire I.stage2.product where
  current_add := I.stage2.productMeaning.current_add
  outgoingCoordinates := I.stage2.productMeaning.outgoingCoordinates
  outgoing_injective := I.stage2.productMeaning.outgoing_injective
  outgoing_zero := I.stage2.productMeaning.outgoing_zero
  outgoing := I.stage2.productMeaning.outgoing
  incomingCoordinates := I.stage2.productMeaning.incomingCoordinates
  incoming_surjective := I.stage2.productMeaning.incoming_surjective
  incoming := I.stage2.productMeaning.incoming

noncomputable def oldPage3 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {P : CertifiedAdamsProduct S} (I : Row2693D5Search.Actual.Input S pages P) :
    Coordinates S 3 degree 4 :=
  (oldMeaning I).nextCoordinates pages Fact763PageCertificates.comparison_valid I.stage2.productZero

def change3 : Vec 4 ≃ Vec 4 :=
  HomologyCoordinateChoice.equivalence
    Fact763PageCertificates.outgoing Fact763PageCertificates.incoming
    Fact763PageCertificates.wire.comparison Row2693D5Search.Data.product2.comparison
    Fact763PageCertificates.comparison_valid.2 Row2693D5Search.Data.product2_valid.2

theorem change3_formula : ∀ v : Vec 5,
    change3 (eval Fact763PageCertificates.wire.comparison.projection v) =
      eval Row2693D5Search.Data.product2.comparison.projection v := by decide

theorem actual_change3 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {P : CertifiedAdamsProduct S} (I : Row2693D5Search.Actual.Input S pages P)
    (x : (S.element 3 degree).carrier) :
    change3 ((oldPage3 I).equivalence x) = I.stage2.input.nextTarget.equivalence x := by
  obtain ⟨y,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 2 degree x
  have first := (oldMeaning I).nextCoordinates_quotient pages
    Fact763PageCertificates.comparison_valid I.stage2.productZero y
  have second := I.stage2.productMeaning.nextCoordinates_quotient pages
    Row2693D5Search.Data.product2_valid I.stage2.productZero y
  exact (congrArg change3 first).trans ((change3_formula _).trans second.symm)

theorem named_old_page3 {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {P : CertifiedAdamsProduct S} (I : Row2693D5Search.Actual.Input S pages P) :
    (oldPage3 I).equivalence I.value3 = Fact763PageCertificates.coordinates := by
  have h := (oldMeaning I).nextCoordinates_quotient pages
    Fact763PageCertificates.comparison_valid I.stage2.productZero I.productCycle2
  exact h.trans ((congrArg (eval Fact763PageCertificates.wire.comparison.projection)
    (I.stage2.product.equivalence.apply_symm_apply _)).trans (by decide))

#print axioms same_complex
#print axioms same_raw
#print axioms oldMeaning
#print axioms oldPage3
#print axioms change3
#print axioms change3_formula
#print axioms actual_change3
#print axioms named_old_page3
end Fact763Continuation.Bridge
