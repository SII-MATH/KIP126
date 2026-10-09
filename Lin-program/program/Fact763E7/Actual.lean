import Fact763E7.Data

namespace Fact763E7
open LinearCertificates ManualInputObligations ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open ActualAdamsSystemBridge

abbrev degree : Bidegree := ⟨10,134⟩
abbrev targetDegree : Bidegree := ⟨16,139⟩
abbrev sourceDegree : Bidegree := ⟨13,137⟩

structure Stage2 (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  source : Coordinates S 2 sourceDegree 4
  target : Coordinates S 2 targetDegree 3
  sourceMeaning : Meaning S 2 sourceDegree Data.source2 source
  targetMeaning : Meaning S 2 targetDegree Data.target2 target
  sourceZero : LocalZeroMeaning pages 2 sourceDegree
  targetZero : LocalZeroMeaning pages 2 targetDegree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Stage2.source3 (A : Stage2 S pages) : Coordinates S 3 sourceDegree 3 :=
  A.sourceMeaning.nextCoordinates pages Data.source2_valid A.sourceZero
noncomputable def Stage2.target3 (A : Stage2 S pages) : Coordinates S 3 targetDegree 1 :=
  A.targetMeaning.nextCoordinates pages Data.target2_valid A.targetZero
noncomputable def Stage2.raw (A : Stage2 S pages) := A.source.equivalence.symm Data.namedSource2
noncomputable def Stage2.cycle (A : Stage2 S pages) : PageCycle S 2 sourceDegree :=
  ⟨A.raw,(A.sourceMeaning.cycle_iff _).mpr (by
    change eval _ (A.source.equivalence (A.source.equivalence.symm Data.namedSource2)) = zero
    rw [Equiv.apply_symm_apply]
    exact Data.source_cycle)⟩
noncomputable def Stage2.value3 (A : Stage2 S pages) :=
  (pages.nextPage 2 sourceDegree).toNext (Quotient.mk _ A.cycle)
theorem Stage2.name3 (A : Stage2 S pages) : A.source3.equivalence A.value3 = Data.namedSource3 := by
  unfold Stage2.value3
  erw [Meaning.nextCoordinates_quotient]
  change eval _ (A.source.equivalence (A.source.equivalence.symm Data.namedSource2)) = _
  rw [Equiv.apply_symm_apply]
  exact Data.source_projection

/-- The stored nonzero row2917 differential, on the constructed E2 input.
Other source columns need not be set to zero for surjectivity onto dimension1. -/
structure TargetInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  stage2 : Stage2 S pages
  recorded : stage2.target3.equivalence (S.differential 3 sourceDegree stage2.value3) =
    (fun _ => true)
  zeros : ZeroMeaning S pages

theorem TargetInput.every_boundary (T : TargetInput S pages)
    (x : (S.element 3 targetDegree).carrier) : PageBoundary S 3 targetDegree x := by
  have casesV : ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) := by decide
  rcases casesV (T.stage2.target3.equivalence x) with hz | hn
  · have same : x = 0 := T.stage2.target3.equivalence.injective
      (hz.trans T.stage2.target3.zero_value.symm)
    subst x
    exact Or.inl rfl
  · have same : x = S.differential 3 sourceDegree T.stage2.value3 :=
      T.stage2.target3.equivalence.injective (hn.trans T.recorded.symm)
    exact Or.inr ⟨sourceDegree,T.stage2.value3,rfl,by rw [same]⟩

theorem TargetInput.empty4 (T : TargetInput S pages)
    (x : (S.element 4 targetDegree).carrier) : x = 0 := by
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 3 targetDegree x
  exact ((quotient_zero_iff S pages T.zeros 3 targetDegree q).mpr
    (T.every_boundary q.val)).trans (S.zero_is_zero _ _)

theorem TargetInput.empty6 (T : TargetInput S pages)
    (x : (S.element 6 targetDegree).carrier) : x = 0 :=
  Fact715IncomingTail.empty_later S pages T.zeros targetDegree 4 T.empty4 6 (by decide) x

variable {product : CertifiedAdamsProduct S}

structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (product : CertifiedAdamsProduct S) where
  previous : Fact763Continuation.Actual.Input S pages product
  target : TargetInput S pages
  incoming : Fact763NoHit.EmptySources S

theorem Input.cycle6 (I : Input S pages product) :
    S.differential 6 degree I.previous.calculation.value6 = S.zero 6 (AdamsTarget 6 degree) :=
  (I.target.empty6 _).trans (S.zero_is_zero _ _).symm

noncomputable def Input.value7 (I : Input S pages product) :=
  (pages.nextPage 6 degree).toNext (Quotient.mk _
    (⟨I.previous.calculation.value6,I.cycle6⟩ : PageCycle S 6 degree))

theorem Input.nonzero7 (I : Input S pages product) : I.value7 ≠ 0 := by
  intro hz
  have boundary := (quotient_zero_iff S pages I.target.zeros 6 degree
    (⟨I.previous.calculation.value6,I.cycle6⟩ : PageCycle S 6 degree)).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image S 6 degree _).mpr boundary
  exact Fact763Continuation.Actual.nonzero6 I.previous
    (hy.symm.trans (I.incoming.zero I.target.zeros 6 (by decide) y))

theorem Input.same_input (I : Input S pages product) (input : (S.element 2 degree).carrier)
    (binding : I.previous.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    Nonempty (Trace S pages degree 7 input I.value7) ∧ I.value7 ≠ 0 := by
  obtain ⟨⟨trace⟩,_⟩ := Fact763Continuation.Actual.same_input_E6 I.previous input binding
  exact ⟨⟨.step trace I.cycle6⟩,I.nonzero7⟩

#print axioms Stage2.name3
#print axioms TargetInput.every_boundary
#print axioms TargetInput.empty4
#print axioms TargetInput.empty6
#print axioms Input.cycle6
#print axioms Input.nonzero7
#print axioms Input.same_input
end Fact763E7
