import Stem125E4Search.Data
namespace Stem125E4Search.Product
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates
open AggregateD5Conditional.Data Data
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000
def nonzeroIndices : List Nat := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 20, 24, 26, 28, 29, 31, 32, 34, 36, 38, 39, 40, 41, 44]
def zeroIndices : List Nat := [0, 12, 19, 21, 22, 23, 25, 27, 30, 33, 35, 37, 42, 43]
def nonzeroFiltrations : List Nat := [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 23, 25, 29, 31, 34, 36, 38, 39, 41, 43, 45, 46, 49, 52, 57]
def zeroFiltrations : List Nat := [5, 17, 24, 26, 27, 28, 30, 33, 37, 40, 42, 44, 55, 56]
theorem partition_complete : ∀ i : Fin 45, i.val ∈ nonzeroIndices ∨ i.val ∈ zeroIndices := by decide
theorem partition_disjoint : ∀ i ∈ nonzeroIndices, i ∉ zeroIndices := by decide
theorem partition_nodup : nonzeroIndices.Nodup ∧ zeroIndices.Nodup := by decide
def nonzeroIndex (i : Fin 31) : Fin 45 := match i with
  | ⟨0,_⟩ => ⟨1,by decide⟩
  | ⟨1,_⟩ => ⟨2,by decide⟩
  | ⟨2,_⟩ => ⟨3,by decide⟩
  | ⟨3,_⟩ => ⟨4,by decide⟩
  | ⟨4,_⟩ => ⟨5,by decide⟩
  | ⟨5,_⟩ => ⟨6,by decide⟩
  | ⟨6,_⟩ => ⟨7,by decide⟩
  | ⟨7,_⟩ => ⟨8,by decide⟩
  | ⟨8,_⟩ => ⟨9,by decide⟩
  | ⟨9,_⟩ => ⟨10,by decide⟩
  | ⟨10,_⟩ => ⟨11,by decide⟩
  | ⟨11,_⟩ => ⟨13,by decide⟩
  | ⟨12,_⟩ => ⟨14,by decide⟩
  | ⟨13,_⟩ => ⟨15,by decide⟩
  | ⟨14,_⟩ => ⟨16,by decide⟩
  | ⟨15,_⟩ => ⟨17,by decide⟩
  | ⟨16,_⟩ => ⟨18,by decide⟩
  | ⟨17,_⟩ => ⟨20,by decide⟩
  | ⟨18,_⟩ => ⟨24,by decide⟩
  | ⟨19,_⟩ => ⟨26,by decide⟩
  | ⟨20,_⟩ => ⟨28,by decide⟩
  | ⟨21,_⟩ => ⟨29,by decide⟩
  | ⟨22,_⟩ => ⟨31,by decide⟩
  | ⟨23,_⟩ => ⟨32,by decide⟩
  | ⟨24,_⟩ => ⟨34,by decide⟩
  | ⟨25,_⟩ => ⟨36,by decide⟩
  | ⟨26,_⟩ => ⟨38,by decide⟩
  | ⟨27,_⟩ => ⟨39,by decide⟩
  | ⟨28,_⟩ => ⟨40,by decide⟩
  | ⟨29,_⟩ => ⟨41,by decide⟩
  | ⟨30,_⟩ => ⟨44,by decide⟩
  | ⟨n+31,h⟩ => False.elim (by omega)
def zeroIndex (i : Fin 14) : Fin 45 := match i with
  | ⟨0,_⟩ => ⟨0,by decide⟩
  | ⟨1,_⟩ => ⟨12,by decide⟩
  | ⟨2,_⟩ => ⟨19,by decide⟩
  | ⟨3,_⟩ => ⟨21,by decide⟩
  | ⟨4,_⟩ => ⟨22,by decide⟩
  | ⟨5,_⟩ => ⟨23,by decide⟩
  | ⟨6,_⟩ => ⟨25,by decide⟩
  | ⟨7,_⟩ => ⟨27,by decide⟩
  | ⟨8,_⟩ => ⟨30,by decide⟩
  | ⟨9,_⟩ => ⟨33,by decide⟩
  | ⟨10,_⟩ => ⟨35,by decide⟩
  | ⟨11,_⟩ => ⟨37,by decide⟩
  | ⟨12,_⟩ => ⟨42,by decide⟩
  | ⟨13,_⟩ => ⟨43,by decide⟩
  | ⟨n+14,h⟩ => False.elim (by omega)
theorem zero_previous_dimension (i : Fin 14) : (D2.wires (zeroIndex i)).h = 0 := by fin_cases i <;> rfl
theorem nonzeroIndex_injective : Function.Injective nonzeroIndex := by decide
theorem zeroIndex_injective : Function.Injective zeroIndex := by decide
def wires (b : Bool) (i : Fin 31) : WireComparison := match i with
  | ⟨0,_⟩ => AggregateD5Conditional.Data.b_S0_6_131_d3
  | ⟨1,_⟩ => AggregateD5Conditional.Data.b_S0_7_132_d3
  | ⟨2,_⟩ => AggregateD5Conditional.Data.b_S0_8_133_d3
  | ⟨3,_⟩ => Data.branch b
  | ⟨4,_⟩ => AggregateD5Conditional.Data.b_S0_10_135_d3
  | ⟨5,_⟩ => AggregateD5Conditional.Data.b_S0_11_136_d3
  | ⟨6,_⟩ => AggregateD5Conditional.Data.b_S0_12_137_d3
  | ⟨7,_⟩ => AggregateD5Conditional.Data.b_S0_13_138_d3
  | ⟨8,_⟩ => AggregateD5Conditional.Data.b_S0_14_139_d3
  | ⟨9,_⟩ => AggregateD5Conditional.Data.b_S0_15_140_d3
  | ⟨10,_⟩ => AggregateD5Conditional.Data.b_S0_16_141_d3
  | ⟨11,_⟩ => AggregateD5Conditional.Data.b_S0_18_143_d3
  | ⟨12,_⟩ => AggregateD5Conditional.Data.b_S0_19_144_d3
  | ⟨13,_⟩ => AggregateD5Conditional.Data.b_S0_20_145_d3
  | ⟨14,_⟩ => AggregateD5Conditional.Data.b_S0_21_146_d3
  | ⟨15,_⟩ => AggregateD5Conditional.Data.b_S0_22_147_d3
  | ⟨16,_⟩ => AggregateD5Conditional.Data.b_S0_23_148_d3
  | ⟨17,_⟩ => AggregateD5Conditional.Data.b_S0_25_150_d3
  | ⟨18,_⟩ => AggregateD5Conditional.Data.b_S0_29_154_d3
  | ⟨19,_⟩ => AggregateD5Conditional.Data.b_S0_31_156_d3
  | ⟨20,_⟩ => Data.b_S0_34_159_d3
  | ⟨21,_⟩ => Data.b_S0_36_161_d3
  | ⟨22,_⟩ => AggregateD5Conditional.Data.b_S0_38_163_d3
  | ⟨23,_⟩ => AggregateD5Conditional.Data.b_S0_39_164_d3
  | ⟨24,_⟩ => AggregateD5Conditional.Data.b_S0_41_166_d3
  | ⟨25,_⟩ => AggregateD5Conditional.Data.b_S0_43_168_d3
  | ⟨26,_⟩ => Data.b_S0_45_170_d3
  | ⟨27,_⟩ => AggregateD5Conditional.Data.b_S0_46_171_d3
  | ⟨28,_⟩ => AggregateD5Conditional.Data.b_S0_49_174_d3
  | ⟨29,_⟩ => AggregateD5Conditional.Data.b_S0_52_177_d3
  | ⟨30,_⟩ => Data.b_S0_57_182_d3
  | ⟨n+31,h⟩ => False.elim (by omega)
theorem all_complete (b : Bool) (i : Fin 31) : (wires b i).Valid := by
  fin_cases i
  · exact AggregateD5Conditional.Data.b_S0_6_131_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_7_132_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_8_133_d3_complete
  · exact Data.branch_complete b
  · exact AggregateD5Conditional.Data.b_S0_10_135_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_11_136_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_12_137_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_13_138_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_14_139_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_15_140_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_16_141_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_18_143_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_19_144_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_20_145_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_21_146_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_22_147_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_23_148_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_25_150_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_29_154_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_31_156_d3_complete
  · exact Data.b_S0_34_159_d3_complete
  · exact Data.b_S0_36_161_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_38_163_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_39_164_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_41_166_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_43_168_d3_complete
  · exact Data.b_S0_45_170_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_46_171_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_49_174_d3_complete
  · exact AggregateD5Conditional.Data.b_S0_52_177_d3_complete
  · exact Data.b_S0_57_182_d3_complete
def partitionMap : Fin 31 ⊕ Fin 14 → Fin 45 := Sum.elim nonzeroIndex zeroIndex
theorem partition_bijective : Function.Bijective partitionMap := by decide
noncomputable def partitionEquiv : (Fin 31 ⊕ Fin 14) ≃ Fin 45 := Equiv.ofBijective partitionMap partition_bijective
theorem previous_dimensions (b : Bool) (i : Fin 31) : (wires b i).m = (D2.wires (nonzeroIndex i)).h := by
  cases b <;> fin_cases i <;> rfl
theorem input_count (b : Bool) : Fintype.card (CoordinateIndex (fun i => (wires b i).m)) = 44 := by cases b <;> decide
theorem coordinate_count (b : Bool) : Fintype.card (CoordinateIndex (fun i => (wires b i).h)) = 24 := by cases b <;> decide
def previousHomologyEquiv (b : Bool) : ((i : Fin 31) → LocalHomology (D2.wires (nonzeroIndex i))) ≃ ((i : Fin 31) → Vec (wires b i).m) :=
  Equiv.piCongrRight (fun i => (localEquiv (D2.wires (nonzeroIndex i)) (D2.all_complete _)).trans
    (Equiv.cast (congrArg Vec (previous_dimensions b i).symm)))
abbrev NonzeroHomology (b : Bool) := TotalHomology (wires b)
noncomputable def equivalence (b : Bool) : NonzeroHomology b ≃ Vec 24 := totalFlatEquiv (wires b) (all_complete b) (coordinate_count b)
theorem cardinality (b : Bool) : Nat.card (NonzeroHomology b) = 2 ^ 24 := total_card (wires b) (all_complete b) (coordinate_count b)
theorem preserves_addition (b : Bool) (x y : NonzeroHomology b) : equivalence b (totalAdd (wires b) x y) = add (equivalence b x) (equivalence b y) := totalFlatEquiv_add (wires b) (all_complete b) (coordinate_count b) x y
theorem batch_checked (b : Bool) : Nat.card (TotalHomology (wires b)) = 2 ^ 24 := by cases b <;> stem_homology_cert using ()
#print axioms cardinality
#print axioms preserves_addition
end Stem125E4Search.Product
