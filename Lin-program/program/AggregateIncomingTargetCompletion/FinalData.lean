import AggregateIncomingTargetCompletion.Targets
import Row3743Successor.Named
namespace AggregateIncomingTargetCompletion.ConditionalData
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 12000
def b_S0_26_149_d2 : WireComparison := ⟨1,3,2,2,0,[false,false,true,false,false,true],[false,false,false,false],[],[],[false,false,false,false],[false,true,false,false,false,true]⟩
theorem b_S0_26_149_d2_complete : b_S0_26_149_d2.Valid := by lin_cert using ()
def b_S0_23_147_d3 : WireComparison := ⟨1,0,2,1,1,[],[true,false],[false,true],[false,true],[true,false],[]⟩
theorem b_S0_23_147_d3_complete : b_S0_23_147_d3.Valid := by lin_cert using ()
def b_S0_23_147_d4 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b_S0_23_147_d4_complete : b_S0_23_147_d4.Valid := by lin_cert using ()
def b_S0_18_143_d5 : WireComparison := ⟨1,1,1,1,0,[false],[true],[],[],[true],[false]⟩
theorem b_S0_18_143_d5_complete : b_S0_18_143_d5.Valid := by lin_cert using ()
end AggregateIncomingTargetCompletion.ConditionalData
namespace AggregateIncomingTargetCompletion.Final
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxHeartbeats 16000000
def extra : Family := [
  ⟨⟨"S0",5,18,143⟩,ConditionalData.b_S0_18_143_d5⟩,
  ⟨⟨"S0",3,23,147⟩,ConditionalData.b_S0_23_147_d3⟩,
  ⟨⟨"S0",4,23,147⟩,ConditionalData.b_S0_23_147_d4⟩,
  ⟨⟨"S0",2,26,149⟩,ConditionalData.b_S0_26_149_d2⟩,
  ⟨⟨"S0",2,27,150⟩,Row3743Successor.Data.b_S0_27_150_d2⟩,
  ⟨⟨"S0",3,27,150⟩,Row3743Successor.Data.b_S0_27_150_d3⟩,
  ⟨⟨"S0",2,30,152⟩,Row3743Successor.Data.b_S0_30_152_d2⟩,
  ⟨⟨"S0",2,31,153⟩,Row3743Successor.Data.b_S0_31_153_d2⟩,
  ⟨⟨"S0",3,31,153⟩,Row3743Successor.Data.b_S0_31_153_d3⟩,
  ⟨⟨"S0",4,31,153⟩,Row3743Successor.Data.b_S0_31_153_d4⟩,
  ⟨⟨"S0",2,32,154⟩,Row3743Successor.Data.b_S0_32_154_d2⟩,
  ⟨⟨"S0",2,34,155⟩,Row3743Successor.Data.b_S0_34_155_d2⟩,
  ⟨⟨"S0",2,35,156⟩,Row3743Successor.Data.b_S0_35_156_d2⟩,
  ⟨⟨"S0",3,35,156⟩,Row3743Successor.Data.b_S0_35_156_d3⟩,
  ⟨⟨"S0",2,38,158⟩,Row3743Successor.Data.b_S0_38_158_d2⟩
]
theorem extra_count : extra.length = 15 := by decide
theorem extra_entries : ∀ e ∈ extra, KeyValid e.key ∧ e.wire.Valid := by
  unfold extra
  refine List.forall_mem_cons.mpr ⟨⟨by decide,ConditionalData.b_S0_18_143_d5_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,ConditionalData.b_S0_23_147_d3_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,ConditionalData.b_S0_23_147_d4_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,ConditionalData.b_S0_26_149_d2_complete⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_27_150_d2_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_27_150_d3_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_30_152_d2_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_31_153_d2_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_31_153_d3_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_31_153_d4_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_32_154_d2_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_34_155_d2_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_35_156_d2_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_35_156_d3_valid⟩,?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide,Row3743Successor.Data.b_S0_38_158_d2_valid⟩,?_⟩
  intro x h
  exact False.elim (List.not_mem_nil h)
theorem extra_coherent : Coherent extra := ⟨by decide,extra_entries,by decide⟩
#print axioms extra_coherent
end AggregateIncomingTargetCompletion.Final
