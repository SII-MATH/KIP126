import Fact761ConstructedActual.Row2858

namespace Fact761ConstructedActual.Local
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

/-- The finite quotient class is the class of the very same actual E2
representative. This also handles the different valid target quotient bases. -/
theorem toFinite_quotient {S : AdamsSpectralSequence} (pages : CertifiedAdamsPages S)
    {r : Nat} {d : Bidegree} {w : WireComparison} {current : Coordinates S r d w.m}
    (M : Meaning S r d w current) (valid : w.Valid)
    (zeroMeaning : LocalZeroMeaning pages r d) (x : PageCycle S r d) :
    toFinite w valid (M.nextCoordinates pages valid zeroMeaning)
      ((pages.nextPage r d).toNext (Quotient.mk _ x)) =
    Quot.mk _ (⟨current.equivalence x.val, (M.cycle_iff _).mp x.property⟩ :
      PageTransitionCertificates.Cycle (matrixOf w.k w.m w.outgoing)) := by
  apply (finiteEquiv w valid).injective
  change finiteEquiv w valid ((finiteEquiv w valid).symm
    ((M.nextCoordinates pages valid zeroMeaning).equivalence _)) = _
  rw [(finiteEquiv w valid).apply_symm_apply, M.nextCoordinates_quotient]
  rfl

#print axioms toFinite_quotient
end Fact761ConstructedActual.Local

namespace Fact761ConstructedActual.Row2858.D2Input
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Local

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} (I : D2Input S pages)

theorem source_same_representative (x : PageCycle S 2 sourceDegree) :
    I.sourceEquiv ((pages.nextPage 2 sourceDegree).toNext (Quotient.mk _ x)) =
    Quot.mk _ (⟨I.source.coordinates.equivalence x.val,
      (I.sourceStep.whole.meaning.cycle_iff _).mp x.property⟩ :
        PageTransitionCertificates.Cycle PageProductCertificates.Row2858.initialOut) :=
  toFinite_quotient pages I.sourceStep.whole.meaning (checkWire_sound _ sourceAccepted)
    I.sourceStep.zeroMeaning x

theorem target_same_representative (x : PageCycle S 2 targetDegree) :
    I.targetEquiv ((pages.nextPage 2 targetDegree).toNext (Quotient.mk _ x)) =
    Quot.mk _ (⟨I.target.coordinates.equivalence x.val,
      (I.targetStep.whole.meaning.cycle_iff _).mp x.property⟩ :
        PageTransitionCertificates.Cycle PageProductCertificates.Row2858.sourceOut) :=
  toFinite_quotient pages I.targetStep.whole.meaning (checkWire_sound _ targetAccepted)
    I.targetStep.zeroMeaning x

#print axioms source_same_representative
#print axioms target_same_representative
end Fact761ConstructedActual.Row2858.D2Input
