import Stem125HomologyCertificates.Basic
import AggregateD5Conditional.Data
import AggregateTargetInventory.Aggregate
namespace Stem125HomologyCertificates.D2
open LinearCertificates PageTransitionCertificates AggregateD5Conditional.Data
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
def filtrations : List Nat := [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 49, 52, 55, 56, 57]
theorem center_count : filtrations.length = 45 := by decide
def wires (i : Fin 45) : WireComparison := match i with
  | ⟨0,_⟩ => b_S0_5_130_d2
  | ⟨1,_⟩ => b_S0_6_131_d2
  | ⟨2,_⟩ => b_S0_7_132_d2
  | ⟨3,_⟩ => b_S0_8_133_d2
  | ⟨4,_⟩ => b_S0_9_134_d2
  | ⟨5,_⟩ => b_S0_10_135_d2
  | ⟨6,_⟩ => b_S0_11_136_d2
  | ⟨7,_⟩ => b_S0_12_137_d2
  | ⟨8,_⟩ => b_S0_13_138_d2
  | ⟨9,_⟩ => b_S0_14_139_d2
  | ⟨10,_⟩ => b_S0_15_140_d2
  | ⟨11,_⟩ => b_S0_16_141_d2
  | ⟨12,_⟩ => b_S0_17_142_d2
  | ⟨13,_⟩ => b_S0_18_143_d2
  | ⟨14,_⟩ => b_S0_19_144_d2
  | ⟨15,_⟩ => b_S0_20_145_d2
  | ⟨16,_⟩ => b_S0_21_146_d2
  | ⟨17,_⟩ => b_S0_22_147_d2
  | ⟨18,_⟩ => b_S0_23_148_d2
  | ⟨19,_⟩ => b_S0_24_149_d2
  | ⟨20,_⟩ => b_S0_25_150_d2
  | ⟨21,_⟩ => b_S0_26_151_d2
  | ⟨22,_⟩ => b_S0_27_152_d2
  | ⟨23,_⟩ => b_S0_28_153_d2
  | ⟨24,_⟩ => b_S0_29_154_d2
  | ⟨25,_⟩ => b_S0_30_155_d2
  | ⟨26,_⟩ => b_S0_31_156_d2
  | ⟨27,_⟩ => b_S0_33_158_d2
  | ⟨28,_⟩ => b_S0_34_159_d2
  | ⟨29,_⟩ => b_S0_36_161_d2
  | ⟨30,_⟩ => b_S0_37_162_d2
  | ⟨31,_⟩ => b_S0_38_163_d2
  | ⟨32,_⟩ => b_S0_39_164_d2
  | ⟨33,_⟩ => b_S0_40_165_d2
  | ⟨34,_⟩ => b_S0_41_166_d2
  | ⟨35,_⟩ => b_S0_42_167_d2
  | ⟨36,_⟩ => b_S0_43_168_d2
  | ⟨37,_⟩ => b_S0_44_169_d2
  | ⟨38,_⟩ => b_S0_45_170_d2
  | ⟨39,_⟩ => b_S0_46_171_d2
  | ⟨40,_⟩ => b_S0_49_174_d2
  | ⟨41,_⟩ => b_S0_52_177_d2
  | ⟨42,_⟩ => b_S0_55_180_d2
  | ⟨43,_⟩ => b_S0_56_181_d2
  | ⟨44,_⟩ => b_S0_57_182_d2
  | ⟨n+45,h⟩ => False.elim (by omega)
theorem all_complete (i : Fin 45) : (wires i).Valid := by
  fin_cases i
  · exact b_S0_5_130_d2_complete
  · exact b_S0_6_131_d2_complete
  · exact b_S0_7_132_d2_complete
  · exact b_S0_8_133_d2_complete
  · exact b_S0_9_134_d2_complete
  · exact b_S0_10_135_d2_complete
  · exact b_S0_11_136_d2_complete
  · exact b_S0_12_137_d2_complete
  · exact b_S0_13_138_d2_complete
  · exact b_S0_14_139_d2_complete
  · exact b_S0_15_140_d2_complete
  · exact b_S0_16_141_d2_complete
  · exact b_S0_17_142_d2_complete
  · exact b_S0_18_143_d2_complete
  · exact b_S0_19_144_d2_complete
  · exact b_S0_20_145_d2_complete
  · exact b_S0_21_146_d2_complete
  · exact b_S0_22_147_d2_complete
  · exact b_S0_23_148_d2_complete
  · exact b_S0_24_149_d2_complete
  · exact b_S0_25_150_d2_complete
  · exact b_S0_26_151_d2_complete
  · exact b_S0_27_152_d2_complete
  · exact b_S0_28_153_d2_complete
  · exact b_S0_29_154_d2_complete
  · exact b_S0_30_155_d2_complete
  · exact b_S0_31_156_d2_complete
  · exact b_S0_33_158_d2_complete
  · exact b_S0_34_159_d2_complete
  · exact b_S0_36_161_d2_complete
  · exact b_S0_37_162_d2_complete
  · exact b_S0_38_163_d2_complete
  · exact b_S0_39_164_d2_complete
  · exact b_S0_40_165_d2_complete
  · exact b_S0_41_166_d2_complete
  · exact b_S0_42_167_d2_complete
  · exact b_S0_43_168_d2_complete
  · exact b_S0_44_169_d2_complete
  · exact b_S0_45_170_d2_complete
  · exact b_S0_46_171_d2_complete
  · exact b_S0_49_174_d2_complete
  · exact b_S0_52_177_d2_complete
  · exact b_S0_55_180_d2_complete
  · exact b_S0_56_181_d2_complete
  · exact b_S0_57_182_d2_complete
theorem input_count : Fintype.card (CoordinateIndex (fun i => (wires i).m)) = 105 := by decide
theorem coordinate_count : Fintype.card (CoordinateIndex (fun i => (wires i).h)) = 44 := by decide
abbrev WholeHomology := TotalHomology wires
noncomputable def equivalence : WholeHomology ≃ Vec 44 := totalFlatEquiv wires all_complete coordinate_count
theorem cardinality : Nat.card WholeHomology = 2 ^ 44 := total_card wires all_complete coordinate_count
theorem represented (x : WholeHomology) : ∃ z : Vec 44, equivalence.symm z = x := all_classes_represented wires all_complete coordinate_count x
theorem coordinates_distinguish (x y : WholeHomology) : equivalence x = equivalence y ↔ x = y := all_coordinates_distinct wires all_complete coordinate_count x y
theorem preserves_addition (x y : WholeHomology) : equivalence (totalAdd wires x y) = add (equivalence x) (equivalence y) := totalFlatEquiv_add wires all_complete coordinate_count x y
theorem exact_input_dimensions (i : Fin 45) : (wires i).m = AggregateTargetInventory.Aggregate.dim i := by
  fin_cases i <;> rfl
def rawCoordinateEquiv : AggregateTargetInventory.Aggregate.Coordinates ≃ ((i : Fin 45) → Vec (wires i).m) :=
  Equiv.piCongrRight (fun i => Equiv.cast (congrArg Vec (exact_input_dimensions i).symm))
def staircaseEquiv : AggregateTargetInventory.Aggregate.Coordinates ≃ AggregateTargetInventory.Aggregate.Coordinates where
  toFun := AggregateTargetInventory.Aggregate.forward
  invFun := AggregateTargetInventory.Aggregate.backward
  left_inv := AggregateTargetInventory.Aggregate.backward_forward
  right_inv := AggregateTargetInventory.Aggregate.forward_backward
def staircaseToInput := staircaseEquiv.trans rawCoordinateEquiv
noncomputable def inputEquivalence : AggregateTargetInventory.Aggregate.Coordinates ≃ Vec 105 :=
  staircaseToInput.trans (flatten (fun i => (wires i).m) input_count)
theorem every_input_has_unique_staircase_coefficients (x : (i : Fin 45) → Vec (wires i).m) :
    ∃! coefficients, staircaseToInput coefficients = x := staircaseToInput.bijective.existsUnique x
theorem input_cardinality : Nat.card AggregateTargetInventory.Aggregate.Coordinates = 2 ^ 105 := by
  rw [Nat.card_congr inputEquivalence]
  simp [Vec, Nat.card_eq_fintype_card]
theorem batch_checked : Nat.card (TotalHomology wires) = 2 ^ 44 := by stem_homology_cert using ()
theorem wrong_dimension_rejected : checkTotal wires 45 = false := by decide
#print axioms cardinality
#print axioms preserves_addition
#print axioms represented
end Stem125HomologyCertificates.D2
