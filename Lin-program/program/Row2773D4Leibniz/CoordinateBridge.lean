import Row2773D4Leibniz.Actual
import Fact713Row2773Refinement.Data
import Fact713ComparisonBatches.Batch06
import HomologyCoordinateChoice.Basic

namespace Row2773D4Leibniz.CoordinateBridge
open LinearCertificates PageTransitionCertificates Fact713ComparisonBatches
open ManualInputObligations.Reference Row3151ActualTransport

def staircase2 : WireComparison := (batch06[30]).wire
abbrev staircase3 := Fact713Row2773Refinement.Data.b_S0_13_135_d3
theorem staircase2_valid : staircase2.Valid :=
  (batch06_valid _ (List.getElem_mem (show 30 < batch06.length from by decide))).2
theorem staircase3_valid : staircase3.Valid := Fact713Row2773Refinement.Data.b_S0_13_135_d3_valid
theorem source_key : (batch06[30]).key = ⟨"S0",2,13,135⟩ := by decide
theorem same_complex : staircase2.outgoing = Row2773Leibniz.Data.source.outgoing ∧
    staircase2.incoming = Row2773Leibniz.Data.source.incoming := by decide

def sourceEquivalence : Vec 2 ≃ Vec 2 := HomologyCoordinateChoice.equivalence
  (matrixOf Row2773Leibniz.Data.source.k Row2773Leibniz.Data.source.m Row2773Leibniz.Data.source.outgoing)
  (matrixOf Row2773Leibniz.Data.source.m Row2773Leibniz.Data.source.n Row2773Leibniz.Data.source.incoming)
  Row2773Leibniz.Data.source.comparison staircase2.comparison
  Row2773Leibniz.Data.source_valid.2 staircase2_valid.2
def staircase2Coordinates := homologyEquivalence _ _ staircase2.comparison staircase2_valid.2
theorem source_all_coordinates (x : Row2773Leibniz.Q Row2773Leibniz.Data.source) :
    sourceEquivalence (Row2773Leibniz.sourceCoordinates.toCoordinates x) =
      staircase2Coordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem source_swap (v : Vec 2) : sourceEquivalence v = fun i => v (1-i) := by
  exact (show ∀ v : Vec 2, sourceEquivalence v = fun i => v (1-i) from by decide) v
theorem named_staircase3 : staircase2Coordinates.toCoordinates Row2773Leibniz.namedSource =
    (fun i : Fin 2 => i.val == 0) := by
  rw [← source_all_coordinates, Row2773Leibniz.named_source_coordinates, source_swap]
  funext i
  exact (show ∀ i : Fin 2, ((1-i).val == 1) = (i.val == 0) from by decide) i
theorem finite_next_name : eval staircase3.comparison.projection
    (fun i : Fin 2 => i.val == 0) = (fun _ : Fin 1 => true) := by decide

/-- Complete current-page meaning constructs the next coordinate equivalence.
Only the E3 naming is supplied; E4 naming is obtained by quotient projection. -/
theorem actual_next_name (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (old : Row2773Leibniz.Actual.Meaning S P)
    (current : Coordinates S 3 Actual.sourceDegree 2)
    (M : ActualAdamsHomologyCoordinates.Meaning S 3 Actual.sourceDegree staircase3 current)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 3 Actual.sourceDegree)
    (binding : ∀ x, current.equivalence x = staircase2Coordinates.toCoordinates (old.source x))
    (x : PageCycle S 3 Actual.sourceDegree) (named : old.source x.val = Row2773Leibniz.namedSource) :
    (M.nextCoordinates pages staircase3_valid zeroMeaning).equivalence
      ((pages.nextPage 3 Actual.sourceDegree).toNext (Quotient.mk _ x)) =
      (fun _ : Fin 1 => true) := by
  have formula := M.nextCoordinates_quotient pages staircase3_valid zeroMeaning x
  have currentName := (binding x.val).trans
    ((congrArg staircase2Coordinates.toCoordinates named).trans named_staircase3)
  exact formula.trans ((congrArg (eval staircase3.comparison.projection) currentName).trans finite_next_name)

theorem actual_next_unique (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (old : Row2773Leibniz.Actual.Meaning S P)
    (current : Coordinates S 3 Actual.sourceDegree 2)
    (M : ActualAdamsHomologyCoordinates.Meaning S 3 Actual.sourceDegree staircase3 current)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 3 Actual.sourceDegree)
    (binding : ∀ x, current.equivalence x = staircase2Coordinates.toCoordinates (old.source x))
    (x : PageCycle S 3 Actual.sourceDegree) (named : old.source x.val = Row2773Leibniz.namedSource)
    (y : (S.element 4 Actual.sourceDegree).carrier)
    (nextName : (M.nextCoordinates pages staircase3_valid zeroMeaning).equivalence y =
      fun _ : Fin 1 => true) :
    y = (pages.nextPage 3 Actual.sourceDegree).toNext (Quotient.mk _ x) := by
  apply (M.nextCoordinates pages staircase3_valid zeroMeaning).equivalence.injective
  exact nextName.trans (actual_next_name S pages P old current M zeroMeaning binding x named).symm

#print axioms source_all_coordinates
#print axioms source_swap
#print axioms named_staircase3
#print axioms actual_next_name
#print axioms actual_next_unique
end Row2773D4Leibniz.CoordinateBridge
