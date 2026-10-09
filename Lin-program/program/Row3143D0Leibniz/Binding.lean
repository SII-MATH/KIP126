import Row3143D0Leibniz.Actual
import Fact713ComparisonBatches.Batch07
import HomologyCoordinateChoice.Basic

namespace Row3143D0Leibniz.Binding
open LinearCertificates PageTransitionCertificates Data ManualInputObligations.Reference
open ActualAdamsProductTraceBridge

def sourceBasis : List (Nat × String) :=
  [(3141,"8,1,280,1"),(3142,"3,1,359,1"),(3143,"0,2,438,1"),(3144,"0,4,418,1")]
theorem source_basis_binding : sourceBasis[0] = (3141,"8,1,280,1") := rfl
def rightBasis : Nat × String := (2030,"280,1")
def d0Basis : Nat × String := (42,"8,1")

def knownD4Row : Nat × String × Option String × Nat := ⟨2149,"2",some "1",9996⟩
def knownD4Basis : Nat × String := (2150,"0,2,9,1,188,1")
def knownD4TargetBasis : Nat × String := (2277,"1,1,64,2")
theorem knownD4_nonempty : knownD4Row.2.2.1 = some "1" := rfl
theorem detector_raw_representative : eval rightTarget.comparison.projection
    (fun i => i.val == 2) = (fun _ : Fin 1 => true) := by decide
theorem detector_target_raw_representative : eval detectorTarget.comparison.projection
    (fun i => i.val == 1) = (fun _ : Fin 1 => true) := by decide

def staircaseSource := (Fact713ComparisonBatches.batch07[13]).wire
theorem staircaseSource_valid : staircaseSource.Valid :=
  (Fact713ComparisonBatches.batch07_valid _
    (List.getElem_mem (show 13 < Fact713ComparisonBatches.batch07.length from by decide))).2
theorem staircase_key : (Fact713ComparisonBatches.batch07[13]).key = ⟨"S0",2,17,140⟩ := by decide
def sourceEquivalence : Vec 1 ≃ Vec 1 := HomologyCoordinateChoice.equivalence
  (out source) (inc source) source.comparison staircaseSource.comparison
  source_valid.2 staircaseSource_valid.2
theorem source_identity (v : Vec 1) : sourceEquivalence v = v :=
  (show ∀ v : Vec 1, sourceEquivalence v = v from by decide) v

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

/-- The E4 representative is constructed from the specified E3 coordinate. -/
noncomputable def detectorCycle (D : Descent.Prefix S pages) :
    PageCycle S 3 Descent.detectorDegree :=
  ⟨D.current.coordinates.equivalence.symm (fun _ => true), by
    exact (Prop79TargetSearch.ZeroSpaces.outgoing_zero S 3 Descent.detectorDegree
      D.outgoing _).trans (S.zero_is_zero _ _).symm⟩
noncomputable def detectorTargetCycle (D : Descent.Prefix S pages) :
    PageCycle S 3 Descent.detectorTargetDegree :=
  ⟨D.target.coordinates.equivalence.symm (fun _ => true), by
    exact (Prop79TargetSearch.ZeroSpaces.outgoing_zero S 3 Descent.detectorTargetDegree
      D.targetOutgoing _).trans (S.zero_is_zero _ _).symm⟩

theorem detector_next_coordinate (D : Descent.Prefix S pages) :
    D.page4.coordinates.equivalence ((pages.nextPage 3 Descent.detectorDegree).toNext
      (Quotient.mk _ (detectorCycle D))) = (fun _ : Fin 1 => true) := by
  have h := (D.step.stepMeaning zeroStep_accepted).quotient
    (detectorCycle D).val (detectorCycle D).property
  change _ = eval zeroStep.comparison.projection
    (D.current.coordinates.equivalence (D.current.coordinates.equivalence.symm (fun _ => true))) at h
  rw [D.current.coordinates.equivalence.apply_symm_apply] at h
  exact h.trans (by decide)

theorem detector_target_next_coordinate (D : Descent.Prefix S pages) :
    D.targetPage4.coordinates.equivalence ((pages.nextPage 3 Descent.detectorTargetDegree).toNext
      (Quotient.mk _ (detectorTargetCycle D))) = (fun _ : Fin 1 => true) := by
  have h := (D.targetStep.stepMeaning zeroStep_accepted).quotient
    (detectorTargetCycle D).val (detectorTargetCycle D).property
  change _ = eval zeroStep.comparison.projection
    (D.target.coordinates.equivalence (D.target.coordinates.equivalence.symm (fun _ => true))) at h
  rw [D.target.coordinates.equivalence.apply_symm_apply] at h
  exact h.trans (by decide)

/-- An actual equation on the two named quotient representatives suffices
for the recorded nonzero column; a raw level alone does not suffice. -/
noncomputable def knownFromNamed (D : Descent.Prefix S pages)
    (recorded : S.differential 4 Descent.detectorDegree
      ((pages.nextPage 3 Descent.detectorDegree).toNext (Quotient.mk _ (detectorCycle D))) =
      (pages.nextPage 3 Descent.detectorTargetDegree).toNext (Quotient.mk _ (detectorTargetCycle D))) :
    Descent.KnownDifferential S pages where
  data := D
  recorded := by
    have same : D.page4.coordinates.equivalence.symm (fun _ => true) =
        (pages.nextPage 3 Descent.detectorDegree).toNext (Quotient.mk _ (detectorCycle D)) :=
      D.page4.coordinates.equivalence.injective
        ((D.page4.coordinates.equivalence.apply_symm_apply _).trans (detector_next_coordinate D).symm)
    exact (congrArg (fun x => D.targetPage4.coordinates.equivalence
      (S.differential 4 Descent.detectorDegree x)) same).trans
      ((congrArg D.targetPage4.coordinates.equivalence recorded).trans (detector_target_next_coordinate D))

#print axioms source_basis_binding
#print axioms detector_raw_representative
#print axioms detector_target_raw_representative
#print axioms source_identity
#print axioms detector_next_coordinate
#print axioms detector_target_next_coordinate
#print axioms knownFromNamed
end Row3143D0Leibniz.Binding
