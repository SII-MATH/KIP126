import Fact713RefinedSourceSearch.Basic
import Fact713ComparisonBatches.Batch08
import Fact713ComparisonBatches.Batch09
import Fact713ComparisonBatches.Batch17
import Fact713ComparisonBatches.Batch18
namespace Fact713RefinedSourceSearch.Data
open LinearCertificates PageTransitionCertificates Fact713ComparisonBatches
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_19_140_d5 : WireComparison := page_comparison% "Fact713RefinedSourceSearch/wires/b_S0_19_140_d5.json"
theorem b_S0_19_140_d5_valid : b_S0_19_140_d5.Valid := by lin_cert using ()
def b_S0_24_144_d4 : WireComparison := page_comparison% "Fact713RefinedSourceSearch/wires/b_S0_24_144_d4.json"
theorem b_S0_24_144_d4_valid : b_S0_24_144_d4.Valid := by lin_cert using ()
def b_S0_28_147_d4 : WireComparison := page_comparison% "Fact713RefinedSourceSearch/wires/b_S0_28_147_d4.json"
theorem b_S0_28_147_d4_valid : b_S0_28_147_d4.Valid := by lin_cert using ()
def b_S0_32_150_d3 : WireComparison := page_comparison% "Fact713RefinedSourceSearch/wires/b_S0_32_150_d3.json"
theorem b_S0_32_150_d3_valid : b_S0_32_150_d3.Valid := by lin_cert using ()
def b_S0_35_152_d2 : WireComparison := page_comparison% "Fact713RefinedSourceSearch/wires/b_S0_35_152_d2.json"
theorem b_S0_35_152_d2_valid : b_S0_35_152_d2.Valid := by lin_cert using ()
def b_S0_24_144_d2 : WireComparison := (batch08[8]).wire
theorem b_S0_24_144_d2_valid : b_S0_24_144_d2.Valid :=
  (batch08_valid _ (List.getElem_mem (show 8 < batch08.length from by decide))).2
theorem b_S0_24_144_d2_key : (batch08[8]).key =
    ⟨"S0", 2, 24, 144⟩ := by decide
def b_S0_24_144_d3 : WireComparison := (batch17[38]).wire
theorem b_S0_24_144_d3_valid : b_S0_24_144_d3.Valid :=
  (batch17_valid _ (List.getElem_mem (show 38 < batch17.length from by decide))).2
theorem b_S0_24_144_d3_key : (batch17[38]).key =
    ⟨"S0", 3, 24, 144⟩ := by decide
def b_S0_28_147_d2 : WireComparison := (batch08[27]).wire
theorem b_S0_28_147_d2_valid : b_S0_28_147_d2.Valid :=
  (batch08_valid _ (List.getElem_mem (show 27 < batch08.length from by decide))).2
theorem b_S0_28_147_d2_key : (batch08[27]).key =
    ⟨"S0", 2, 28, 147⟩ := by decide
def b_S0_28_147_d3 : WireComparison := (batch18[13]).wire
theorem b_S0_28_147_d3_valid : b_S0_28_147_d3.Valid :=
  (batch18_valid _ (List.getElem_mem (show 13 < batch18.length from by decide))).2
theorem b_S0_28_147_d3_key : (batch18[13]).key =
    ⟨"S0", 3, 28, 147⟩ := by decide
def b_S0_32_150_d2 : WireComparison := (batch09[7]).wire
theorem b_S0_32_150_d2_valid : b_S0_32_150_d2.Valid :=
  (batch09_valid _ (List.getElem_mem (show 7 < batch09.length from by decide))).2
theorem b_S0_32_150_d2_key : (batch09[7]).key =
    ⟨"S0", 2, 32, 150⟩ := by decide

structure RawStaircaseRow where
  row : Nat
  base : String
  differential : Option String
  level : Nat
  deriving DecidableEq

def unknownRow : RawStaircaseRow := ⟨3476, "0", none, 9000⟩
def successorRow : RawStaircaseRow := ⟨3728, "2", some "0,2", 9996⟩
theorem unknown_preserved : unknownRow.differential = none := rfl
theorem successor_page : successorRow.level = 10000 - 4 := by decide

/-- Character-list recursion keeps the small raw bindings kernel reducible. -/
def supportIndices : List Char → Option Nat → List Nat → Option (List Nat)
  | [], none, [] => some []
  | [], none, _ :: _ => none
  | [], some value, values => some (values ++ [value])
  | ',' :: rest, some value, values => supportIndices rest none (values ++ [value])
  | ',' :: _, none, _ => none
  | c :: rest, current, values =>
    if '0'.toNat ≤ c.toNat && c.toNat ≤ '9'.toNat then
      if current = some 0 then none
      else supportIndices rest (some (current.getD 0 * 10 + c.toNat - '0'.toNat)) values
    else none

/-- A checked local support decoder. NULL is not an input string. -/
def decodeSupport (n : Nat) (text : String) : Option (List Bool) := do
  let indices ← supportIndices text.toList none []
  if !(indices.all (fun i => i < n)) || !decide indices.Nodup then none
  else some ((List.range n).map (fun i => indices.contains i))

theorem row3476_raw_support : decodeSupport 3 unknownRow.base =
    some [true, false, false] := by decide
theorem row3728_raw_support : decodeSupport 3 successorRow.base =
    some [false, false, true] := by decide
theorem row3728_raw_target_support : successorRow.differential.bind (decodeSupport 3) =
    some [true, false, true] := by decide
theorem row3476_no_raw_value : unknownRow.differential.bind (decodeSupport 1) = none := rfl
example : decodeSupport 3 "0," = none := by decide
example : decodeSupport 3 "0,0" = none := by decide
example : decodeSupport 3 "3" = none := by decide
example : decodeSupport 3 "00" = none := by decide
example : decodeSupport 3 "?" = none := by decide

def raw3476 : Vec 3 := fun i => i.val == 0
def source3476 : Vec 2 := fun i => i.val == 1
def raw3728 : Vec 3 := fun i => i.val == 2
def raw3728Target : Vec 3 := fun i => i.val != 1

theorem row3476_projection :
    eval (matrixOf 2 2 b_S0_24_144_d3.projection)
      (eval (matrixOf 2 3 b_S0_24_144_d2.projection) raw3476) = source3476 := by
  funext i
  exact (show ∀ i, _ = source3476 i from by decide) i

theorem row3728_source_projection :
    eval (matrixOf 1 1 b_S0_28_147_d3.projection)
      (eval (matrixOf 1 3 b_S0_28_147_d2.projection) raw3728) = (fun _ => true) := by
  funext i
  exact (show ∀ i, _ = true from by decide) i

theorem row3728_target_projection :
    eval (matrixOf 1 1 b_S0_32_150_d3.projection)
      (eval (matrixOf 1 3 b_S0_32_150_d2.projection) raw3728Target) = (fun _ => true) := by
  funext i
  exact (show ∀ i, _ = true from by decide) i

theorem row3728_whole_matrix :
    matrixOf 1 1 b_S0_28_147_d4.outgoing = successor := by
  funext i j
  exact (show ∀ i j, _ = successor i j from by decide) i j

theorem adjacent_d4_agrees :
    b_S0_24_144_d4.outgoing = b_S0_28_147_d4.incoming := by decide

theorem row3476_inferred_finite_value :
    eval (matrixOf 1 2 b_S0_24_144_d4.outgoing) source3476 = zero := by
  funext i
  exact (show ∀ i, _ = zero i from by decide) i

/-- The raw record is still unknown. This conditional theorem instead uses
the complete known successor map and actual differential square zero. -/
theorem row3476_actual_value (S : ManualInputObligations.Reference.AdamsSpectralSequence)
    (middle : (S.element 4 middleDegree).carrier → Vec 1)
    (next : (S.element 4 nextDegree).carrier → Vec 1)
    (faithful : Function.Injective middle)
    (values : ∀ y, next (S.differential 4 middleDegree y) =
      eval (matrixOf 1 1 b_S0_28_147_d4.outgoing) (middle y))
    (x : (S.element 4 sourceDegree).carrier) :
    S.differential 4 sourceDegree x = 0 := by
  apply actual_source_d4_zero S
    (⟨middle, next, faithful, ?_⟩ : SuccessorMeaning S) x
  simpa only [row3728_whole_matrix] using values

#print axioms row3476_projection
#print axioms row3476_raw_support
#print axioms row3728_raw_support
#print axioms row3728_raw_target_support
#print axioms row3728_source_projection
#print axioms row3728_target_projection
#print axioms row3728_whole_matrix
#print axioms row3476_inferred_finite_value
#print axioms row3476_actual_value
end Fact713RefinedSourceSearch.Data
