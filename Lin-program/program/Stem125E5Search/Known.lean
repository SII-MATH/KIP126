import Stem125E5Search.Data
namespace Stem125E5Search.Known
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000
def filtrations : List Nat := [6, 11, 13, 16, 18, 21, 22, 31, 39, 43, 46, 49, 52]
def wires (i : Fin 13) : WireComparison := match i with
  | ⟨0,_⟩ => AggregateD5Conditional.Data.b_S0_6_131_d4
  | ⟨1,_⟩ => AggregateD5Conditional.Data.b_S0_11_136_d4
  | ⟨2,_⟩ => Data.b_S0_13_138_d4
  | ⟨3,_⟩ => Data.b_S0_16_141_d4
  | ⟨4,_⟩ => AggregateD5Conditional.Data.b_S0_18_143_d4
  | ⟨5,_⟩ => Data.b_S0_21_146_d4
  | ⟨6,_⟩ => Data.b_S0_22_147_d4
  | ⟨7,_⟩ => AggregateD5Conditional.Data.b_S0_31_156_d4
  | ⟨8,_⟩ => AggregateD5Conditional.Data.b_S0_39_164_d4
  | ⟨9,_⟩ => AggregateD5Conditional.Data.b_S0_43_168_d4
  | ⟨10,_⟩ => Data.b_S0_46_171_d4
  | ⟨11,_⟩ => Data.b_S0_49_174_d4
  | ⟨12,_⟩ => AggregateD5Conditional.Data.b_S0_52_177_d4
  | ⟨n+13,h⟩ => False.elim (by omega)
theorem all_complete (i : Fin 13) : (wires i).Valid := by
  fin_cases i
  · exact AggregateD5Conditional.Data.b_S0_6_131_d4_complete
  · exact AggregateD5Conditional.Data.b_S0_11_136_d4_complete
  · exact Data.b_S0_13_138_d4_complete
  · exact Data.b_S0_16_141_d4_complete
  · exact AggregateD5Conditional.Data.b_S0_18_143_d4_complete
  · exact Data.b_S0_21_146_d4_complete
  · exact Data.b_S0_22_147_d4_complete
  · exact AggregateD5Conditional.Data.b_S0_31_156_d4_complete
  · exact AggregateD5Conditional.Data.b_S0_39_164_d4_complete
  · exact AggregateD5Conditional.Data.b_S0_43_168_d4_complete
  · exact Data.b_S0_46_171_d4_complete
  · exact Data.b_S0_49_174_d4_complete
  · exact AggregateD5Conditional.Data.b_S0_52_177_d4_complete
theorem input_count : Fintype.card (CoordinateIndex (fun i => (wires i).m)) = 17 := by decide
theorem coordinate_count : Fintype.card (CoordinateIndex (fun i => (wires i).h)) = 2 := by decide
abbrev KnownHomology := TotalHomology wires
noncomputable def equivalence : KnownHomology ≃ Vec 2 := totalFlatEquiv wires all_complete coordinate_count
theorem cardinality : Nat.card KnownHomology = 2 ^ 2 := total_card wires all_complete coordinate_count
#print axioms cardinality
end Stem125E5Search.Known
