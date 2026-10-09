import Stem125E4Search.Data
import Stem125E5Search.Data
import IndexedD5Certificates.Events
namespace AggregateIncomingTargetCompletion
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 12000000
def extra : Family := [
  ⟨⟨"S0",4,13,138⟩,Stem125E5Search.Data.b_S0_13_138_d4⟩,
  ⟨⟨"S0",4,16,141⟩,Stem125E5Search.Data.b_S0_16_141_d4⟩,
  ⟨⟨"S0",4,21,146⟩,Stem125E5Search.Data.b_S0_21_146_d4⟩,
  ⟨⟨"S0",4,22,147⟩,Stem125E5Search.Data.b_S0_22_147_d4⟩,
  ⟨⟨"S0",3,25,149⟩,Stem125E5Search.Data.b_S0_25_149_d3⟩,
  ⟨⟨"S0",3,26,150⟩,Stem125E5Search.Data.b_S0_26_150_d3⟩,
  ⟨⟨"S0",2,28,151⟩,Stem125E5Search.Data.b_S0_28_151_d2⟩,
  ⟨⟨"S0",2,29,152⟩,Stem125E5Search.Data.b_S0_29_152_d2⟩,
  ⟨⟨"S0",3,34,159⟩,Stem125E4Search.Data.b_S0_34_159_d3⟩,
  ⟨⟨"S0",3,36,161⟩,Stem125E4Search.Data.b_S0_36_161_d3⟩,
  ⟨⟨"S0",2,37,161⟩,Stem125E4Search.Data.b_S0_37_161_d2⟩,
  ⟨⟨"S0",2,39,163⟩,Stem125E4Search.Data.b_S0_39_163_d2⟩,
  ⟨⟨"S0",3,45,170⟩,Stem125E4Search.Data.b_S0_45_170_d3⟩,
  ⟨⟨"S0",4,46,171⟩,Stem125E5Search.Data.b_S0_46_171_d4⟩,
  ⟨⟨"S0",2,47,172⟩,Stem125E5Search.Data.b_S0_47_172_d2⟩,
  ⟨⟨"S0",2,48,172⟩,Stem125E4Search.Data.b_S0_48_172_d2⟩,
  ⟨⟨"S0",4,49,174⟩,Stem125E5Search.Data.b_S0_49_174_d4⟩,
  ⟨⟨"S0",2,50,174⟩,Stem125E5Search.Data.b_S0_50_174_d2⟩,
  ⟨⟨"S0",3,50,174⟩,Stem125E5Search.Data.b_S0_50_174_d3⟩,
  ⟨⟨"S0",2,50,175⟩,Stem125E5Search.Data.b_S0_50_175_d2⟩,
  ⟨⟨"S0",2,53,176⟩,Stem125E5Search.Data.b_S0_53_176_d2⟩,
  ⟨⟨"S0",2,53,177⟩,Stem125E5Search.Data.b_S0_53_177_d2⟩,
  ⟨⟨"S0",3,53,177⟩,Stem125E5Search.Data.b_S0_53_177_d3⟩,
  ⟨⟨"S0",2,56,179⟩,Stem125E5Search.Data.b_S0_56_179_d2⟩,
  ⟨⟨"S0",3,57,182⟩,Stem125E4Search.Data.b_S0_57_182_d3⟩,
  ⟨⟨"S0",2,60,184⟩,Stem125E4Search.Data.b_S0_60_184_d2⟩
]
theorem extra_count : extra.length = 26 := by decide
theorem extra_entries : ∀ e ∈ extra, KeyValid e.key ∧ e.wire.Valid := by
  unfold extra
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_13_138_d4_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_16_141_d4_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_21_146_d4_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_22_147_d4_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_25_149_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_26_150_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_28_151_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_29_152_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_34_159_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_36_161_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_37_161_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_39_163_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_45_170_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_46_171_d4_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_47_172_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_48_172_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_49_174_d4_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_50_174_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_50_174_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_50_175_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_53_176_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_53_177_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_53_177_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E5Search.Data.b_S0_56_179_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_57_182_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Stem125E4Search.Data.b_S0_60_184_d2_complete⟩,?_⟩
  intro x h
  exact False.elim (List.not_mem_nil h)
theorem extra_coherent : Coherent extra := ⟨by decide,extra_entries,by decide⟩
#print axioms extra_coherent
end AggregateIncomingTargetCompletion
