import Stem125E5Search.Branches
import Row3151BranchCertificates.Semantics
import Row3992BranchCertificates.Semantics
namespace Stem125E5Search.Family
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000
def fifteenSource (i : Fin 4) : WireComparison := match i with
  | ⟨0,_⟩ => Row3151BranchCertificates.Semantics.comparison false false
  | ⟨1,_⟩ => Row3151BranchCertificates.Semantics.comparison false true
  | ⟨2,_⟩ => Row3151BranchCertificates.Semantics.comparison true false
  | ⟨3,_⟩ => Row3151BranchCertificates.Semantics.comparison true true
  | ⟨n+4,h⟩ => False.elim (by omega)
def fifteenFamily (i : Fin 4) : Family := [
  ⟨⟨"S0",3,11,137⟩,AggregateD5Conditional.Data.b_S0_11_137_d3⟩,
  ⟨⟨"S0",3,15,140⟩,AggregateD5Conditional.Data.b_S0_15_140_d3⟩,
  ⟨⟨"S0",3,19,143⟩,AggregateD5Conditional.Data.b_S0_19_143_d3⟩,
  ⟨⟨"S0",4,11,137⟩,fifteenSource i⟩,
  ⟨⟨"S0",4,15,140⟩,Data.fifteen i⟩]
theorem fifteen_coherent (i : Fin 4) : Coherent (fifteenFamily i) := by fin_cases i <;> lin_cert using ()
def twentyfiveSource (i : Fin 20) : WireComparison := match i with
  | ⟨0,_⟩ => Row3992BranchCertificates.Imports.comparison false false false
  | ⟨1,_⟩ => Row3992BranchCertificates.Imports.comparison false false false
  | ⟨2,_⟩ => Row3992BranchCertificates.Imports.comparison false false false
  | ⟨3,_⟩ => Row3992BranchCertificates.Imports.comparison false false false
  | ⟨4,_⟩ => Row3992BranchCertificates.Imports.comparison false false true
  | ⟨5,_⟩ => Row3992BranchCertificates.Imports.comparison false false true
  | ⟨6,_⟩ => Row3992BranchCertificates.Imports.comparison false true false
  | ⟨7,_⟩ => Row3992BranchCertificates.Imports.comparison false true false
  | ⟨8,_⟩ => Row3992BranchCertificates.Imports.comparison false true true
  | ⟨9,_⟩ => Row3992BranchCertificates.Imports.comparison false true true
  | ⟨10,_⟩ => Row3992BranchCertificates.Imports.comparison true false false
  | ⟨11,_⟩ => Row3992BranchCertificates.Imports.comparison true false false
  | ⟨12,_⟩ => Row3992BranchCertificates.Imports.comparison true false false
  | ⟨13,_⟩ => Row3992BranchCertificates.Imports.comparison true false false
  | ⟨14,_⟩ => Row3992BranchCertificates.Imports.comparison true false true
  | ⟨15,_⟩ => Row3992BranchCertificates.Imports.comparison true false true
  | ⟨16,_⟩ => Row3992BranchCertificates.Imports.comparison true true false
  | ⟨17,_⟩ => Row3992BranchCertificates.Imports.comparison true true false
  | ⟨18,_⟩ => Row3992BranchCertificates.Imports.comparison true true true
  | ⟨19,_⟩ => Row3992BranchCertificates.Imports.comparison true true true
  | ⟨n+20,h⟩ => False.elim (by omega)
def twentyfiveFamily (i : Fin 20) : Family := [
  ⟨⟨"S0",3,21,147⟩,AggregateLeibniz3564Conditional.Source.comparison⟩,
  ⟨⟨"S0",3,25,150⟩,AggregateD5Conditional.Data.b_S0_25_150_d3⟩,
  ⟨⟨"S0",3,29,153⟩,Data.b_S0_29_153_d3⟩,
  ⟨⟨"S0",4,21,147⟩,twentyfiveSource i⟩,
  ⟨⟨"S0",4,25,150⟩,Data.twentyfive i⟩]
theorem twentyfive_coherent (i : Fin 20) : Coherent (twentyfiveFamily i) := by fin_cases i <;> lin_cert using ()
def nineFamily (prefixIndex : Fin 2) (out : Fin 2) (oldBranch : Bool) : Family := [
  ⟨⟨"S0",3,5,131⟩,AggregateD5Conditional.Data.b_S0_5_131_d3⟩,
  ⟨⟨"S0",3,9,134⟩,Stem125E4Search.Data.branch oldBranch⟩,
  ⟨⟨"S0",3,13,137⟩,Data.target9prefix prefixIndex⟩,
  ⟨⟨"S0",4,9,134⟩,Data.nine out⟩]
theorem nine_coherent (prefixIndex : Fin 2) (out : Fin 2) (oldBranch : Bool) : Coherent (nineFamily prefixIndex out oldBranch) := by fin_cases prefixIndex <;> fin_cases out <;> cases oldBranch <;> lin_cert using ()
def fourteenFamily (i : Fin 3) : Family := [
  ⟨⟨"S0",3,10,136⟩,Data.source14prefix (Branches.source14Branch i)⟩,
  ⟨⟨"S0",3,14,139⟩,AggregateD5Conditional.Data.b_S0_14_139_d3⟩,
  ⟨⟨"S0",3,18,142⟩,AggregateD5Conditional.Data.b_S0_18_142_d3⟩,
  ⟨⟨"S0",4,14,139⟩,Data.fourteen i⟩]
theorem fourteen_coherent (i : Fin 3) : Coherent (fourteenFamily i) := by fin_cases i <;> lin_cert using ()
#print axioms fifteen_coherent
#print axioms twentyfive_coherent
#print axioms nine_coherent
#print axioms fourteen_coherent
def knownFamily : Family := [
  ⟨⟨"S0",2,-1,126⟩,AggregateD5Conditional.Data.b_S0_neg1_126_d2⟩,
  ⟨⟨"S0",2,10,134⟩,AggregateD5Conditional.Data.b_S0_10_134_d2⟩,
  ⟨⟨"S0",2,10,135⟩,AggregateD5Conditional.Data.b_S0_10_135_d2⟩,
  ⟨⟨"S0",2,10,136⟩,AggregateD5Conditional.Data.b_S0_10_136_d2⟩,
  ⟨⟨"S0",2,11,136⟩,AggregateD5Conditional.Data.b_S0_11_136_d2⟩,
  ⟨⟨"S0",2,11,138⟩,AggregateD5Conditional.Data.b_S0_11_138_d2⟩,
  ⟨⟨"S0",2,12,137⟩,AggregateD5Conditional.Data.b_S0_12_137_d2⟩,
  ⟨⟨"S0",2,12,138⟩,AggregateD5Conditional.Data.b_S0_12_138_d2⟩,
  ⟨⟨"S0",2,13,136⟩,AggregateD5Conditional.Data.b_S0_13_136_d2⟩,
  ⟨⟨"S0",2,13,138⟩,AggregateD5Conditional.Data.b_S0_13_138_d2⟩,
  ⟨⟨"S0",2,13,139⟩,AggregateD5Conditional.Data.b_S0_13_139_d2⟩,
  ⟨⟨"S0",2,14,138⟩,AggregateD5Conditional.Data.b_S0_14_138_d2⟩,
  ⟨⟨"S0",2,14,139⟩,AggregateD5Conditional.Data.b_S0_14_139_d2⟩,
  ⟨⟨"S0",2,14,140⟩,AggregateD5Conditional.Data.b_S0_14_140_d2⟩,
  ⟨⟨"S0",2,14,141⟩,AggregateD5Conditional.Data.b_S0_14_141_d2⟩,
  ⟨⟨"S0",2,15,139⟩,AggregateD5Conditional.Data.b_S0_15_139_d2⟩,
  ⟨⟨"S0",2,15,140⟩,AggregateD5Conditional.Data.b_S0_15_140_d2⟩,
  ⟨⟨"S0",2,15,141⟩,AggregateD5Conditional.Data.b_S0_15_141_d2⟩,
  ⟨⟨"S0",2,15,142⟩,AggregateD5Conditional.Data.b_S0_15_142_d2⟩,
  ⟨⟨"S0",2,16,140⟩,AggregateD5Conditional.Data.b_S0_16_140_d2⟩,
  ⟨⟨"S0",2,16,141⟩,AggregateD5Conditional.Data.b_S0_16_141_d2⟩,
  ⟨⟨"S0",2,17,141⟩,AggregateD5Conditional.Data.b_S0_17_141_d2⟩,
  ⟨⟨"S0",2,17,142⟩,AggregateD5Conditional.Data.b_S0_17_142_d2⟩,
  ⟨⟨"S0",2,17,143⟩,AggregateD5Conditional.Data.b_S0_17_143_d2⟩,
  ⟨⟨"S0",2,18,141⟩,AggregateD5Conditional.Data.b_S0_18_141_d2⟩,
  ⟨⟨"S0",2,18,143⟩,AggregateD5Conditional.Data.b_S0_18_143_d2⟩,
  ⟨⟨"S0",2,18,144⟩,AggregateD5Conditional.Data.b_S0_18_144_d2⟩,
  ⟨⟨"S0",2,19,143⟩,AggregateD5Conditional.Data.b_S0_19_143_d2⟩,
  ⟨⟨"S0",2,19,144⟩,AggregateD5Conditional.Data.b_S0_19_144_d2⟩,
  ⟨⟨"S0",2,19,145⟩,AggregateD5Conditional.Data.b_S0_19_145_d2⟩,
  ⟨⟨"S0",2,2,128⟩,AggregateD5Conditional.Data.b_S0_2_128_d2⟩,
  ⟨⟨"S0",2,20,143⟩,AggregateD5Conditional.Data.b_S0_20_143_d2⟩,
  ⟨⟨"S0",2,20,144⟩,AggregateD5Conditional.Data.b_S0_20_144_d2⟩,
  ⟨⟨"S0",2,20,145⟩,AggregateD5Conditional.Data.b_S0_20_145_d2⟩,
  ⟨⟨"S0",2,21,145⟩,AggregateD5Conditional.Data.b_S0_21_145_d2⟩,
  ⟨⟨"S0",2,21,146⟩,AggregateD5Conditional.Data.b_S0_21_146_d2⟩,
  ⟨⟨"S0",2,22,146⟩,AggregateD5Conditional.Data.b_S0_22_146_d2⟩,
  ⟨⟨"S0",2,22,147⟩,AggregateD5Conditional.Data.b_S0_22_147_d2⟩,
  ⟨⟨"S0",2,23,146⟩,AggregateD5Conditional.Data.b_S0_23_146_d2⟩,
  ⟨⟨"S0",2,23,148⟩,AggregateD5Conditional.Data.b_S0_23_148_d2⟩,
  ⟨⟨"S0",2,24,148⟩,AggregateD5Conditional.Data.b_S0_24_148_d2⟩,
  ⟨⟨"S0",2,24,151⟩,AggregateD5Conditional.Data.b_S0_24_151_d2⟩,
  ⟨⟨"S0",2,25,148⟩,AggregateD5Conditional.Data.b_S0_25_148_d2⟩,
  ⟨⟨"S0",2,25,149⟩,AggregateD5Conditional.Data.b_S0_25_149_d2⟩,
  ⟨⟨"S0",2,26,150⟩,AggregateD5Conditional.Data.b_S0_26_150_d2⟩,
  ⟨⟨"S0",2,27,153⟩,AggregateD5Conditional.Data.b_S0_27_153_d2⟩,
  ⟨⟨"S0",2,28,151⟩,Data.b_S0_28_151_d2⟩,
  ⟨⟨"S0",2,28,154⟩,AggregateD5Conditional.Data.b_S0_28_154_d2⟩,
  ⟨⟨"S0",2,29,152⟩,Data.b_S0_29_152_d2⟩,
  ⟨⟨"S0",2,3,129⟩,AggregateD5Conditional.Data.b_S0_3_129_d2⟩,
  ⟨⟨"S0",2,30,155⟩,AggregateD5Conditional.Data.b_S0_30_155_d2⟩,
  ⟨⟨"S0",2,31,156⟩,AggregateD5Conditional.Data.b_S0_31_156_d2⟩,
  ⟨⟨"S0",2,32,157⟩,AggregateD5Conditional.Data.b_S0_32_157_d2⟩,
  ⟨⟨"S0",2,32,159⟩,AggregateD5Conditional.Data.b_S0_32_159_d2⟩,
  ⟨⟨"S0",2,34,158⟩,AggregateD5Conditional.Data.b_S0_34_158_d2⟩,
  ⟨⟨"S0",2,35,159⟩,AggregateD5Conditional.Data.b_S0_35_159_d2⟩,
  ⟨⟨"S0",2,35,161⟩,AggregateD5Conditional.Data.b_S0_35_161_d2⟩,
  ⟨⟨"S0",2,36,162⟩,AggregateD5Conditional.Data.b_S0_36_162_d2⟩,
  ⟨⟨"S0",2,36,163⟩,AggregateD5Conditional.Data.b_S0_36_163_d2⟩,
  ⟨⟨"S0",2,38,161⟩,AggregateD5Conditional.Data.b_S0_38_161_d2⟩,
  ⟨⟨"S0",2,38,163⟩,AggregateD5Conditional.Data.b_S0_38_163_d2⟩,
  ⟨⟨"S0",2,39,164⟩,AggregateD5Conditional.Data.b_S0_39_164_d2⟩,
  ⟨⟨"S0",2,39,165⟩,AggregateD5Conditional.Data.b_S0_39_165_d2⟩,
  ⟨⟨"S0",2,39,166⟩,AggregateD5Conditional.Data.b_S0_39_166_d2⟩,
  ⟨⟨"S0",2,4,131⟩,AggregateD5Conditional.Data.b_S0_4_131_d2⟩,
  ⟨⟨"S0",2,40,165⟩,AggregateD5Conditional.Data.b_S0_40_165_d2⟩,
  ⟨⟨"S0",2,40,166⟩,AggregateD5Conditional.Data.b_S0_40_166_d2⟩,
  ⟨⟨"S0",2,42,166⟩,AggregateD5Conditional.Data.b_S0_42_166_d2⟩,
  ⟨⟨"S0",2,42,167⟩,AggregateD5Conditional.Data.b_S0_42_167_d2⟩,
  ⟨⟨"S0",2,42,168⟩,AggregateD5Conditional.Data.b_S0_42_168_d2⟩,
  ⟨⟨"S0",2,42,169⟩,AggregateD5Conditional.Data.b_S0_42_169_d2⟩,
  ⟨⟨"S0",2,43,167⟩,AggregateD5Conditional.Data.b_S0_43_167_d2⟩,
  ⟨⟨"S0",2,43,168⟩,AggregateD5Conditional.Data.b_S0_43_168_d2⟩,
  ⟨⟨"S0",2,43,169⟩,AggregateD5Conditional.Data.b_S0_43_169_d2⟩,
  ⟨⟨"S0",2,44,169⟩,AggregateD5Conditional.Data.b_S0_44_169_d2⟩,
  ⟨⟨"S0",2,45,170⟩,AggregateD5Conditional.Data.b_S0_45_170_d2⟩,
  ⟨⟨"S0",2,45,171⟩,AggregateD5Conditional.Data.b_S0_45_171_d2⟩,
  ⟨⟨"S0",2,45,172⟩,AggregateD5Conditional.Data.b_S0_45_172_d2⟩,
  ⟨⟨"S0",2,46,169⟩,AggregateD5Conditional.Data.b_S0_46_169_d2⟩,
  ⟨⟨"S0",2,46,170⟩,AggregateD5Conditional.Data.b_S0_46_170_d2⟩,
  ⟨⟨"S0",2,46,171⟩,AggregateD5Conditional.Data.b_S0_46_171_d2⟩,
  ⟨⟨"S0",2,46,172⟩,AggregateD5Conditional.Data.b_S0_46_172_d2⟩,
  ⟨⟨"S0",2,47,171⟩,AggregateD5Conditional.Data.b_S0_47_171_d2⟩,
  ⟨⟨"S0",2,47,172⟩,Data.b_S0_47_172_d2⟩,
  ⟨⟨"S0",2,48,173⟩,AggregateD5Conditional.Data.b_S0_48_173_d2⟩,
  ⟨⟨"S0",2,48,174⟩,AggregateD5Conditional.Data.b_S0_48_174_d2⟩,
  ⟨⟨"S0",2,49,173⟩,AggregateD5Conditional.Data.b_S0_49_173_d2⟩,
  ⟨⟨"S0",2,49,174⟩,AggregateD5Conditional.Data.b_S0_49_174_d2⟩,
  ⟨⟨"S0",2,49,175⟩,AggregateD5Conditional.Data.b_S0_49_175_d2⟩,
  ⟨⟨"S0",2,5,130⟩,AggregateD5Conditional.Data.b_S0_5_130_d2⟩,
  ⟨⟨"S0",2,50,173⟩,AggregateD5Conditional.Data.b_S0_50_173_d2⟩,
  ⟨⟨"S0",2,50,174⟩,Data.b_S0_50_174_d2⟩,
  ⟨⟨"S0",2,50,175⟩,Data.b_S0_50_175_d2⟩,
  ⟨⟨"S0",2,51,176⟩,AggregateD5Conditional.Data.b_S0_51_176_d2⟩,
  ⟨⟨"S0",2,52,176⟩,AggregateD5Conditional.Data.b_S0_52_176_d2⟩,
  ⟨⟨"S0",2,52,177⟩,AggregateD5Conditional.Data.b_S0_52_177_d2⟩,
  ⟨⟨"S0",2,53,176⟩,Data.b_S0_53_176_d2⟩,
  ⟨⟨"S0",2,53,177⟩,Data.b_S0_53_177_d2⟩,
  ⟨⟨"S0",2,53,178⟩,AggregateD5Conditional.Data.b_S0_53_178_d2⟩,
  ⟨⟨"S0",2,55,179⟩,AggregateD5Conditional.Data.b_S0_55_179_d2⟩,
  ⟨⟨"S0",2,56,179⟩,Data.b_S0_56_179_d2⟩,
  ⟨⟨"S0",2,56,180⟩,AggregateD5Conditional.Data.b_S0_56_180_d2⟩,
  ⟨⟨"S0",2,59,182⟩,AggregateD5Conditional.Data.b_S0_59_182_d2⟩,
  ⟨⟨"S0",2,6,131⟩,AggregateD5Conditional.Data.b_S0_6_131_d2⟩,
  ⟨⟨"S0",2,6,133⟩,AggregateD5Conditional.Data.b_S0_6_133_d2⟩,
  ⟨⟨"S0",2,7,132⟩,AggregateD5Conditional.Data.b_S0_7_132_d2⟩,
  ⟨⟨"S0",2,7,133⟩,AggregateD5Conditional.Data.b_S0_7_133_d2⟩,
  ⟨⟨"S0",2,8,134⟩,AggregateD5Conditional.Data.b_S0_8_134_d2⟩,
  ⟨⟨"S0",2,9,133⟩,AggregateD5Conditional.Data.b_S0_9_133_d2⟩,
  ⟨⟨"S0",2,9,135⟩,AggregateD5Conditional.Data.b_S0_9_135_d2⟩,
  ⟨⟨"S0",2,9,136⟩,AggregateD5Conditional.Data.b_S0_9_136_d2⟩,
  ⟨⟨"S0",3,10,134⟩,AggregateD5Conditional.Data.b_S0_10_134_d3⟩,
  ⟨⟨"S0",3,11,136⟩,AggregateD5Conditional.Data.b_S0_11_136_d3⟩,
  ⟨⟨"S0",3,12,138⟩,AggregateD5Conditional.Data.b_S0_12_138_d3⟩,
  ⟨⟨"S0",3,13,138⟩,AggregateD5Conditional.Data.b_S0_13_138_d3⟩,
  ⟨⟨"S0",3,14,140⟩,AggregateD5Conditional.Data.b_S0_14_140_d3⟩,
  ⟨⟨"S0",3,15,139⟩,AggregateD5Conditional.Data.b_S0_15_139_d3⟩,
  ⟨⟨"S0",3,16,141⟩,AggregateD5Conditional.Data.b_S0_16_141_d3⟩,
  ⟨⟨"S0",3,17,141⟩,AggregateD5Conditional.Data.b_S0_17_141_d3⟩,
  ⟨⟨"S0",3,17,143⟩,AggregateD5Conditional.Data.b_S0_17_143_d3⟩,
  ⟨⟨"S0",3,18,143⟩,AggregateD5Conditional.Data.b_S0_18_143_d3⟩,
  ⟨⟨"S0",3,18,144⟩,AggregateD5Conditional.Data.b_S0_18_144_d3⟩,
  ⟨⟨"S0",3,2,128⟩,AggregateD5Conditional.Data.b_S0_2_128_d3⟩,
  ⟨⟨"S0",3,20,144⟩,AggregateD5Conditional.Data.b_S0_20_144_d3⟩,
  ⟨⟨"S0",3,21,146⟩,AggregateD5Conditional.Data.b_S0_21_146_d3⟩,
  ⟨⟨"S0",3,22,146⟩,AggregateD5Conditional.Data.b_S0_22_146_d3⟩,
  ⟨⟨"S0",3,22,147⟩,AggregateD5Conditional.Data.b_S0_22_147_d3⟩,
  ⟨⟨"S0",3,25,149⟩,Data.b_S0_25_149_d3⟩,
  ⟨⟨"S0",3,26,150⟩,Data.b_S0_26_150_d3⟩,
  ⟨⟨"S0",3,27,153⟩,AggregateD5Conditional.Data.b_S0_27_153_d3⟩,
  ⟨⟨"S0",3,31,156⟩,AggregateD5Conditional.Data.b_S0_31_156_d3⟩,
  ⟨⟨"S0",3,35,159⟩,AggregateD5Conditional.Data.b_S0_35_159_d3⟩,
  ⟨⟨"S0",3,35,161⟩,AggregateD5Conditional.Data.b_S0_35_161_d3⟩,
  ⟨⟨"S0",3,39,164⟩,AggregateD5Conditional.Data.b_S0_39_164_d3⟩,
  ⟨⟨"S0",3,39,165⟩,AggregateD5Conditional.Data.b_S0_39_165_d3⟩,
  ⟨⟨"S0",3,42,168⟩,AggregateD5Conditional.Data.b_S0_42_168_d3⟩,
  ⟨⟨"S0",3,43,167⟩,AggregateD5Conditional.Data.b_S0_43_167_d3⟩,
  ⟨⟨"S0",3,43,168⟩,AggregateD5Conditional.Data.b_S0_43_168_d3⟩,
  ⟨⟨"S0",3,45,171⟩,AggregateD5Conditional.Data.b_S0_45_171_d3⟩,
  ⟨⟨"S0",3,46,171⟩,AggregateD5Conditional.Data.b_S0_46_171_d3⟩,
  ⟨⟨"S0",3,47,171⟩,AggregateD5Conditional.Data.b_S0_47_171_d3⟩,
  ⟨⟨"S0",3,48,174⟩,AggregateD5Conditional.Data.b_S0_48_174_d3⟩,
  ⟨⟨"S0",3,49,174⟩,AggregateD5Conditional.Data.b_S0_49_174_d3⟩,
  ⟨⟨"S0",3,50,174⟩,Data.b_S0_50_174_d3⟩,
  ⟨⟨"S0",3,52,177⟩,AggregateD5Conditional.Data.b_S0_52_177_d3⟩,
  ⟨⟨"S0",3,53,177⟩,Data.b_S0_53_177_d3⟩,
  ⟨⟨"S0",3,56,180⟩,AggregateD5Conditional.Data.b_S0_56_180_d3⟩,
  ⟨⟨"S0",3,6,131⟩,AggregateD5Conditional.Data.b_S0_6_131_d3⟩,
  ⟨⟨"S0",3,7,133⟩,AggregateD5Conditional.Data.b_S0_7_133_d3⟩,
  ⟨⟨"S0",3,9,135⟩,AggregateD5Conditional.Data.b_S0_9_135_d3⟩,
  ⟨⟨"S0",4,11,136⟩,AggregateD5Conditional.Data.b_S0_11_136_d4⟩,
  ⟨⟨"S0",4,13,138⟩,Data.b_S0_13_138_d4⟩,
  ⟨⟨"S0",4,16,141⟩,Data.b_S0_16_141_d4⟩,
  ⟨⟨"S0",4,18,143⟩,AggregateD5Conditional.Data.b_S0_18_143_d4⟩,
  ⟨⟨"S0",4,21,146⟩,Data.b_S0_21_146_d4⟩,
  ⟨⟨"S0",4,22,147⟩,Data.b_S0_22_147_d4⟩,
  ⟨⟨"S0",4,31,156⟩,AggregateD5Conditional.Data.b_S0_31_156_d4⟩,
  ⟨⟨"S0",4,39,164⟩,AggregateD5Conditional.Data.b_S0_39_164_d4⟩,
  ⟨⟨"S0",4,43,168⟩,AggregateD5Conditional.Data.b_S0_43_168_d4⟩,
  ⟨⟨"S0",4,46,171⟩,Data.b_S0_46_171_d4⟩,
  ⟨⟨"S0",4,49,174⟩,Data.b_S0_49_174_d4⟩,
  ⟨⟨"S0",4,52,177⟩,AggregateD5Conditional.Data.b_S0_52_177_d4⟩,
  ⟨⟨"S0",4,6,131⟩,AggregateD5Conditional.Data.b_S0_6_131_d4⟩
]
theorem known_coherent : Coherent knownFamily := by lin_cert using ()
#print axioms known_coherent
end Stem125E5Search.Family
