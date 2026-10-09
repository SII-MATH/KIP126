import Stem125HomologyCertificates.D2
namespace Stem125HomologyCertificates.D3
open LinearCertificates PageTransitionCertificates AggregateD5Conditional.Data
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
def filtrations : List Nat := [5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 25, 29, 31, 38, 39, 41, 43, 46, 49, 52]
theorem center_count : filtrations.length = 28 := by decide
def wires (i : Fin 28) : WireComparison := match i with
  | ⟨0,_⟩ => b_S0_5_130_d3
  | ⟨1,_⟩ => b_S0_6_131_d3
  | ⟨2,_⟩ => b_S0_7_132_d3
  | ⟨3,_⟩ => b_S0_8_133_d3
  | ⟨4,_⟩ => b_S0_10_135_d3
  | ⟨5,_⟩ => b_S0_11_136_d3
  | ⟨6,_⟩ => b_S0_12_137_d3
  | ⟨7,_⟩ => b_S0_13_138_d3
  | ⟨8,_⟩ => b_S0_14_139_d3
  | ⟨9,_⟩ => b_S0_15_140_d3
  | ⟨10,_⟩ => b_S0_16_141_d3
  | ⟨11,_⟩ => b_S0_17_142_d3
  | ⟨12,_⟩ => b_S0_18_143_d3
  | ⟨13,_⟩ => b_S0_19_144_d3
  | ⟨14,_⟩ => b_S0_20_145_d3
  | ⟨15,_⟩ => b_S0_21_146_d3
  | ⟨16,_⟩ => b_S0_22_147_d3
  | ⟨17,_⟩ => b_S0_23_148_d3
  | ⟨18,_⟩ => b_S0_25_150_d3
  | ⟨19,_⟩ => b_S0_29_154_d3
  | ⟨20,_⟩ => b_S0_31_156_d3
  | ⟨21,_⟩ => b_S0_38_163_d3
  | ⟨22,_⟩ => b_S0_39_164_d3
  | ⟨23,_⟩ => b_S0_41_166_d3
  | ⟨24,_⟩ => b_S0_43_168_d3
  | ⟨25,_⟩ => b_S0_46_171_d3
  | ⟨26,_⟩ => b_S0_49_174_d3
  | ⟨27,_⟩ => b_S0_52_177_d3
  | ⟨n+28,h⟩ => False.elim (by omega)
theorem all_complete (i : Fin 28) : (wires i).Valid := by
  fin_cases i
  · exact b_S0_5_130_d3_complete
  · exact b_S0_6_131_d3_complete
  · exact b_S0_7_132_d3_complete
  · exact b_S0_8_133_d3_complete
  · exact b_S0_10_135_d3_complete
  · exact b_S0_11_136_d3_complete
  · exact b_S0_12_137_d3_complete
  · exact b_S0_13_138_d3_complete
  · exact b_S0_14_139_d3_complete
  · exact b_S0_15_140_d3_complete
  · exact b_S0_16_141_d3_complete
  · exact b_S0_17_142_d3_complete
  · exact b_S0_18_143_d3_complete
  · exact b_S0_19_144_d3_complete
  · exact b_S0_20_145_d3_complete
  · exact b_S0_21_146_d3_complete
  · exact b_S0_22_147_d3_complete
  · exact b_S0_23_148_d3_complete
  · exact b_S0_25_150_d3_complete
  · exact b_S0_29_154_d3_complete
  · exact b_S0_31_156_d3_complete
  · exact b_S0_38_163_d3_complete
  · exact b_S0_39_164_d3_complete
  · exact b_S0_41_166_d3_complete
  · exact b_S0_43_168_d3_complete
  · exact b_S0_46_171_d3_complete
  · exact b_S0_49_174_d3_complete
  · exact b_S0_52_177_d3_complete
theorem input_count : Fintype.card (CoordinateIndex (fun i => (wires i).m)) = 37 := by decide
theorem coordinate_count : Fintype.card (CoordinateIndex (fun i => (wires i).h)) = 23 := by decide
abbrev WholeHomology := TotalHomology wires
noncomputable def equivalence : WholeHomology ≃ Vec 23 := totalFlatEquiv wires all_complete coordinate_count
theorem cardinality : Nat.card WholeHomology = 2 ^ 23 := total_card wires all_complete coordinate_count
theorem represented (x : WholeHomology) : ∃ z : Vec 23, equivalence.symm z = x := all_classes_represented wires all_complete coordinate_count x
theorem coordinates_distinguish (x y : WholeHomology) : equivalence x = equivalence y ↔ x = y := all_coordinates_distinct wires all_complete coordinate_count x y
theorem preserves_addition (x y : WholeHomology) : equivalence (totalAdd wires x y) = add (equivalence x) (equivalence y) := totalFlatEquiv_add wires all_complete coordinate_count x y
def previousIndex (i : Fin 28) : Fin 45 := match i with
  | ⟨0,_⟩ => ⟨0,by decide⟩
  | ⟨1,_⟩ => ⟨1,by decide⟩
  | ⟨2,_⟩ => ⟨2,by decide⟩
  | ⟨3,_⟩ => ⟨3,by decide⟩
  | ⟨4,_⟩ => ⟨5,by decide⟩
  | ⟨5,_⟩ => ⟨6,by decide⟩
  | ⟨6,_⟩ => ⟨7,by decide⟩
  | ⟨7,_⟩ => ⟨8,by decide⟩
  | ⟨8,_⟩ => ⟨9,by decide⟩
  | ⟨9,_⟩ => ⟨10,by decide⟩
  | ⟨10,_⟩ => ⟨11,by decide⟩
  | ⟨11,_⟩ => ⟨12,by decide⟩
  | ⟨12,_⟩ => ⟨13,by decide⟩
  | ⟨13,_⟩ => ⟨14,by decide⟩
  | ⟨14,_⟩ => ⟨15,by decide⟩
  | ⟨15,_⟩ => ⟨16,by decide⟩
  | ⟨16,_⟩ => ⟨17,by decide⟩
  | ⟨17,_⟩ => ⟨18,by decide⟩
  | ⟨18,_⟩ => ⟨20,by decide⟩
  | ⟨19,_⟩ => ⟨24,by decide⟩
  | ⟨20,_⟩ => ⟨26,by decide⟩
  | ⟨21,_⟩ => ⟨31,by decide⟩
  | ⟨22,_⟩ => ⟨32,by decide⟩
  | ⟨23,_⟩ => ⟨34,by decide⟩
  | ⟨24,_⟩ => ⟨36,by decide⟩
  | ⟨25,_⟩ => ⟨39,by decide⟩
  | ⟨26,_⟩ => ⟨40,by decide⟩
  | ⟨27,_⟩ => ⟨41,by decide⟩
  | ⟨n+28,h⟩ => False.elim (by omega)
theorem previousIndex_injective : Function.Injective previousIndex := by decide
theorem consecutive_dimensions (i : Fin 28) : (wires i).m = (D2.wires (previousIndex i)).h := by
  fin_cases i <;> rfl
def previousHomologyEquiv : ((i : Fin 28) → LocalHomology (D2.wires (previousIndex i))) ≃ ((i : Fin 28) → Vec (wires i).m) :=
  Equiv.piCongrRight (fun i => (localEquiv (D2.wires (previousIndex i)) (D2.all_complete _)).trans
    (Equiv.cast (congrArg Vec (consecutive_dimensions i).symm)))
def missingNonzeroPrevious : List (Nat × Nat) := [(9,3),(34,1),(36,1),(45,1),(57,1)]
theorem missing_nonzero_count : missingNonzeroPrevious.length = 5 := by decide
theorem missing_nonzero_dimension : (missingNonzeroPrevious.map Prod.snd).sum = 7 := by decide
theorem batch_checked : Nat.card (TotalHomology wires) = 2 ^ 23 := by stem_homology_cert using ()
theorem wrong_dimension_rejected : checkTotal wires 24 = false := by decide
#print axioms cardinality
#print axioms preserves_addition
#print axioms represented
end Stem125HomologyCertificates.D3
