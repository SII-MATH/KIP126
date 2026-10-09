import Row2684D5Search.Data
import ActualAdamsHomologyCoordinates.Basic
import Row3143D0Leibniz.Descent

namespace Row2684D5Search
open ManualInputObligations ManualInputObligations.Reference LinearCertificates
open PageTransitionCertificates Row3151ActualTransport ActualAdamsHomologyCoordinates

abbrev factorDegree : Bidegree := ⟨6,67⟩
abbrev sourceDegree : Bidegree := ⟨12,134⟩
abbrev emptyDegree : Bidegree := ⟨10,70⟩

structure Step (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (degree : Bidegree) (wire : WireComparison)
    (current : Coordinates S r degree wire.m) where
  meaning : Meaning S r degree wire current
  zeroMeaning : Meaning.LocalZeroMeaning pages r degree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {r : Nat} {d : Bidegree} {w : WireComparison} {c : Coordinates S r d w.m}

noncomputable def Step.next (T : Step S pages r d w c) (valid : w.Valid) :=
  T.meaning.nextCoordinates pages valid T.zeroMeaning

theorem Step.cycle (T : Step S pages r d w c) (x : (S.element r d).carrier)
    (finite : eval (matrixOf w.k w.m w.outgoing) (c.equivalence x) = zero) :
    S.differential r d x = S.zero r (AdamsTarget r d) := (T.meaning.cycle_iff x).mpr finite

noncomputable def Step.endpoint (T : Step S pages r d w c)
    {raw : (S.element 2 d).carrier} (prior : Endpoint S pages r d raw)
    (finite : eval (matrixOf w.k w.m w.outgoing) (c.equivalence prior.value) = zero) :
    Endpoint S pages (r+1) d raw :=
  ⟨(pages.nextPage r d).toNext
    (Quotient.mk _ (⟨prior.value,T.cycle prior.value finite⟩ : PageCycle S r d)),
    .step prior.trace (T.cycle prior.value finite)⟩

theorem Step.coordinate (T : Step S pages r d w c) (valid : w.Valid)
    {raw : (S.element 2 d).carrier} (prior : Endpoint S pages r d raw)
    (finite : eval (matrixOf w.k w.m w.outgoing) (c.equivalence prior.value) = zero) :
    (T.next valid).equivalence (T.endpoint prior finite).value =
      eval w.comparison.projection (c.equivalence prior.value) :=
  T.meaning.nextCoordinates_quotient pages valid T.zeroMeaning _

structure SourcePrefix (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Coordinates S 2 sourceDegree 3
  step2 : Step S pages 2 sourceDegree Data.source2 initial
  step3 : Step S pages 3 sourceDegree Data.source3 (step2.next Data.source2_valid)
  step4 : Step S pages 4 sourceDegree Data.source4 (step3.next Data.source3_valid)

noncomputable def SourcePrefix.raw (C : SourcePrefix S pages) :=
  C.initial.equivalence.symm Data.sourceVector
noncomputable def SourcePrefix.endpoint2 (C : SourcePrefix S pages) :
    Endpoint S pages 2 sourceDegree C.raw := ⟨C.raw,.start _⟩
theorem SourcePrefix.coordinate2 (C : SourcePrefix S pages) :
    C.initial.equivalence C.endpoint2.value = Data.sourceVector := C.initial.equivalence.apply_symm_apply _
noncomputable def SourcePrefix.endpoint3 (C : SourcePrefix S pages) :=
  C.step2.endpoint C.endpoint2 (by erw [C.coordinate2]; exact Data.source_path.1)
theorem SourcePrefix.coordinate3 (C : SourcePrefix S pages) :
    (C.step2.next Data.source2_valid).equivalence C.endpoint3.value = Data.middleVector :=
  (C.step2.coordinate Data.source2_valid _ _).trans
    ((congrArg (eval Data.source2.comparison.projection) C.coordinate2).trans Data.source_path.2.1)
noncomputable def SourcePrefix.endpoint4 (C : SourcePrefix S pages) :=
  C.step3.endpoint C.endpoint3 (by erw [C.coordinate3]; exact Data.source_path.2.2.2.1)
theorem SourcePrefix.coordinate4 (C : SourcePrefix S pages) :
    (C.step3.next Data.source3_valid).equivalence C.endpoint4.value = Data.finalVector :=
  (C.step3.coordinate Data.source3_valid _ _).trans
    ((congrArg (eval Data.source3.comparison.projection) C.coordinate3).trans Data.source_path.2.2.2.2.1)
noncomputable def SourcePrefix.endpoint5 (C : SourcePrefix S pages) :=
  C.step4.endpoint C.endpoint4 (by erw [C.coordinate4]; exact Data.source_path.2.2.2.2.2.1)
theorem SourcePrefix.coordinate5 (C : SourcePrefix S pages) :
    (C.step4.next Data.source4_valid).equivalence C.endpoint5.value = Data.finalVector :=
  (C.step4.coordinate Data.source4_valid _ _).trans
    ((congrArg (eval Data.source4.comparison.projection) C.coordinate4).trans Data.source_path.2.2.2.2.2.2)

/-- The factor's unknown incoming d4 is unnecessary: only its outgoing target
is empty. Its E5 element is constructed as a quotient without a chosen chart. -/
structure FactorPrefix (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Coordinates S 2 factorDegree 2
  step2 : Step S pages 2 factorDegree Data.factor2 initial
  step3 : Step S pages 3 factorDegree Data.factor3 (step2.next Data.factor2_valid)
  emptyInitial : Coordinates S 2 emptyDegree 1
  emptyStep2 : Step S pages 2 emptyDegree Data.emptyTarget2 emptyInitial
  emptyZero3 : Meaning.LocalZeroMeaning pages 3 emptyDegree

noncomputable def FactorPrefix.raw (C : FactorPrefix S pages) :=
  C.initial.equivalence.symm Data.factorVector
noncomputable def FactorPrefix.endpoint2 (C : FactorPrefix S pages) :
    Endpoint S pages 2 factorDegree C.raw := ⟨C.raw,.start _⟩
theorem FactorPrefix.coordinate2 (C : FactorPrefix S pages) :
    C.initial.equivalence C.endpoint2.value = Data.factorVector := C.initial.equivalence.apply_symm_apply _
noncomputable def FactorPrefix.endpoint3 (C : FactorPrefix S pages) :=
  C.step2.endpoint C.endpoint2 (by erw [C.coordinate2]; exact Data.factor_path.1)
theorem FactorPrefix.coordinate3 (C : FactorPrefix S pages) :
    (C.step2.next Data.factor2_valid).equivalence C.endpoint3.value = Data.finalVector :=
  (C.step2.coordinate Data.factor2_valid _ _).trans
    ((congrArg (eval Data.factor2.comparison.projection) C.coordinate2).trans Data.factor_path.2)
theorem FactorPrefix.cycle3 (C : FactorPrefix S pages) (x : (S.element 3 factorDegree).carrier) :
    S.differential 3 factorDegree x = S.zero 3 (AdamsTarget 3 factorDegree) :=
  C.step3.cycle x (by funext i; exact Fin.elim0 i)
noncomputable def FactorPrefix.endpoint4 (C : FactorPrefix S pages) :=
  C.step3.endpoint C.endpoint3 (by funext i; exact Fin.elim0 i)
theorem FactorPrefix.empty3 (C : FactorPrefix S pages) (x : (S.element 3 emptyDegree).carrier) : x = 0 := by
  apply (C.emptyStep2.next Data.emptyTarget2_valid).equivalence.injective
  funext i
  exact Fin.elim0 i
theorem FactorPrefix.empty4 (C : FactorPrefix S pages) (x : (S.element 4 emptyDegree).carrier) : x = 0 :=
  Row3143D0Leibniz.Descent.next_zero S pages emptyDegree C.emptyZero3 C.empty3 x
theorem FactorPrefix.cycle4 (C : FactorPrefix S pages) (x : (S.element 4 factorDegree).carrier) :
    S.differential 4 factorDegree x = S.zero 4 (AdamsTarget 4 factorDegree) :=
  (C.empty4 (S.differential 4 factorDegree x)).trans (S.zero_is_zero _ _).symm
noncomputable def FactorPrefix.endpoint5 (C : FactorPrefix S pages) :
    Endpoint S pages 5 factorDegree C.raw :=
  ⟨(pages.nextPage 4 factorDegree).toNext
    (Quotient.mk _ (⟨C.endpoint4.value,C.cycle4 C.endpoint4.value⟩ : PageCycle S 4 factorDegree)),
    .step C.endpoint4.trace (C.cycle4 C.endpoint4.value)⟩

#print axioms Step.cycle
#print axioms Step.coordinate
#print axioms SourcePrefix.coordinate3
#print axioms SourcePrefix.coordinate4
#print axioms SourcePrefix.coordinate5
#print axioms FactorPrefix.coordinate3
#print axioms FactorPrefix.empty3
#print axioms FactorPrefix.empty4
#print axioms FactorPrefix.cycle4
#print axioms FactorPrefix.endpoint5
end Row2684D5Search
