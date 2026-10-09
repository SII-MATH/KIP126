import Fact713D4SourceSearch.Assembly
import Fact713NextSourceSearch.Overlay
import Fact713ComparisonBatches.Batch06
import Fact713ComparisonBatches.Batch07
import HomologyCoordinateChoice.Basic

namespace Fact713D4SourceSearch.CoordinateBridge
open LinearCertificates PageTransitionCertificates ResolutionCertificates Fact713ComparisonBatches
open ManualInputObligations.Reference Row3151ActualTransport Parameters Comparison

def staircaseSource2 : WireComparison := (batch06[24]).wire
def staircaseTarget2 : WireComparison := (batch07[6]).wire
abbrev staircaseSource3 := Fact713NextSourceSearch.Overlay.b_S0_12_134_d3
abbrev staircaseTarget3 := Fact713Row2773Refinement.Data.b_S0_16_137_d3
theorem staircaseSource2_valid : staircaseSource2.Valid :=
  (batch06_valid _ (List.getElem_mem (show 24 < batch06.length from by decide))).2
theorem staircaseTarget2_valid : staircaseTarget2.Valid :=
  (batch07_valid _ (List.getElem_mem (show 6 < batch07.length from by decide))).2
theorem staircaseSource3_valid : staircaseSource3.Valid :=
  Fact713NextSourceSearch.Overlay.b_S0_12_134_d3_valid
theorem staircaseTarget3_valid : staircaseTarget3.Valid :=
  Fact713Row2773Refinement.Data.b_S0_16_137_d3_valid
theorem keys : (batch06[24]).key = ⟨"S0",2,12,134⟩ ∧
    (batch07[6]).key = ⟨"S0",2,16,137⟩ := by decide

def sourceE3 : Vec 2 ≃ Vec 2 := HomologyCoordinateChoice.equivalence
  (matrixOf sS.k sS.m sS.outgoing) (matrixOf sS.m sS.n sS.incoming)
  sS.comparison staircaseSource2.comparison sS_valid.2 staircaseSource2_valid.2
def targetE3 : Vec 2 ≃ Vec 2 := HomologyCoordinateChoice.equivalence
  (matrixOf tS.k tS.m tS.outgoing) (matrixOf tS.m tS.n tS.incoming)
  tS.comparison staircaseTarget2.comparison tS_valid.2 staircaseTarget2_valid.2
def source2Coordinates := homologyEquivalence _ _ sS.comparison sS_valid.2
def target2Coordinates := homologyEquivalence _ _ tS.comparison tS_valid.2
def staircaseSource2Coordinates :=
  homologyEquivalence _ _ staircaseSource2.comparison staircaseSource2_valid.2
def staircaseTarget2Coordinates :=
  homologyEquivalence _ _ staircaseTarget2.comparison staircaseTarget2_valid.2

theorem sourceE3_all (x : Naturality.Q sS) :
    sourceE3 (source2Coordinates.toCoordinates x) = staircaseSource2Coordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem targetE3_all (x : Naturality.Q tS) :
    targetE3 (target2Coordinates.toCoordinates x) = staircaseTarget2Coordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem sourceE3_swap (x : Vec 2) : sourceE3 x = fun i => x (1-i) := by
  exact (show ∀ x : Vec 2, sourceE3 x = fun i => x (1-i) from by decide) x
theorem targetE3_swap (x : Vec 2) : targetE3 x = fun i => x (1-i) := by
  exact (show ∀ x : Vec 2, targetE3 x = fun i => x (1-i) from by decide) x

def swap : Matrix 2 2 := matrixOf 2 2 [false,true,true,false]
def identity2 : Matrix 2 2 := matrixOf 2 2 [true,false,false,true]
def identity1 : Matrix 1 1 := matrixOf 1 1 [true]
def sourceIncomingChange : Matrix 2 2 := matrixOf 2 2 [true,false,true,true]
theorem source_d3_compatible : CompatibleMap
    (Naturality.out sourceS) (Naturality.inc sourceS)
    (Naturality.out staircaseSource3) (Naturality.inc staircaseSource3)
    swap identity2 sourceIncomingChange := by lin_cert using ()
theorem target_d3_compatible : CompatibleMap
    (Naturality.out targetS) (Naturality.inc targetS)
    (Naturality.out staircaseTarget3) (Naturality.inc staircaseTarget3)
    swap identity1 swap := by lin_cert using ()

def qEquiv (w : WireComparison) (valid : w.Valid) : Naturality.Q w ≃ Vec w.h where
  toFun := (homologyEquivalence _ _ w.comparison valid.2).toCoordinates
  invFun := (homologyEquivalence _ _ w.comparison valid.2).fromCoordinates
  left_inv := (homologyEquivalence _ _ w.comparison valid.2).leftInverse
  right_inv := (homologyEquivalence _ _ w.comparison valid.2).rightInverse

def sourceE4 : Naturality.Q sourceS ≃ Naturality.Q staircaseSource3 :=
  (qEquiv sourceS sourceS_valid).trans (qEquiv staircaseSource3 staircaseSource3_valid).symm
def targetE4 : Naturality.Q targetS ≃ Naturality.Q staircaseTarget3 :=
  (qEquiv targetS targetS_valid).trans (qEquiv staircaseTarget3 staircaseTarget3_valid).symm

theorem sourceE4_induced (x : Naturality.Q sourceS) :
    sourceE4 x = inducedMap source_d3_compatible x := by
  apply (qEquiv staircaseSource3 staircaseSource3_valid).injective
  have coordinate := induced_coordinates_all source_d3_compatible sourceS.comparison
    staircaseSource3.comparison sourceS_valid.2 staircaseSource3_valid.2 x
  change (qEquiv staircaseSource3 staircaseSource3_valid)
    ((qEquiv staircaseSource3 staircaseSource3_valid).symm ((qEquiv sourceS sourceS_valid) x)) = _
  rw [Equiv.apply_symm_apply]
  change (qEquiv sourceS sourceS_valid) x = _
  exact ((show ∀ y : Vec 1,
    eval (coordinateMap sourceS.comparison staircaseSource3.comparison swap) y = y from by decide) _).symm.trans coordinate.symm

theorem targetE4_induced (x : Naturality.Q targetS) :
    targetE4 x = inducedMap target_d3_compatible x := by
  apply (qEquiv staircaseTarget3 staircaseTarget3_valid).injective
  have coordinate := induced_coordinates_all target_d3_compatible targetS.comparison
    staircaseTarget3.comparison targetS_valid.2 staircaseTarget3_valid.2 x
  change (qEquiv staircaseTarget3 staircaseTarget3_valid)
    ((qEquiv staircaseTarget3 staircaseTarget3_valid).symm ((qEquiv targetS targetS_valid) x)) = _
  rw [Equiv.apply_symm_apply]
  exact ((show ∀ y : Vec 1,
    eval (coordinateMap targetS.comparison staircaseTarget3.comparison swap) y = y from by decide) _).symm.trans coordinate.symm

def namedE3 : Vec 2 := fun i => i.val == 0
def namedStairE3 : Vec 2 := fun i => i.val == 1
def namedE4 : Vec 1 := fun _ => true
theorem named_E3_change : sourceE3 namedE3 = namedStairE3 := by decide
theorem named_E4_projection : eval sourceS.comparison.projection namedE3 = namedE4 ∧
    eval staircaseSource3.comparison.projection namedStairE3 = namedE4 := by decide

/-- The next coordinate is computed from the actual quotient representative;
there is no separately supplied next-page naming equation. -/
theorem actual_next_name (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (current : Coordinates S 3 Actual.sourceDegree sourceS.m)
    (M : ActualAdamsHomologyCoordinates.Meaning S 3 Actual.sourceDegree sourceS current)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 3 Actual.sourceDegree)
    (x : PageCycle S 3 Actual.sourceDegree) (named : current.equivalence x.val = namedE3) :
    (M.nextCoordinates pages sourceS_valid zeroMeaning).equivalence
      ((pages.nextPage 3 Actual.sourceDegree).toNext (Quotient.mk _ x)) = namedE4 :=
  (M.nextCoordinates_quotient pages sourceS_valid zeroMeaning x).trans
    ((congrArg (eval sourceS.comparison.projection) named).trans named_E4_projection.1)

theorem actual_next_unique (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (current : Coordinates S 3 Actual.sourceDegree sourceS.m)
    (M : ActualAdamsHomologyCoordinates.Meaning S 3 Actual.sourceDegree sourceS current)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 3 Actual.sourceDegree)
    (x : PageCycle S 3 Actual.sourceDegree) (named : current.equivalence x.val = namedE3)
    (y : (S.element 4 Actual.sourceDegree).carrier)
    (nextNamed : (M.nextCoordinates pages sourceS_valid zeroMeaning).equivalence y = namedE4) :
    y = (pages.nextPage 3 Actual.sourceDegree).toNext (Quotient.mk _ x) := by
  apply (M.nextCoordinates pages sourceS_valid zeroMeaning).equivalence.injective
  exact nextNamed.trans (actual_next_name S pages current M zeroMeaning x named).symm

#print axioms sourceE3_all
#print axioms targetE3_all
#print axioms sourceE3_swap
#print axioms targetE3_swap
#print axioms sourceE4_induced
#print axioms targetE4_induced
#print axioms actual_next_name
#print axioms actual_next_unique
end Fact713D4SourceSearch.CoordinateBridge
