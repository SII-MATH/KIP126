import Stem125HomologyCertificates.D3
namespace Stem125HomologyCertificates.D4
open LinearCertificates PageTransitionCertificates AggregateD5Conditional.Data
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
def filtrations : List Nat := [6, 7, 8, 11, 18, 31, 39, 43, 52]
theorem center_count : filtrations.length = 9 := by decide
def wires (i : Fin 9) : WireComparison := match i with
  | ⟨0,_⟩ => b_S0_6_131_d4
  | ⟨1,_⟩ => b_S0_7_132_d4
  | ⟨2,_⟩ => b_S0_8_133_d4
  | ⟨3,_⟩ => b_S0_11_136_d4
  | ⟨4,_⟩ => b_S0_18_143_d4
  | ⟨5,_⟩ => b_S0_31_156_d4
  | ⟨6,_⟩ => b_S0_39_164_d4
  | ⟨7,_⟩ => b_S0_43_168_d4
  | ⟨8,_⟩ => b_S0_52_177_d4
  | ⟨n+9,h⟩ => False.elim (by omega)
theorem all_complete (i : Fin 9) : (wires i).Valid := by
  fin_cases i
  · exact b_S0_6_131_d4_complete
  · exact b_S0_7_132_d4_complete
  · exact b_S0_8_133_d4_complete
  · exact b_S0_11_136_d4_complete
  · exact b_S0_18_143_d4_complete
  · exact b_S0_31_156_d4_complete
  · exact b_S0_39_164_d4_complete
  · exact b_S0_43_168_d4_complete
  · exact b_S0_52_177_d4_complete
theorem input_count : Fintype.card (CoordinateIndex (fun i => (wires i).m)) = 9 := by decide
theorem coordinate_count : Fintype.card (CoordinateIndex (fun i => (wires i).h)) = 2 := by decide
abbrev WholeHomology := TotalHomology wires
noncomputable def equivalence : WholeHomology ≃ Vec 2 := totalFlatEquiv wires all_complete coordinate_count
theorem cardinality : Nat.card WholeHomology = 2 ^ 2 := total_card wires all_complete coordinate_count
theorem represented (x : WholeHomology) : ∃ z : Vec 2, equivalence.symm z = x := all_classes_represented wires all_complete coordinate_count x
theorem coordinates_distinguish (x y : WholeHomology) : equivalence x = equivalence y ↔ x = y := all_coordinates_distinct wires all_complete coordinate_count x y
theorem preserves_addition (x y : WholeHomology) : equivalence (totalAdd wires x y) = add (equivalence x) (equivalence y) := totalFlatEquiv_add wires all_complete coordinate_count x y
def previousIndex (i : Fin 9) : Fin 28 := match i with
  | ⟨0,_⟩ => ⟨1,by decide⟩
  | ⟨1,_⟩ => ⟨2,by decide⟩
  | ⟨2,_⟩ => ⟨3,by decide⟩
  | ⟨3,_⟩ => ⟨5,by decide⟩
  | ⟨4,_⟩ => ⟨12,by decide⟩
  | ⟨5,_⟩ => ⟨20,by decide⟩
  | ⟨6,_⟩ => ⟨22,by decide⟩
  | ⟨7,_⟩ => ⟨24,by decide⟩
  | ⟨8,_⟩ => ⟨27,by decide⟩
  | ⟨n+9,h⟩ => False.elim (by omega)
theorem previousIndex_injective : Function.Injective previousIndex := by decide
theorem consecutive_dimensions (i : Fin 9) : (wires i).m = (D3.wires (previousIndex i)).h := by
  fin_cases i <;> rfl
def previousHomologyEquiv : ((i : Fin 9) → LocalHomology (D3.wires (previousIndex i))) ≃ ((i : Fin 9) → Vec (wires i).m) :=
  Equiv.piCongrRight (fun i => (localEquiv (D3.wires (previousIndex i)) (D3.all_complete _)).trans
    (Equiv.cast (congrArg Vec (consecutive_dimensions i).symm)))
def missingNonzeroPrevious : List (Nat × Nat) := [(13,2),(14,1),(15,2),(16,1),(21,1),(22,2),(25,3),(46,1),(49,1)]
theorem missing_nonzero_count : missingNonzeroPrevious.length = 9 := by decide
theorem missing_nonzero_dimension : (missingNonzeroPrevious.map Prod.snd).sum = 14 := by decide
theorem batch_checked : Nat.card (TotalHomology wires) = 2 ^ 2 := by stem_homology_cert using ()
theorem wrong_dimension_rejected : checkTotal wires 3 = false := by decide
#print axioms cardinality
#print axioms preserves_addition
#print axioms represented
end Stem125HomologyCertificates.D4
