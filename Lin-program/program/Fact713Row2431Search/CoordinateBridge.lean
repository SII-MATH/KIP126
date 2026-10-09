import Fact713Row2431Search.Actual
import Fact713ComparisonBatches.Batch06
import HomologyCoordinateChoice.Basic

namespace Fact713Row2431Search.CoordinateBridge
open LinearCertificates PageTransitionCertificates Fact713ComparisonBatches

def staircaseSource : WireComparison := (batch06[7]).wire
def staircaseTarget : WireComparison := (batch06[22]).wire
theorem staircaseSource_valid : staircaseSource.Valid :=
  (batch06_valid _ (List.getElem_mem (show 7 < batch06.length from by decide))).2
theorem staircaseTarget_valid : staircaseTarget.Valid :=
  (batch06_valid _ (List.getElem_mem (show 22 < batch06.length from by decide))).2
theorem source_key : (batch06[7]).key = ⟨"S0",2,9,130⟩ := by decide
theorem target_key : (batch06[22]).key = ⟨"S0",2,12,132⟩ := by decide

theorem source_same_complex : staircaseSource.outgoing = Comparison.source.outgoing ∧
    staircaseSource.incoming = Comparison.source.incoming := by decide
theorem target_same_complex : staircaseTarget.outgoing = Comparison.upperSource.outgoing ∧
    staircaseTarget.incoming = Comparison.upperSource.incoming := by decide

def sourceEquivalence : Vec 1 ≃ Vec 1 := HomologyCoordinateChoice.equivalence
  (matrixOf Comparison.source.k Comparison.source.m Comparison.source.outgoing)
  (matrixOf Comparison.source.m Comparison.source.n Comparison.source.incoming)
  Comparison.source.comparison staircaseSource.comparison
  Comparison.source_complete.2 staircaseSource_valid.2
def targetEquivalence : Vec 3 ≃ Vec 3 := HomologyCoordinateChoice.equivalence
  (matrixOf Comparison.upperSource.k Comparison.upperSource.m Comparison.upperSource.outgoing)
  (matrixOf Comparison.upperSource.m Comparison.upperSource.n Comparison.upperSource.incoming)
  Comparison.upperSource.comparison staircaseTarget.comparison
  Comparison.upperSource_complete.2 staircaseTarget_valid.2
def canonicalSource := homologyEquivalence _ _ Comparison.source.comparison Comparison.source_complete.2
def staircaseSourceCoordinates := homologyEquivalence _ _ staircaseSource.comparison staircaseSource_valid.2
def staircaseTargetCoordinates := homologyEquivalence _ _ staircaseTarget.comparison staircaseTarget_valid.2

theorem source_all_coordinates (x : Naturality.S) :
    sourceEquivalence (canonicalSource.toCoordinates x) = staircaseSourceCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem target_all_coordinates (x : Naturality.U) :
    targetEquivalence (Naturality.ue.toCoordinates x) = staircaseTargetCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem source_identity (v : Vec 1) : sourceEquivalence v = v :=
  (show ∀ v : Vec 1, sourceEquivalence v = v from by decide) v
theorem target_change (v : Vec 3) : targetEquivalence v =
    fun i => if i.val == 0 then v 0 else if i.val == 1 then xor (v 0) (v 2) else v 1 := by
  exact (show ∀ v : Vec 3, targetEquivalence v =
    fun i => if i.val == 0 then v 0 else if i.val == 1 then xor (v 0) (v 2) else v 1 from by decide) v

theorem target_zero : targetEquivalence zero = zero := by decide
theorem named_coordinates : staircaseSourceCoordinates.toCoordinates Naturality.named = Actual.named3 := by
  exact (show staircaseSourceCoordinates.toCoordinates Naturality.named = Actual.named3 from by decide)

def rawRow : Nat × String × Option String × Nat := ⟨2431,"1",none,9000⟩
def rawBasis : List (Nat × String) := [(2431,"338,1"),(2432,"0,2,68,1,69,1")]
theorem raw_unknown : rawRow.2.2.1 = none := rfl
theorem named_basis_row : rawBasis[1] = (2432,"0,2,68,1,69,1") := rfl

/-- The full source d3 is forced zero; the complete incoming space is empty. -/
def conditionalD3 : WireComparison :=
  { version := 1, k := 3, m := 1, n := 0, h := 1,
    outgoing := [false,false,false], incoming := [],
    inclusion := [true], projection := [true],
    up := [], down := [false,false,false] }
theorem conditionalD3_valid : conditionalD3.Valid := by lin_cert using ()
theorem named_column_zero :
    (fun i : Fin 3 => matrixOf 3 1 conditionalD3.outgoing i 0) = zero := by decide
theorem named_d3_survives :
    eval conditionalD3.comparison.projection Actual.named3 = (fun _ => true) ∧
    ¬ InImage (matrixOf 1 0 conditionalD3.incoming) Actual.named3 := by
  unfold InImage
  decide

theorem actual_staircase_column (sphere detector : ManualInputObligations.Reference.AdamsSpectralSequence)
    (M : Actual.Meaning sphere detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 3 Actual.sourceDegree (M.lower.nextMap x) =
      M.upper.nextMap (sphere.differential 3 Actual.sourceDegree x))
    (x : (sphere.element 3 Actual.sourceDegree).carrier)
    (named : sourceEquivalence (M.lower.nextSource.equivalence x) = Actual.named3) :
    targetEquivalence (M.upper.nextSource.equivalence
      (sphere.differential 3 Actual.sourceDegree x)) =
      (fun i : Fin 3 => matrixOf 3 1 conditionalD3.outgoing i 0) := by
  rw [source_identity] at named
  have hz := Actual.actual_row2431_whole_d3_zero sphere detector M lowerTransition upperTransition naturality x
  have coordinates := congrArg (fun y : (sphere.element 3 Actual.targetDegree).carrier =>
    targetEquivalence (M.upper.nextSource.equivalence y)) hz
  exact coordinates.trans ((congrArg targetEquivalence M.upper.nextSource.zero_value).trans
    (target_zero.trans named_column_zero.symm))

#print axioms sourceEquivalence
#print axioms targetEquivalence
#print axioms source_all_coordinates
#print axioms target_all_coordinates
#print axioms source_identity
#print axioms target_change
#print axioms target_zero
#print axioms named_coordinates
#print axioms named_basis_row
#print axioms conditionalD3_valid
#print axioms named_d3_survives
#print axioms actual_staircase_column
end Fact713Row2431Search.CoordinateBridge
