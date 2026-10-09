import AllClaimZeroTargetCertificates.Basic
namespace AllClaimZeroTargetCertificates.Data
open LinearCertificates PageTransitionCertificates
def b_Cnu_15_140_d2 : WireComparison := ⟨1,4,6,6,3,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false],[false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,true,false],[false,false,true,false,false,false,true,false,false,false,true,false,false,false,false,false,false,false],[false,false,true,false,false,false,false,false,false,true,false,false,true,false,false,false,false,false],[false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,true,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false]⟩
theorem b_Cnu_15_140_d2_complete : b_Cnu_15_140_d2.Valid := by lin_cert using ()
def b_Cnu_18_142_d2 : WireComparison := ⟨1,4,2,5,0,[false,false,false,false,false,false,false,false],[false,true,false,false,false,false,true,false,false,true],[],[],[false,false,true,false,false,false,false,false,true,true],[false,false,false,false,false,false,false,false]⟩
theorem b_Cnu_18_142_d2_complete : b_Cnu_18_142_d2.Valid := by lin_cert using ()
theorem b_Cnu_18_142_d2_zero (x : Homology (matrixOf 4 2 b_Cnu_18_142_d2.outgoing) (matrixOf 2 5 b_Cnu_18_142_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_Cnu_18_142_d2.comparison b_Cnu_18_142_d2_complete.2 x
def b_Cnu_21_144_d2 : WireComparison := ⟨1,2,2,5,2,[false,false,false,false],[false,false,false,false,false,false,false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false,false,false,false,false,false,false],[false,false,false,false]⟩
theorem b_Cnu_21_144_d2_complete : b_Cnu_21_144_d2.Valid := by lin_cert using ()
def b_Cnu_5_132_d2 : WireComparison := ⟨1,2,1,0,0,[false,true],[],[],[],[],[false,true]⟩
theorem b_Cnu_5_132_d2_complete : b_Cnu_5_132_d2.Valid := by lin_cert using ()
theorem b_Cnu_5_132_d2_zero (x : Homology (matrixOf 2 1 b_Cnu_5_132_d2.outgoing) (matrixOf 1 0 b_Cnu_5_132_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_Cnu_5_132_d2.comparison b_Cnu_5_132_d2_complete.2 x
def b_S0_neg3_124_d2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_neg3_124_d2_complete : b_S0_neg3_124_d2.Valid := by lin_cert using ()
theorem b_S0_neg3_124_d2_zero (x : Homology (matrixOf 0 0 b_S0_neg3_124_d2.outgoing) (matrixOf 0 0 b_S0_neg3_124_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_neg3_124_d2.comparison b_S0_neg3_124_d2_complete.2 x
def b_S0_0_126_d2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_0_126_d2_complete : b_S0_0_126_d2.Valid := by lin_cert using ()
theorem b_S0_0_126_d2_zero (x : Homology (matrixOf 0 0 b_S0_0_126_d2.outgoing) (matrixOf 0 0 b_S0_0_126_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_0_126_d2.comparison b_S0_0_126_d2_complete.2 x
def b_S0_1_127_d2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_1_127_d2_complete : b_S0_1_127_d2.Valid := by lin_cert using ()
theorem b_S0_1_127_d2_zero (x : Homology (matrixOf 0 0 b_S0_1_127_d2.outgoing) (matrixOf 0 0 b_S0_1_127_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_1_127_d2.comparison b_S0_1_127_d2_complete.2 x
def b_S0_10_133_d2 : WireComparison := ⟨1,3,3,1,1,[false,false,false,false,false,false,true,true,false],[false,false,true],[true,true,false],[false,true,false],[false,false,true],[false,false,true,false,false,false,false,false,false]⟩
theorem b_S0_10_133_d2_complete : b_S0_10_133_d2.Valid := by lin_cert using ()
def b_S0_10_134_d2 : WireComparison := ⟨1,3,5,2,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,true,false,false,false,true],[true,false,false,false,false,true,false,false,false,false,false,false,true,false,false,true,false,true,true,false],[true,false,false,false,false,false,true,false,false,false,false,true,true,false,true,true,false,false,true,false],[false,false,false,false,false,false,false,true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_10_134_d2_complete : b_S0_10_134_d2.Valid := by lin_cert using ()
def b_S0_10_135_d2 : WireComparison := ⟨1,5,5,6,1,[false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,true,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,false],[true,false,false,false,false],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,true,true]⟩
theorem b_S0_10_135_d2_complete : b_S0_10_135_d2.Valid := by lin_cert using ()
def b_S0_11_134_d2 : WireComparison := ⟨1,3,5,3,3,[false,false,false,false,false,false,false,false,false,false,false,true,false,true,false],[false,false,false,false,false,false,false,false,false,false,false,false,true,true,true],[false,true,false,false,true,true,true,false,false,false,true,true,false,false,false],[false,false,true,false,false,true,false,false,false,false,true,false,false,true,false],[false,false,false,false,true,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_11_134_d2_complete : b_S0_11_134_d2.Valid := by lin_cert using ()
def b_S0_11_135_d2 : WireComparison := ⟨1,3,5,5,2,[false,false,false,false,false,false,false,false,false,false,false,true,true,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,true],[true,false,false,true,false,true,false,false,false,false],[true,false,false,false,false,false,false,true,false,false],[false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_11_135_d2_complete : b_S0_11_135_d2.Valid := by lin_cert using ()
def b_S0_11_136_d2 : WireComparison := ⟨1,4,5,6,4,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,true,true,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false],[false,true,false,false,false,false,false,true,false,false,false,false,false,true,false,true,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true]⟩
theorem b_S0_11_136_d2_complete : b_S0_11_136_d2.Valid := by lin_cert using ()
def b_S0_12_134_d2 : WireComparison := ⟨1,1,3,3,2,[false,false,false],[false,false,false,false,false,false,true,true,false],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,true,false,false,false,false,false,false],[false,false,false]⟩
theorem b_S0_12_134_d2_complete : b_S0_12_134_d2.Valid := by lin_cert using ()
def b_S0_12_135_d2 : WireComparison := ⟨1,1,3,5,3,[false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,true,false,false,true,true],[true,false,false,false,true,false,false,true,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false]⟩
theorem b_S0_12_135_d2_complete : b_S0_12_135_d2.Valid := by lin_cert using ()
def b_S0_12_136_d2 : WireComparison := ⟨1,3,5,5,1,[false,false,false,false,false,false,false,false,false,false,false,true,true,false,false],[false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,true,false,true],[true,false,false,false,false],[true,false,false,false,false],[false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,true,true],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_12_136_d2_complete : b_S0_12_136_d2.Valid := by lin_cert using ()
def b_S0_12_137_d2 : WireComparison := ⟨1,5,5,5,2,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,true,false,true,true],[false,false,false,true,false,false,false,false,true,true],[false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_12_137_d2_complete : b_S0_12_137_d2.Valid := by lin_cert using ()
def b_S0_13_135_d2 : WireComparison := ⟨1,2,3,5,2,[false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,true,false],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem b_S0_13_135_d2_complete : b_S0_13_135_d2.Valid := by lin_cert using ()
def b_S0_13_136_d2 : WireComparison := ⟨1,2,3,5,2,[false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,true,false,false],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem b_S0_13_136_d2_complete : b_S0_13_136_d2.Valid := by lin_cert using ()
def b_S0_13_137_d2 : WireComparison := ⟨1,3,4,5,3,[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[true,false,false,false,true,false,false,false,true,false,false,false],[true,false,false,false,false,true,false,false,false,false,true,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_13_137_d2_complete : b_S0_13_137_d2.Valid := by lin_cert using ()
def b_S0_14_136_d2 : WireComparison := ⟨1,3,1,3,1,[false,false,false],[false,false,false],[true],[true],[false,false,false],[false,false,false]⟩
theorem b_S0_14_136_d2_complete : b_S0_14_136_d2.Valid := by lin_cert using ()
def b_S0_14_137_d2 : WireComparison := ⟨1,3,3,5,2,[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,true,false,false],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,false,false,false,true,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_14_137_d2_complete : b_S0_14_137_d2.Valid := by lin_cert using ()
def b_S0_14_138_d2 : WireComparison := ⟨1,3,5,5,1,[false,false,false,false,false,true,true,false,false,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,true,false,false,false],[false,false,true,false,false],[false,false,true,false,false],[false,false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,true,true,false,false,true,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_14_138_d2_complete : b_S0_14_138_d2.Valid := by lin_cert using ()
def b_S0_15_136_d2 : WireComparison := ⟨1,3,2,3,2,[false,false,false,false,false,false],[false,false,false,false,false,false],[false,true,true,false],[false,true,true,false],[false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem b_S0_15_136_d2_complete : b_S0_15_136_d2.Valid := by lin_cert using ()
def b_S0_15_137_d2 : WireComparison := ⟨1,4,2,3,1,[false,false,false,false,false,false,true,false],[false,false,false,false,false,false],[false,true],[false,true],[false,false,false,false,false,false],[false,false,false,true,false,false,false,false]⟩
theorem b_S0_15_137_d2_complete : b_S0_15_137_d2.Valid := by lin_cert using ()
def b_S0_15_138_d2 : WireComparison := ⟨1,2,3,4,3,[false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem b_S0_15_138_d2_complete : b_S0_15_138_d2.Valid := by lin_cert using ()
def b_S0_15_139_d2 : WireComparison := ⟨1,4,4,5,2,[false,false,false,false,false,false,false,false,false,true,true,true,false,true,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[true,false,false,true,false,false,false,true],[true,false,false,false,false,false,false,true],[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,true,false,false,true,true,false,false,false,false]⟩
theorem b_S0_15_139_d2_complete : b_S0_15_139_d2.Valid := by lin_cert using ()
def b_S0_16_137_d2 : WireComparison := ⟨1,3,3,1,2,[false,false,false,false,false,false,true,false,false],[false,false,false],[false,false,false,true,true,false],[false,false,true,false,true,false],[false,false,false],[false,false,true,false,false,false,false,false,false]⟩
theorem b_S0_16_137_d2_complete : b_S0_16_137_d2.Valid := by lin_cert using ()
def b_S0_16_138_d2 : WireComparison := ⟨1,3,3,3,3,[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false],[false,true,false,true,false,false,false,true,true],[false,true,false,true,false,false,true,false,true],[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_16_138_d2_complete : b_S0_16_138_d2.Valid := by lin_cert using ()
def b_S0_16_139_d2 : WireComparison := ⟨1,3,3,5,1,[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,true,true,false,false,false,false,true,false,false,false],[true,false,false],[true,false,false],[false,true,true,false,false,true,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_16_139_d2_complete : b_S0_16_139_d2.Valid := by lin_cert using ()
def b_S0_16_140_d2 : WireComparison := ⟨1,3,5,3,3,[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false],[false,false,false,false,false,false,true,false,false,false,false,false,false,false,false],[false,false,true,true,false,false,false,false,false,false,false,false,false,true,false],[false,true,false,false,false,false,false,false,false,true,true,false,false,false,false],[false,false,true,false,false,false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false]⟩
theorem b_S0_16_140_d2_complete : b_S0_16_140_d2.Valid := by lin_cert using ()
def b_S0_17_138_d2 : WireComparison := ⟨1,3,4,2,1,[true,true,false,false,false,false,false,false,false,true,true,false],[false,false,false,false,false,false,true,false],[true,true,true,false],[false,false,true,false],[false,false,false,true,false,false,false,false],[true,false,true,false,false,true,false,false,false,false,false,false]⟩
theorem b_S0_17_138_d2_complete : b_S0_17_138_d2.Valid := by lin_cert using ()
def b_S0_17_139_d2 : WireComparison := ⟨1,1,2,3,2,[false,false],[false,false,false,false,false,false],[false,true,true,false],[false,true,true,false],[false,false,false,false,false,false],[false,false]⟩
theorem b_S0_17_139_d2_complete : b_S0_17_139_d2.Valid := by lin_cert using ()
def b_S0_17_140_d2 : WireComparison := ⟨1,2,4,4,1,[false,false,false,false,false,true,false,false],[false,false,false,false,false,false,false,false,false,true,true,true,false,true,false,true],[true,false,false,false],[true,false,false,false],[false,false,false,false,false,false,false,true,false,false,true,true,false,false,false,false],[false,false,false,true,false,false,false,false]⟩
theorem b_S0_17_140_d2_complete : b_S0_17_140_d2.Valid := by lin_cert using ()
def b_S0_17_141_d2 : WireComparison := ⟨1,4,4,5,0,[true,false,false,false,false,false,false,false,false,false,false,false,true,false,true,false],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false],[],[],[false,false,false,true,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false],[true,false,false,false,false,false,false,false,true,false,false,true,false,false,false,false]⟩
theorem b_S0_17_141_d2_complete : b_S0_17_141_d2.Valid := by lin_cert using ()
theorem b_S0_17_141_d2_zero (x : Homology (matrixOf 4 4 b_S0_17_141_d2.outgoing) (matrixOf 4 5 b_S0_17_141_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_17_141_d2.comparison b_S0_17_141_d2_complete.2 x
def b_S0_18_139_d2 : WireComparison := ⟨1,3,3,3,2,[false,false,false,false,false,false,false,true,true],[false,false,false,false,false,false,false,false,false],[true,false,false,true,false,true],[true,false,false,false,false,true],[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,true,false,false,false]⟩
theorem b_S0_18_139_d2_complete : b_S0_18_139_d2.Valid := by lin_cert using ()
def b_S0_18_140_d2 : WireComparison := ⟨1,2,3,3,3,[false,false,false,false,false,false],[false,false,false,false,false,false,false,false,false],[false,false,true,false,true,false,true,false,false],[false,false,true,false,true,false,true,false,false],[false,false,false,false,false,false,false,false,false],[false,false,false,false,false,false]⟩
theorem b_S0_18_140_d2_complete : b_S0_18_140_d2.Valid := by lin_cert using ()
def b_S0_18_141_d2 : WireComparison := ⟨1,3,3,5,1,[false,false,false,false,false,false,true,true,false],[false,false,false,false,false,false,false,false,false,false,false,false,false,true,false],[true,true,false],[false,true,false],[false,false,false,false,false,false,false,false,false,false,false,true,false,false,false],[false,false,true,false,false,false,false,false,false]⟩
theorem b_S0_18_141_d2_complete : b_S0_18_141_d2.Valid := by lin_cert using ()
def b_S0_19_140_d2 : WireComparison := ⟨1,4,1,2,0,[false,false,false,true],[false,false],[],[],[false,false],[false,false,false,true]⟩
theorem b_S0_19_140_d2_complete : b_S0_19_140_d2.Valid := by lin_cert using ()
theorem b_S0_19_140_d2_zero (x : Homology (matrixOf 4 1 b_S0_19_140_d2.outgoing) (matrixOf 1 2 b_S0_19_140_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_19_140_d2.comparison b_S0_19_140_d2_complete.2 x
def b_S0_19_142_d2 : WireComparison := ⟨1,2,4,4,2,[false,false,false,false,false,false,false,false],[true,false,false,false,false,false,false,false,false,false,false,false,true,false,true,false],[false,false,true,false,true,true,false,false],[false,true,false,false,false,true,true,false],[true,false,false,false,false,false,false,false,true,false,false,true,false,false,false,false],[false,false,false,false,false,false,false,false]⟩
theorem b_S0_19_142_d2_complete : b_S0_19_142_d2.Valid := by lin_cert using ()
def b_S0_2_128_d2 : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem b_S0_2_128_d2_complete : b_S0_2_128_d2.Valid := by lin_cert using ()
def b_S0_20_141_d2 : WireComparison := ⟨1,1,2,3,1,[false,true],[false,false,false,false,false,false],[true,false],[true,false],[false,false,false,false,false,false],[false,true]⟩
theorem b_S0_20_141_d2_complete : b_S0_20_141_d2.Valid := by lin_cert using ()
def b_S0_20_143_d2 : WireComparison := ⟨1,3,1,2,1,[false,false,false],[false,false],[true],[true],[false,false],[false,false,false]⟩
theorem b_S0_20_143_d2_complete : b_S0_20_143_d2.Valid := by lin_cert using ()
def b_S0_21_141_d2 : WireComparison := ⟨1,2,4,1,3,[false,false,false,false,false,false,false,false],[false,false,false,true],[false,false,true,false,true,false,true,false,false,false,false,false],[false,false,true,false,false,true,false,false,true,false,false,false],[false,false,false,true],[false,false,false,false,false,false,false,false]⟩
theorem b_S0_21_141_d2_complete : b_S0_21_141_d2.Valid := by lin_cert using ()
def b_S0_21_142_d2 : WireComparison := ⟨1,1,2,2,1,[false,false],[true,false,false,false],[false,true],[false,true],[true,false,false,false],[false,false]⟩
theorem b_S0_21_142_d2_complete : b_S0_21_142_d2.Valid := by lin_cert using ()
def b_S0_21_143_d2 : WireComparison := ⟨1,4,2,4,1,[false,false,false,false,true,false,true,false],[false,false,false,false,false,false,false,false],[false,true],[false,true],[false,false,false,false,false,false,false,false],[false,false,true,false,false,false,false,false]⟩
theorem b_S0_21_143_d2_complete : b_S0_21_143_d2.Valid := by lin_cert using ()
def b_S0_22_142_d2 : WireComparison := ⟨1,1,1,2,0,[false],[false,true],[],[],[false,true],[false]⟩
theorem b_S0_22_142_d2_complete : b_S0_22_142_d2.Valid := by lin_cert using ()
theorem b_S0_22_142_d2_zero (x : Homology (matrixOf 1 1 b_S0_22_142_d2.outgoing) (matrixOf 1 2 b_S0_22_142_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_22_142_d2.comparison b_S0_22_142_d2_complete.2 x
def b_S0_22_143_d2 : WireComparison := ⟨1,3,2,3,0,[false,false,false,false,true,false],[false,false,false,false,true,false],[],[],[false,false,false,true,false,false],[false,false,true,false,false,false]⟩
theorem b_S0_22_143_d2_complete : b_S0_22_143_d2.Valid := by lin_cert using ()
theorem b_S0_22_143_d2_zero (x : Homology (matrixOf 3 2 b_S0_22_143_d2.outgoing) (matrixOf 2 3 b_S0_22_143_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_22_143_d2.comparison b_S0_22_143_d2_complete.2 x
def b_S0_22_144_d2 : WireComparison := ⟨1,2,3,1,2,[false,false,false,false,false,true],[false,false,false],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,false],[false,false,false,false,false,true]⟩
theorem b_S0_22_144_d2_complete : b_S0_22_144_d2.Valid := by lin_cert using ()
def b_S0_22_145_d2 : WireComparison := ⟨1,1,0,2,0,[],[],[],[],[],[]⟩
theorem b_S0_22_145_d2_complete : b_S0_22_145_d2.Valid := by lin_cert using ()
theorem b_S0_22_145_d2_zero (x : Homology (matrixOf 1 0 b_S0_22_145_d2.outgoing) (matrixOf 0 2 b_S0_22_145_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_22_145_d2.comparison b_S0_22_145_d2_complete.2 x
def b_S0_23_143_d2 : WireComparison := ⟨1,2,1,2,0,[true,false],[false,false],[],[],[false,false],[true,false]⟩
theorem b_S0_23_143_d2_complete : b_S0_23_143_d2.Valid := by lin_cert using ()
theorem b_S0_23_143_d2_zero (x : Homology (matrixOf 2 1 b_S0_23_143_d2.outgoing) (matrixOf 1 2 b_S0_23_143_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_23_143_d2.comparison b_S0_23_143_d2_complete.2 x
def b_S0_23_145_d2 : WireComparison := ⟨1,2,2,0,2,[false,false,false,false],[],[true,false,false,true],[true,false,false,true],[],[false,false,false,false]⟩
theorem b_S0_23_145_d2_complete : b_S0_23_145_d2.Valid := by lin_cert using ()
def b_S0_24_143_d2 : WireComparison := ⟨1,2,1,1,0,[true,false],[false],[],[],[false],[true,false]⟩
theorem b_S0_24_143_d2_complete : b_S0_24_143_d2.Valid := by lin_cert using ()
theorem b_S0_24_143_d2_zero (x : Homology (matrixOf 2 1 b_S0_24_143_d2.outgoing) (matrixOf 1 1 b_S0_24_143_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_24_143_d2.comparison b_S0_24_143_d2_complete.2 x
def b_S0_24_144_d2 : WireComparison := ⟨1,0,3,2,2,[],[false,false,false,false,true,false],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,true,false,false,false],[]⟩
theorem b_S0_24_144_d2_complete : b_S0_24_144_d2.Valid := by lin_cert using ()
def b_S0_25_144_d2 : WireComparison := ⟨1,2,2,1,1,[false,false,false,false],[true,false],[false,true],[false,true],[true,false],[false,false,false,false]⟩
theorem b_S0_25_144_d2_complete : b_S0_25_144_d2.Valid := by lin_cert using ()
def b_S0_25_145_d2 : WireComparison := ⟨1,1,1,4,0,[false],[false,true,false,false],[],[],[false,true,false,false],[false]⟩
theorem b_S0_25_145_d2_complete : b_S0_25_145_d2.Valid := by lin_cert using ()
theorem b_S0_25_145_d2_zero (x : Homology (matrixOf 1 1 b_S0_25_145_d2.outgoing) (matrixOf 1 4 b_S0_25_145_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_25_145_d2.comparison b_S0_25_145_d2_complete.2 x
def b_S0_25_146_d2 : WireComparison := ⟨1,3,2,2,1,[false,false,true,false,false,false],[false,false,false,false],[false,true],[false,true],[false,false,false,false],[false,true,false,false,false,false]⟩
theorem b_S0_25_146_d2_complete : b_S0_25_146_d2.Valid := by lin_cert using ()
def b_S0_26_145_d2 : WireComparison := ⟨1,2,0,3,0,[],[],[],[],[],[]⟩
theorem b_S0_26_145_d2_complete : b_S0_26_145_d2.Valid := by lin_cert using ()
theorem b_S0_26_145_d2_zero (x : Homology (matrixOf 2 0 b_S0_26_145_d2.outgoing) (matrixOf 0 3 b_S0_26_145_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_26_145_d2.comparison b_S0_26_145_d2_complete.2 x
def b_S0_26_147_d2 : WireComparison := ⟨1,1,3,1,1,[true,false,false],[false,true,false],[false,false,true],[false,false,true],[false,true,false],[true,false,false]⟩
theorem b_S0_26_147_d2_complete : b_S0_26_147_d2.Valid := by lin_cert using ()
def b_S0_27_146_d2 : WireComparison := ⟨1,3,1,1,0,[false,true,false],[false],[],[],[false],[false,true,false]⟩
theorem b_S0_27_146_d2_complete : b_S0_27_146_d2.Valid := by lin_cert using ()
theorem b_S0_27_146_d2_zero (x : Homology (matrixOf 3 1 b_S0_27_146_d2.outgoing) (matrixOf 1 1 b_S0_27_146_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_27_146_d2.comparison b_S0_27_146_d2_complete.2 x
def b_S0_27_148_d2 : WireComparison := ⟨1,2,1,2,0,[false,true],[false,false],[],[],[false,false],[false,true]⟩
theorem b_S0_27_148_d2_complete : b_S0_27_148_d2.Valid := by lin_cert using ()
theorem b_S0_27_148_d2_zero (x : Homology (matrixOf 2 1 b_S0_27_148_d2.outgoing) (matrixOf 1 2 b_S0_27_148_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_27_148_d2.comparison b_S0_27_148_d2_complete.2 x
def b_S0_28_147_d2 : WireComparison := ⟨1,1,3,2,1,[false,false,false],[true,false,false,true,true,false],[false,false,true],[true,false,true],[true,false,false,false,true,false],[false,false,false]⟩
theorem b_S0_28_147_d2_complete : b_S0_28_147_d2.Valid := by lin_cert using ()
def b_S0_28_148_d2 : WireComparison := ⟨1,1,1,3,0,[false],[true,false,false],[],[],[true,false,false],[false]⟩
theorem b_S0_28_148_d2_complete : b_S0_28_148_d2.Valid := by lin_cert using ()
theorem b_S0_28_148_d2_zero (x : Homology (matrixOf 1 1 b_S0_28_148_d2.outgoing) (matrixOf 1 3 b_S0_28_148_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_28_148_d2.comparison b_S0_28_148_d2_complete.2 x
def b_S0_28_152_d2 : WireComparison := ⟨1,3,2,1,0,[true,false,false,false,false,false],[false,true],[],[],[false,true],[true,false,false,false,false,false]⟩
theorem b_S0_28_152_d2_complete : b_S0_28_152_d2.Valid := by lin_cert using ()
theorem b_S0_28_152_d2_zero (x : Homology (matrixOf 3 2 b_S0_28_152_d2.outgoing) (matrixOf 2 1 b_S0_28_152_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_28_152_d2.comparison b_S0_28_152_d2_complete.2 x
def b_S0_29_149_d2 : WireComparison := ⟨1,2,2,1,0,[false,false,true,false],[false,true],[],[],[false,true],[false,true,false,false]⟩
theorem b_S0_29_149_d2_complete : b_S0_29_149_d2.Valid := by lin_cert using ()
theorem b_S0_29_149_d2_zero (x : Homology (matrixOf 2 2 b_S0_29_149_d2.outgoing) (matrixOf 2 1 b_S0_29_149_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_29_149_d2.comparison b_S0_29_149_d2_complete.2 x
def b_S0_3_128_d2 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_3_128_d2_complete : b_S0_3_128_d2.Valid := by lin_cert using ()
theorem b_S0_3_128_d2_zero (x : Homology (matrixOf 0 0 b_S0_3_128_d2.outgoing) (matrixOf 0 0 b_S0_3_128_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_3_128_d2.comparison b_S0_3_128_d2_complete.2 x
def b_S0_30_150_d2 : WireComparison := ⟨1,0,2,1,1,[],[false,true],[true,false],[true,false],[false,true],[]⟩
theorem b_S0_30_150_d2_complete : b_S0_30_150_d2.Valid := by lin_cert using ()
def b_S0_31_149_d2 : WireComparison := ⟨1,3,2,0,0,[false,false,true,false,false,true],[],[],[],[],[false,true,false,false,false,true]⟩
theorem b_S0_31_149_d2_complete : b_S0_31_149_d2.Valid := by lin_cert using ()
theorem b_S0_31_149_d2_zero (x : Homology (matrixOf 3 2 b_S0_31_149_d2.outgoing) (matrixOf 2 0 b_S0_31_149_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_31_149_d2.comparison b_S0_31_149_d2_complete.2 x
def b_S0_33_152_d2 : WireComparison := ⟨1,1,1,0,0,[true],[],[],[],[],[true]⟩
theorem b_S0_33_152_d2_complete : b_S0_33_152_d2.Valid := by lin_cert using ()
theorem b_S0_33_152_d2_zero (x : Homology (matrixOf 1 1 b_S0_33_152_d2.outgoing) (matrixOf 1 0 b_S0_33_152_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_33_152_d2.comparison b_S0_33_152_d2_complete.2 x
def b_S0_4_129_d2 : WireComparison := ⟨1,1,0,1,0,[],[],[],[],[],[]⟩
theorem b_S0_4_129_d2_complete : b_S0_4_129_d2.Valid := by lin_cert using ()
theorem b_S0_4_129_d2_zero (x : Homology (matrixOf 1 0 b_S0_4_129_d2.outgoing) (matrixOf 0 1 b_S0_4_129_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_4_129_d2.comparison b_S0_4_129_d2_complete.2 x
def b_S0_4_130_d2 : WireComparison := ⟨1,2,2,1,1,[false,false,false,false],[false,true],[true,false],[true,false],[false,true],[false,false,false,false]⟩
theorem b_S0_4_130_d2_complete : b_S0_4_130_d2.Valid := by lin_cert using ()
def b_S0_5_130_d2 : WireComparison := ⟨1,3,1,1,0,[false,false,true],[false],[],[],[false],[false,false,true]⟩
theorem b_S0_5_130_d2_complete : b_S0_5_130_d2.Valid := by lin_cert using ()
theorem b_S0_5_130_d2_zero (x : Homology (matrixOf 3 1 b_S0_5_130_d2.outgoing) (matrixOf 1 1 b_S0_5_130_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_5_130_d2.comparison b_S0_5_130_d2_complete.2 x
def b_S0_6_130_d2 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b_S0_6_130_d2_complete : b_S0_6_130_d2.Valid := by lin_cert using ()
def b_S0_6_131_d2 : WireComparison := ⟨1,1,2,2,2,[false,false],[false,false,false,false],[true,false,false,true],[true,false,false,true],[false,false,false,false],[false,false]⟩
theorem b_S0_6_131_d2_complete : b_S0_6_131_d2.Valid := by lin_cert using ()
def b_S0_7_131_d2 : WireComparison := ⟨1,2,3,1,2,[false,false,false,false,false,false],[false,false,true],[false,true,true,false,false,false],[false,true,false,true,false,false],[false,false,true],[false,false,false,false,false,false]⟩
theorem b_S0_7_131_d2_complete : b_S0_7_131_d2.Valid := by lin_cert using ()
def b_S0_7_132_d2 : WireComparison := ⟨1,3,1,1,1,[false,false,false],[false],[true],[true],[false],[false,false,false]⟩
theorem b_S0_7_132_d2_complete : b_S0_7_132_d2.Valid := by lin_cert using ()
def b_S0_8_132_d2 : WireComparison := ⟨1,3,1,2,0,[false,false,true],[false,false],[],[],[false,false],[false,false,true]⟩
theorem b_S0_8_132_d2_complete : b_S0_8_132_d2.Valid := by lin_cert using ()
theorem b_S0_8_132_d2_zero (x : Homology (matrixOf 3 1 b_S0_8_132_d2.outgoing) (matrixOf 1 2 b_S0_8_132_d2.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_8_132_d2.comparison b_S0_8_132_d2_complete.2 x
def b_S0_8_133_d2 : WireComparison := ⟨1,5,2,2,1,[false,false,false,false,false,true,false,false,false,true],[false,false,false,false],[true,false],[true,false],[false,false,false,false],[false,false,false,false,false,false,false,true,false,false]⟩
theorem b_S0_8_133_d2_complete : b_S0_8_133_d2.Valid := by lin_cert using ()
def b_S0_9_132_d2 : WireComparison := ⟨1,2,2,3,2,[false,false,false,false],[false,false,false,false,false,false],[true,false,true,true],[true,false,true,true],[false,false,false,false,false,false],[false,false,false,false]⟩
theorem b_S0_9_132_d2_complete : b_S0_9_132_d2.Valid := by lin_cert using ()
def b_S0_9_133_d2 : WireComparison := ⟨1,5,3,1,2,[false,false,false,false,false,false,false,false,false,false,false,false,true,true,true],[false,false,false],[false,true,true,false,true,true],[false,true,false,false,true,true],[false,false,false],[false,false,false,false,true,false,false,false,false,false,false,false,false,false,false]⟩
theorem b_S0_9_133_d2_complete : b_S0_9_133_d2.Valid := by lin_cert using ()
def b_S0_9_134_d2 : WireComparison := ⟨1,5,5,2,3,[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,true,false,false,false,true],[false,false,false,false,false,false,false,false,false,false],[false,false,false,false,false,true,true,false,false,false,true,false,false,false,false],[false,false,true,false,false,false,false,false,true,false,false,true,false,false,false],[false,false,false,false,false,false,false,false,false,false],[false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,true]⟩
theorem b_S0_9_134_d2_complete : b_S0_9_134_d2.Valid := by lin_cert using ()
def b_Cnu_18_142_d3 : WireComparison := ⟨1,2,0,3,0,[],[],[],[],[],[]⟩
theorem b_Cnu_18_142_d3_complete : b_Cnu_18_142_d3.Valid := by lin_cert using ()
theorem b_Cnu_18_142_d3_zero (x : Homology (matrixOf 2 0 b_Cnu_18_142_d3.outgoing) (matrixOf 0 3 b_Cnu_18_142_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_Cnu_18_142_d3.comparison b_Cnu_18_142_d3_complete.2 x
def b_S0_0_126_d3 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_0_126_d3_complete : b_S0_0_126_d3.Valid := by lin_cert using ()
theorem b_S0_0_126_d3_zero (x : Homology (matrixOf 0 0 b_S0_0_126_d3.outgoing) (matrixOf 0 0 b_S0_0_126_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_0_126_d3.comparison b_S0_0_126_d3_complete.2 x
def b_S0_10_133_d3 : WireComparison := ⟨1,2,1,2,0,[false,false],[false,true],[],[],[false,true],[false,false]⟩
theorem b_S0_10_133_d3_complete : b_S0_10_133_d3.Valid := by lin_cert using ()
theorem b_S0_10_133_d3_zero (x : Homology (matrixOf 2 1 b_S0_10_133_d3.outgoing) (matrixOf 1 2 b_S0_10_133_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_10_133_d3.comparison b_S0_10_133_d3_complete.2 x
def b_S0_11_135_d3 : WireComparison := ⟨1,2,2,1,1,[false,false,false,false],[true,false],[false,true],[false,true],[true,false],[false,false,false,false]⟩
theorem b_S0_11_135_d3_complete : b_S0_11_135_d3.Valid := by lin_cert using ()
def b_S0_12_135_d3 : WireComparison := ⟨1,1,3,2,1,[false,false,false],[true,false,false,true,false,false],[false,false,true],[false,false,true],[true,false,false,false,true,false],[false,false,false]⟩
theorem b_S0_12_135_d3_complete : b_S0_12_135_d3.Valid := by lin_cert using ()
def b_S0_14_136_d3 : WireComparison := ⟨1,1,1,3,0,[false],[false,false,true],[],[],[false,false,true],[false]⟩
theorem b_S0_14_136_d3_complete : b_S0_14_136_d3.Valid := by lin_cert using ()
theorem b_S0_14_136_d3_zero (x : Homology (matrixOf 1 1 b_S0_14_136_d3.outgoing) (matrixOf 1 3 b_S0_14_136_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_14_136_d3.comparison b_S0_14_136_d3_complete.2 x
def b_S0_14_137_d3 : WireComparison := ⟨1,2,2,2,0,[true,false,false,true],[false,false,false,false],[],[],[false,false,false,false],[true,false,false,true]⟩
theorem b_S0_14_137_d3_complete : b_S0_14_137_d3.Valid := by lin_cert using ()
theorem b_S0_14_137_d3_zero (x : Homology (matrixOf 2 2 b_S0_14_137_d3.outgoing) (matrixOf 2 2 b_S0_14_137_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_14_137_d3.comparison b_S0_14_137_d3_complete.2 x
def b_S0_15_137_d3 : WireComparison := ⟨1,2,1,3,0,[true,false],[false,false,false],[],[],[false,false,false],[true,false]⟩
theorem b_S0_15_137_d3_complete : b_S0_15_137_d3.Valid := by lin_cert using ()
theorem b_S0_15_137_d3_zero (x : Homology (matrixOf 2 1 b_S0_15_137_d3.outgoing) (matrixOf 1 3 b_S0_15_137_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_15_137_d3.comparison b_S0_15_137_d3_complete.2 x
def b_S0_15_138_d3 : WireComparison := ⟨1,3,3,1,2,[false,false,true,false,false,false,false,false,false],[false,false,false],[true,false,false,true,false,false],[true,false,false,false,true,false],[false,false,false],[false,false,false,false,false,false,true,false,false]⟩
theorem b_S0_15_138_d3_complete : b_S0_15_138_d3.Valid := by lin_cert using ()
def b_S0_16_138_d3 : WireComparison := ⟨1,0,3,2,1,[],[true,false,false,true,false,false],[false,false,true],[false,false,true],[true,false,false,false,true,false],[]⟩
theorem b_S0_16_138_d3_complete : b_S0_16_138_d3.Valid := by lin_cert using ()
def b_S0_17_139_d3 : WireComparison := ⟨1,1,2,2,0,[false,false],[true,false,false,true],[],[],[true,false,false,true],[false,false]⟩
theorem b_S0_17_139_d3_complete : b_S0_17_139_d3.Valid := by lin_cert using ()
theorem b_S0_17_139_d3_zero (x : Homology (matrixOf 1 2 b_S0_17_139_d3.outgoing) (matrixOf 2 2 b_S0_17_139_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_17_139_d3.comparison b_S0_17_139_d3_complete.2 x
def b_S0_18_139_d3 : WireComparison := ⟨1,3,2,1,0,[false,true,false,false,false,false],[true,false],[],[],[true,false],[false,false,false,true,false,false]⟩
theorem b_S0_18_139_d3_complete : b_S0_18_139_d3.Valid := by lin_cert using ()
theorem b_S0_18_139_d3_zero (x : Homology (matrixOf 3 2 b_S0_18_139_d3.outgoing) (matrixOf 2 1 b_S0_18_139_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_18_139_d3.comparison b_S0_18_139_d3_complete.2 x
def b_S0_19_140_d3 : WireComparison := ⟨1,0,0,3,0,[],[],[],[],[],[]⟩
theorem b_S0_19_140_d3_complete : b_S0_19_140_d3.Valid := by lin_cert using ()
theorem b_S0_19_140_d3_zero (x : Homology (matrixOf 0 0 b_S0_19_140_d3.outgoing) (matrixOf 0 3 b_S0_19_140_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_19_140_d3.comparison b_S0_19_140_d3_complete.2 x
def b_S0_20_141_d3 : WireComparison := ⟨1,0,1,2,1,[],[false,false],[true],[true],[false,false],[]⟩
theorem b_S0_20_141_d3_complete : b_S0_20_141_d3.Valid := by lin_cert using ()
def b_S0_20_143_d3 : WireComparison := ⟨1,2,1,0,0,[true,false],[],[],[],[],[true,false]⟩
theorem b_S0_20_143_d3_complete : b_S0_20_143_d3.Valid := by lin_cert using ()
theorem b_S0_20_143_d3_zero (x : Homology (matrixOf 2 1 b_S0_20_143_d3.outgoing) (matrixOf 1 0 b_S0_20_143_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_20_143_d3.comparison b_S0_20_143_d3_complete.2 x
def b_S0_21_142_d3 : WireComparison := ⟨1,2,1,3,0,[false,false],[false,false,true],[],[],[false,false,true],[false,false]⟩
theorem b_S0_21_142_d3_complete : b_S0_21_142_d3.Valid := by lin_cert using ()
theorem b_S0_21_142_d3_zero (x : Homology (matrixOf 2 1 b_S0_21_142_d3.outgoing) (matrixOf 1 3 b_S0_21_142_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_21_142_d3.comparison b_S0_21_142_d3_complete.2 x
def b_S0_22_142_d3 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_22_142_d3_complete : b_S0_22_142_d3.Valid := by lin_cert using ()
theorem b_S0_22_142_d3_zero (x : Homology (matrixOf 1 0 b_S0_22_142_d3.outgoing) (matrixOf 0 0 b_S0_22_142_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_22_142_d3.comparison b_S0_22_142_d3_complete.2 x
def b_S0_22_144_d3 : WireComparison := ⟨1,1,2,2,0,[false,true],[false,true,false,false],[],[],[false,false,true,false],[false,true]⟩
theorem b_S0_22_144_d3_complete : b_S0_22_144_d3.Valid := by lin_cert using ()
theorem b_S0_22_144_d3_zero (x : Homology (matrixOf 1 2 b_S0_22_144_d3.outgoing) (matrixOf 2 2 b_S0_22_144_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_22_144_d3.comparison b_S0_22_144_d3_complete.2 x
def b_S0_23_143_d3 : WireComparison := ⟨1,0,0,1,0,[],[],[],[],[],[]⟩
theorem b_S0_23_143_d3_complete : b_S0_23_143_d3.Valid := by lin_cert using ()
theorem b_S0_23_143_d3_zero (x : Homology (matrixOf 0 0 b_S0_23_143_d3.outgoing) (matrixOf 0 1 b_S0_23_143_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_23_143_d3.comparison b_S0_23_143_d3_complete.2 x
def b_S0_24_144_d3 : WireComparison := ⟨1,0,2,1,2,[],[false,false],[true,false,false,true],[true,false,false,true],[false,false],[]⟩
theorem b_S0_24_144_d3_complete : b_S0_24_144_d3.Valid := by lin_cert using ()
def b_S0_25_145_d3 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_25_145_d3_complete : b_S0_25_145_d3.Valid := by lin_cert using ()
theorem b_S0_25_145_d3_zero (x : Homology (matrixOf 1 0 b_S0_25_145_d3.outgoing) (matrixOf 0 0 b_S0_25_145_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_25_145_d3.comparison b_S0_25_145_d3_complete.2 x
def b_S0_25_146_d3 : WireComparison := ⟨1,0,1,2,0,[],[false,true],[],[],[false,true],[]⟩
theorem b_S0_25_146_d3_complete : b_S0_25_146_d3.Valid := by lin_cert using ()
theorem b_S0_25_146_d3_zero (x : Homology (matrixOf 0 1 b_S0_25_146_d3.outgoing) (matrixOf 1 2 b_S0_25_146_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_25_146_d3.comparison b_S0_25_146_d3_complete.2 x
def b_S0_26_147_d3 : WireComparison := ⟨1,0,1,2,0,[],[false,true],[],[],[false,true],[]⟩
theorem b_S0_26_147_d3_complete : b_S0_26_147_d3.Valid := by lin_cert using ()
theorem b_S0_26_147_d3_zero (x : Homology (matrixOf 0 1 b_S0_26_147_d3.outgoing) (matrixOf 1 2 b_S0_26_147_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_26_147_d3.comparison b_S0_26_147_d3_complete.2 x
def b_S0_28_147_d3 : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem b_S0_28_147_d3_complete : b_S0_28_147_d3.Valid := by lin_cert using ()
def b_S0_30_150_d3 : WireComparison := ⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩
theorem b_S0_30_150_d3_complete : b_S0_30_150_d3.Valid := by lin_cert using ()
def b_S0_4_129_d3 : WireComparison := ⟨1,2,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_4_129_d3_complete : b_S0_4_129_d3.Valid := by lin_cert using ()
theorem b_S0_4_129_d3_zero (x : Homology (matrixOf 2 0 b_S0_4_129_d3.outgoing) (matrixOf 0 0 b_S0_4_129_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_4_129_d3.comparison b_S0_4_129_d3_complete.2 x
def b_S0_5_130_d3 : WireComparison := ⟨1,0,0,1,0,[],[],[],[],[],[]⟩
theorem b_S0_5_130_d3_complete : b_S0_5_130_d3.Valid := by lin_cert using ()
theorem b_S0_5_130_d3_zero (x : Homology (matrixOf 0 0 b_S0_5_130_d3.outgoing) (matrixOf 0 1 b_S0_5_130_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_5_130_d3.comparison b_S0_5_130_d3_complete.2 x
def b_S0_7_132_d3 : WireComparison := ⟨1,4,1,1,0,[false,false,false,false],[true],[],[],[true],[false,false,false,false]⟩
theorem b_S0_7_132_d3_complete : b_S0_7_132_d3.Valid := by lin_cert using ()
theorem b_S0_7_132_d3_zero (x : Homology (matrixOf 4 1 b_S0_7_132_d3.outgoing) (matrixOf 1 1 b_S0_7_132_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_7_132_d3.comparison b_S0_7_132_d3_complete.2 x
def b_S0_8_132_d3 : WireComparison := ⟨1,3,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_8_132_d3_complete : b_S0_8_132_d3.Valid := by lin_cert using ()
theorem b_S0_8_132_d3_zero (x : Homology (matrixOf 3 0 b_S0_8_132_d3.outgoing) (matrixOf 0 0 b_S0_8_132_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_8_132_d3.comparison b_S0_8_132_d3_complete.2 x
def b_S0_9_132_d3 : WireComparison := ⟨1,2,2,1,1,[false,true,false,false],[false,false],[true,false],[true,false],[false,false],[false,false,true,false]⟩
theorem b_S0_9_132_d3_complete : b_S0_9_132_d3.Valid := by lin_cert using ()
def b_S0_9_133_d3 : WireComparison := ⟨1,3,2,2,0,[true,false,false,true,false,false],[false,false,false,false],[],[],[false,false,false,false],[true,false,false,false,true,false]⟩
theorem b_S0_9_133_d3_complete : b_S0_9_133_d3.Valid := by lin_cert using ()
theorem b_S0_9_133_d3_zero (x : Homology (matrixOf 3 2 b_S0_9_133_d3.outgoing) (matrixOf 2 2 b_S0_9_133_d3.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_9_133_d3.comparison b_S0_9_133_d3_complete.2 x
def b_S0_11_135_d4 : WireComparison := ⟨1,2,1,0,0,[true,false],[],[],[],[],[true,false]⟩
theorem b_S0_11_135_d4_complete : b_S0_11_135_d4.Valid := by lin_cert using ()
theorem b_S0_11_135_d4_zero (x : Homology (matrixOf 2 1 b_S0_11_135_d4.outgoing) (matrixOf 1 0 b_S0_11_135_d4.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_11_135_d4.comparison b_S0_11_135_d4_complete.2 x
def b_S0_12_135_d4 : WireComparison := ⟨1,1,1,0,1,[false],[],[true],[true],[],[false]⟩
theorem b_S0_12_135_d4_complete : b_S0_12_135_d4.Valid := by lin_cert using ()
def b_S0_14_136_d4 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_14_136_d4_complete : b_S0_14_136_d4.Valid := by lin_cert using ()
theorem b_S0_14_136_d4_zero (x : Homology (matrixOf 0 0 b_S0_14_136_d4.outgoing) (matrixOf 0 0 b_S0_14_136_d4.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_14_136_d4.comparison b_S0_14_136_d4_complete.2 x
def b_S0_18_139_d4 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_18_139_d4_complete : b_S0_18_139_d4.Valid := by lin_cert using ()
theorem b_S0_18_139_d4_zero (x : Homology (matrixOf 0 0 b_S0_18_139_d4.outgoing) (matrixOf 0 0 b_S0_18_139_d4.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_18_139_d4.comparison b_S0_18_139_d4_complete.2 x
def b_S0_19_140_d4 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_19_140_d4_complete : b_S0_19_140_d4.Valid := by lin_cert using ()
theorem b_S0_19_140_d4_zero (x : Homology (matrixOf 0 0 b_S0_19_140_d4.outgoing) (matrixOf 0 0 b_S0_19_140_d4.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_19_140_d4.comparison b_S0_19_140_d4_complete.2 x
def b_S0_21_142_d4 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_21_142_d4_complete : b_S0_21_142_d4.Valid := by lin_cert using ()
theorem b_S0_21_142_d4_zero (x : Homology (matrixOf 0 0 b_S0_21_142_d4.outgoing) (matrixOf 0 0 b_S0_21_142_d4.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_21_142_d4.comparison b_S0_21_142_d4_complete.2 x
def b_S0_26_147_d4 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_26_147_d4_complete : b_S0_26_147_d4.Valid := by lin_cert using ()
theorem b_S0_26_147_d4_zero (x : Homology (matrixOf 1 0 b_S0_26_147_d4.outgoing) (matrixOf 0 0 b_S0_26_147_d4.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_26_147_d4.comparison b_S0_26_147_d4_complete.2 x
def b_S0_4_129_d4 : WireComparison := ⟨1,0,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_4_129_d4_complete : b_S0_4_129_d4.Valid := by lin_cert using ()
theorem b_S0_4_129_d4_zero (x : Homology (matrixOf 0 0 b_S0_4_129_d4.outgoing) (matrixOf 0 0 b_S0_4_129_d4.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient b_S0_4_129_d4.comparison b_S0_4_129_d4_complete.2 x
theorem b_Cnu_15_140_d2_representative_0 : ∀ i : Fin 6, b_Cnu_15_140_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_Cnu_15_140_d2_representative_1 : ∀ i : Fin 6, b_Cnu_15_140_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_Cnu_15_140_d2_representative_2 : ∀ i : Fin 6, b_Cnu_15_140_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([true,false,false,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_Cnu_21_144_d2_representative_0 : ∀ i : Fin 2, b_Cnu_21_144_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_Cnu_21_144_d2_representative_1 : ∀ i : Fin 2, b_Cnu_21_144_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_10_133_d2_representative_0 : ∀ i : Fin 3, b_S0_10_133_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_10_133_d2_incoming_link : b_S0_10_133_d2.incoming = b_S0_8_132_d2.outgoing := by decide
theorem b_S0_10_134_d2_representative_0 : ∀ i : Fin 5, b_S0_10_134_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_10_134_d2_representative_1 : ∀ i : Fin 5, b_S0_10_134_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_10_134_d2_representative_2 : ∀ i : Fin 5, b_S0_10_134_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_10_134_d2_representative_3 : ∀ i : Fin 5, b_S0_10_134_d2.comparison.inclusion i ⟨3,by decide⟩ = (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_10_134_d2_incoming_link : b_S0_10_134_d2.incoming = b_S0_8_133_d2.outgoing := by decide
theorem b_S0_10_135_d2_representative_0 : ∀ i : Fin 5, b_S0_10_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_134_d2_representative_0 : ∀ i : Fin 5, b_S0_11_134_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_134_d2_representative_1 : ∀ i : Fin 5, b_S0_11_134_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,true,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_134_d2_representative_2 : ∀ i : Fin 5, b_S0_11_134_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,true,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_134_d2_incoming_link : b_S0_11_134_d2.incoming = b_S0_9_133_d2.outgoing := by decide
theorem b_S0_11_135_d2_representative_0 : ∀ i : Fin 5, b_S0_11_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_135_d2_representative_1 : ∀ i : Fin 5, b_S0_11_135_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_135_d2_incoming_link : b_S0_11_135_d2.incoming = b_S0_9_134_d2.outgoing := by decide
theorem b_S0_11_136_d2_representative_0 : ∀ i : Fin 5, b_S0_11_136_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_136_d2_representative_1 : ∀ i : Fin 5, b_S0_11_136_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_136_d2_representative_2 : ∀ i : Fin 5, b_S0_11_136_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_11_136_d2_representative_3 : ∀ i : Fin 5, b_S0_11_136_d2.comparison.inclusion i ⟨3,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_134_d2_representative_0 : ∀ i : Fin 3, b_S0_12_134_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_134_d2_representative_1 : ∀ i : Fin 3, b_S0_12_134_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_134_d2_incoming_link : b_S0_12_134_d2.incoming = b_S0_10_133_d2.outgoing := by decide
theorem b_S0_12_135_d2_representative_0 : ∀ i : Fin 3, b_S0_12_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_135_d2_representative_1 : ∀ i : Fin 3, b_S0_12_135_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_135_d2_representative_2 : ∀ i : Fin 3, b_S0_12_135_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_135_d2_incoming_link : b_S0_12_135_d2.incoming = b_S0_10_134_d2.outgoing := by decide
theorem b_S0_12_136_d2_representative_0 : ∀ i : Fin 5, b_S0_12_136_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_136_d2_incoming_link : b_S0_12_136_d2.incoming = b_S0_10_135_d2.outgoing := by decide
theorem b_S0_12_137_d2_representative_0 : ∀ i : Fin 5, b_S0_12_137_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,false,true,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_12_137_d2_representative_1 : ∀ i : Fin 5, b_S0_12_137_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_135_d2_representative_0 : ∀ i : Fin 3, b_S0_13_135_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_135_d2_representative_1 : ∀ i : Fin 3, b_S0_13_135_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_135_d2_incoming_link : b_S0_13_135_d2.incoming = b_S0_11_134_d2.outgoing := by decide
theorem b_S0_13_136_d2_representative_0 : ∀ i : Fin 3, b_S0_13_136_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_136_d2_representative_1 : ∀ i : Fin 3, b_S0_13_136_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_136_d2_incoming_link : b_S0_13_136_d2.incoming = b_S0_11_135_d2.outgoing := by decide
theorem b_S0_13_137_d2_representative_0 : ∀ i : Fin 4, b_S0_13_137_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_137_d2_representative_1 : ∀ i : Fin 4, b_S0_13_137_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_137_d2_representative_2 : ∀ i : Fin 4, b_S0_13_137_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_13_137_d2_incoming_link : b_S0_13_137_d2.incoming = b_S0_11_136_d2.outgoing := by decide
theorem b_S0_14_136_d2_representative_0 : ∀ i : Fin 1, b_S0_14_136_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
theorem b_S0_14_136_d2_incoming_link : b_S0_14_136_d2.incoming = b_S0_12_135_d2.outgoing := by decide
theorem b_S0_14_137_d2_representative_0 : ∀ i : Fin 3, b_S0_14_137_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_14_137_d2_representative_1 : ∀ i : Fin 3, b_S0_14_137_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_14_137_d2_incoming_link : b_S0_14_137_d2.incoming = b_S0_12_136_d2.outgoing := by decide
theorem b_S0_14_138_d2_representative_0 : ∀ i : Fin 5, b_S0_14_138_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_14_138_d2_incoming_link : b_S0_14_138_d2.incoming = b_S0_12_137_d2.outgoing := by decide
theorem b_S0_15_136_d2_representative_0 : ∀ i : Fin 2, b_S0_15_136_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_15_136_d2_representative_1 : ∀ i : Fin 2, b_S0_15_136_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_15_136_d2_incoming_link : b_S0_15_136_d2.incoming = b_S0_13_135_d2.outgoing := by decide
theorem b_S0_15_137_d2_representative_0 : ∀ i : Fin 2, b_S0_15_137_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_15_137_d2_incoming_link : b_S0_15_137_d2.incoming = b_S0_13_136_d2.outgoing := by decide
theorem b_S0_15_138_d2_representative_0 : ∀ i : Fin 3, b_S0_15_138_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_15_138_d2_representative_1 : ∀ i : Fin 3, b_S0_15_138_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_15_138_d2_representative_2 : ∀ i : Fin 3, b_S0_15_138_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_15_138_d2_incoming_link : b_S0_15_138_d2.incoming = b_S0_13_137_d2.outgoing := by decide
theorem b_S0_15_139_d2_representative_0 : ∀ i : Fin 4, b_S0_15_139_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_15_139_d2_representative_1 : ∀ i : Fin 4, b_S0_15_139_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_137_d2_representative_0 : ∀ i : Fin 3, b_S0_16_137_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_137_d2_representative_1 : ∀ i : Fin 3, b_S0_16_137_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_137_d2_incoming_link : b_S0_16_137_d2.incoming = b_S0_14_136_d2.outgoing := by decide
theorem b_S0_16_138_d2_representative_0 : ∀ i : Fin 3, b_S0_16_138_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_138_d2_representative_1 : ∀ i : Fin 3, b_S0_16_138_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_138_d2_representative_2 : ∀ i : Fin 3, b_S0_16_138_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_138_d2_incoming_link : b_S0_16_138_d2.incoming = b_S0_14_137_d2.outgoing := by decide
theorem b_S0_16_139_d2_representative_0 : ∀ i : Fin 3, b_S0_16_139_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_139_d2_incoming_link : b_S0_16_139_d2.incoming = b_S0_14_138_d2.outgoing := by decide
theorem b_S0_16_140_d2_representative_0 : ∀ i : Fin 5, b_S0_16_140_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_140_d2_representative_1 : ∀ i : Fin 5, b_S0_16_140_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_16_140_d2_representative_2 : ∀ i : Fin 5, b_S0_16_140_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([true,false,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_17_138_d2_representative_0 : ∀ i : Fin 4, b_S0_17_138_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,true,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_17_138_d2_incoming_link : b_S0_17_138_d2.incoming = b_S0_15_137_d2.outgoing := by decide
theorem b_S0_17_139_d2_representative_0 : ∀ i : Fin 2, b_S0_17_139_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_17_139_d2_representative_1 : ∀ i : Fin 2, b_S0_17_139_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_17_139_d2_incoming_link : b_S0_17_139_d2.incoming = b_S0_15_138_d2.outgoing := by decide
theorem b_S0_17_140_d2_representative_0 : ∀ i : Fin 4, b_S0_17_140_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_17_140_d2_incoming_link : b_S0_17_140_d2.incoming = b_S0_15_139_d2.outgoing := by decide
theorem b_S0_18_139_d2_representative_0 : ∀ i : Fin 3, b_S0_18_139_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_18_139_d2_representative_1 : ∀ i : Fin 3, b_S0_18_139_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_18_139_d2_incoming_link : b_S0_18_139_d2.incoming = b_S0_16_138_d2.outgoing := by decide
theorem b_S0_18_140_d2_representative_0 : ∀ i : Fin 3, b_S0_18_140_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_18_140_d2_representative_1 : ∀ i : Fin 3, b_S0_18_140_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_18_140_d2_representative_2 : ∀ i : Fin 3, b_S0_18_140_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_18_140_d2_incoming_link : b_S0_18_140_d2.incoming = b_S0_16_139_d2.outgoing := by decide
theorem b_S0_18_141_d2_representative_0 : ∀ i : Fin 3, b_S0_18_141_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_18_141_d2_incoming_link : b_S0_18_141_d2.incoming = b_S0_16_140_d2.outgoing := by decide
theorem b_S0_19_140_d2_incoming_link : b_S0_19_140_d2.incoming = b_S0_17_139_d2.outgoing := by decide
theorem b_S0_19_142_d2_representative_0 : ∀ i : Fin 4, b_S0_19_142_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_19_142_d2_representative_1 : ∀ i : Fin 4, b_S0_19_142_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_19_142_d2_incoming_link : b_S0_19_142_d2.incoming = b_S0_17_141_d2.outgoing := by decide
theorem b_S0_2_128_d2_representative_0 : ∀ i : Fin 1, b_S0_2_128_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
theorem b_S0_20_141_d2_representative_0 : ∀ i : Fin 2, b_S0_20_141_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_20_141_d2_incoming_link : b_S0_20_141_d2.incoming = b_S0_18_140_d2.outgoing := by decide
theorem b_S0_20_143_d2_representative_0 : ∀ i : Fin 1, b_S0_20_143_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
theorem b_S0_21_141_d2_representative_0 : ∀ i : Fin 4, b_S0_21_141_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_21_141_d2_representative_1 : ∀ i : Fin 4, b_S0_21_141_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_21_141_d2_representative_2 : ∀ i : Fin 4, b_S0_21_141_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_21_141_d2_incoming_link : b_S0_21_141_d2.incoming = b_S0_19_140_d2.outgoing := by decide
theorem b_S0_21_142_d2_representative_0 : ∀ i : Fin 2, b_S0_21_142_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_21_143_d2_representative_0 : ∀ i : Fin 2, b_S0_21_143_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_21_143_d2_incoming_link : b_S0_21_143_d2.incoming = b_S0_19_142_d2.outgoing := by decide
theorem b_S0_22_142_d2_incoming_link : b_S0_22_142_d2.incoming = b_S0_20_141_d2.outgoing := by decide
theorem b_S0_22_144_d2_representative_0 : ∀ i : Fin 3, b_S0_22_144_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_22_144_d2_representative_1 : ∀ i : Fin 3, b_S0_22_144_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_22_144_d2_incoming_link : b_S0_22_144_d2.incoming = b_S0_20_143_d2.outgoing := by decide
theorem b_S0_23_143_d2_incoming_link : b_S0_23_143_d2.incoming = b_S0_21_142_d2.outgoing := by decide
theorem b_S0_23_145_d2_representative_0 : ∀ i : Fin 2, b_S0_23_145_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_23_145_d2_representative_1 : ∀ i : Fin 2, b_S0_23_145_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_24_143_d2_incoming_link : b_S0_24_143_d2.incoming = b_S0_22_142_d2.outgoing := by decide
theorem b_S0_24_144_d2_representative_0 : ∀ i : Fin 3, b_S0_24_144_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_24_144_d2_representative_1 : ∀ i : Fin 3, b_S0_24_144_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_24_144_d2_incoming_link : b_S0_24_144_d2.incoming = b_S0_22_143_d2.outgoing := by decide
theorem b_S0_25_144_d2_representative_0 : ∀ i : Fin 2, b_S0_25_144_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_25_144_d2_incoming_link : b_S0_25_144_d2.incoming = b_S0_23_143_d2.outgoing := by decide
theorem b_S0_25_146_d2_representative_0 : ∀ i : Fin 2, b_S0_25_146_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_25_146_d2_incoming_link : b_S0_25_146_d2.incoming = b_S0_23_145_d2.outgoing := by decide
theorem b_S0_26_145_d2_incoming_link : b_S0_26_145_d2.incoming = b_S0_24_144_d2.outgoing := by decide
theorem b_S0_26_147_d2_representative_0 : ∀ i : Fin 3, b_S0_26_147_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_27_146_d2_incoming_link : b_S0_27_146_d2.incoming = b_S0_25_145_d2.outgoing := by decide
theorem b_S0_28_147_d2_representative_0 : ∀ i : Fin 3, b_S0_28_147_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_28_148_d2_incoming_link : b_S0_28_148_d2.incoming = b_S0_26_147_d2.outgoing := by decide
theorem b_S0_29_149_d2_incoming_link : b_S0_29_149_d2.incoming = b_S0_27_148_d2.outgoing := by decide
theorem b_S0_3_128_d2_incoming_link : b_S0_3_128_d2.incoming = b_S0_1_127_d2.outgoing := by decide
theorem b_S0_30_150_d2_representative_0 : ∀ i : Fin 2, b_S0_30_150_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_4_129_d2_incoming_link : b_S0_4_129_d2.incoming = b_S0_2_128_d2.outgoing := by decide
theorem b_S0_4_130_d2_representative_0 : ∀ i : Fin 2, b_S0_4_130_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_6_130_d2_representative_0 : ∀ i : Fin 1, b_S0_6_130_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
theorem b_S0_6_130_d2_incoming_link : b_S0_6_130_d2.incoming = b_S0_4_129_d2.outgoing := by decide
theorem b_S0_6_131_d2_representative_0 : ∀ i : Fin 2, b_S0_6_131_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_6_131_d2_representative_1 : ∀ i : Fin 2, b_S0_6_131_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_6_131_d2_incoming_link : b_S0_6_131_d2.incoming = b_S0_4_130_d2.outgoing := by decide
theorem b_S0_7_131_d2_representative_0 : ∀ i : Fin 3, b_S0_7_131_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_7_131_d2_representative_1 : ∀ i : Fin 3, b_S0_7_131_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_7_131_d2_incoming_link : b_S0_7_131_d2.incoming = b_S0_5_130_d2.outgoing := by decide
theorem b_S0_7_132_d2_representative_0 : ∀ i : Fin 1, b_S0_7_132_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true] : List Bool)[i.val]!) i := by decide
theorem b_S0_8_132_d2_incoming_link : b_S0_8_132_d2.incoming = b_S0_6_131_d2.outgoing := by decide
theorem b_S0_8_133_d2_representative_0 : ∀ i : Fin 2, b_S0_8_133_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_9_132_d2_representative_0 : ∀ i : Fin 2, b_S0_9_132_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([true,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_9_132_d2_representative_1 : ∀ i : Fin 2, b_S0_9_132_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_9_132_d2_incoming_link : b_S0_9_132_d2.incoming = b_S0_7_131_d2.outgoing := by decide
theorem b_S0_9_133_d2_representative_0 : ∀ i : Fin 3, b_S0_9_133_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,true,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_9_133_d2_representative_1 : ∀ i : Fin 3, b_S0_9_133_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([true,false,true] : List Bool)[i.val]!) i := by decide
theorem b_S0_9_133_d2_incoming_link : b_S0_9_133_d2.incoming = b_S0_7_132_d2.outgoing := by decide
theorem b_S0_9_134_d2_representative_0 : ∀ i : Fin 5, b_S0_9_134_d2.comparison.inclusion i ⟨0,by decide⟩ = (fun i => ([false,false,true,false,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_9_134_d2_representative_1 : ∀ i : Fin 5, b_S0_9_134_d2.comparison.inclusion i ⟨1,by decide⟩ = (fun i => ([false,false,false,true,false] : List Bool)[i.val]!) i := by decide
theorem b_S0_9_134_d2_representative_2 : ∀ i : Fin 5, b_S0_9_134_d2.comparison.inclusion i ⟨2,by decide⟩ = (fun i => ([false,true,false,false,false] : List Bool)[i.val]!) i := by decide
theorem b_Cnu_18_142_d3_incoming_row4518_projection : ∀ i : Fin 0, matrixOf 0 3 b_Cnu_18_142_d3.incoming i ⟨0,by decide⟩ = (eval b_Cnu_18_142_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_Cnu_18_142_d3_incoming_row4519_zero_target : b_Cnu_18_142_d2.h = 0 := by decide
theorem b_Cnu_18_142_d3_incoming_row4520_projection : ∀ i : Fin 0, matrixOf 0 3 b_Cnu_18_142_d3.incoming i ⟨2,by decide⟩ = (eval b_Cnu_18_142_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_10_133_d3_outgoing_row2624_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_10_133_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_13_135_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_10_133_d3_incoming_row2490_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_10_133_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_10_133_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_10_133_d3_incoming_row2491_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_10_133_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_10_133_d2.comparison.projection (fun i => ([true,true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_11_135_d3_representative_0 : ∀ i : Fin 2, b_S0_11_135_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_11_135_d2.comparison.projection (fun i => ([false,true,true,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_11_135_d3_outgoing_row2780_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_11_135_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_14_137_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_11_135_d3_outgoing_row2781_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_11_135_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_14_137_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_11_135_d3_incoming_row2629_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_11_135_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_11_135_d2.comparison.projection (fun i => ([true,false,false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_12_135_d3_representative_0 : ∀ i : Fin 3, b_S0_12_135_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_12_135_d2.comparison.projection (fun i => ([false,false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_12_135_d3_outgoing_row2775_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_12_135_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_15_137_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_12_135_d3_outgoing_row2776_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_12_135_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_15_137_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_12_135_d3_outgoing_row2777_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_12_135_d3.outgoing i ⟨2,by decide⟩ = (eval b_S0_15_137_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_12_135_d3_incoming_row2626_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_12_135_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_12_135_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_12_135_d3_incoming_row2627_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_12_135_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_12_135_d2.comparison.projection (fun i => ([false,true,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_12_135_d3_incoming_link : b_S0_12_135_d3.incoming = b_S0_9_133_d3.outgoing := by decide
theorem b_S0_14_136_d3_outgoing_row2841_projection : ∀ i : Fin 1, matrixOf 1 1 b_S0_14_136_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_17_138_d2.comparison.projection (fun i => ([false,false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_136_d3_incoming_row2686_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_14_136_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_14_136_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_136_d3_incoming_row2687_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_14_136_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_14_136_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_136_d3_incoming_row2688_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_14_136_d3.incoming i ⟨2,by decide⟩ = (eval b_S0_14_136_d2.comparison.projection (fun i => ([true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_137_d3_outgoing_row2912_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_14_137_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_17_139_d2.comparison.projection (fun i => ([false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_137_d3_outgoing_row2913_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_14_137_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_17_139_d2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_137_d3_incoming_row2780_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_14_137_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_14_137_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_137_d3_incoming_row2781_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_14_137_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_14_137_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_14_137_d3_incoming_link : b_S0_14_137_d3.incoming = b_S0_11_135_d3.outgoing := by decide
theorem b_S0_15_137_d3_outgoing_row2909_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_15_137_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_18_139_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_137_d3_incoming_row2775_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_15_137_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_15_137_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_137_d3_incoming_row2776_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_15_137_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_15_137_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_137_d3_incoming_row2777_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_15_137_d3.incoming i ⟨2,by decide⟩ = (eval b_S0_15_137_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_137_d3_incoming_link : b_S0_15_137_d3.incoming = b_S0_12_135_d3.outgoing := by decide
theorem b_S0_15_138_d3_representative_0 : ∀ i : Fin 3, b_S0_15_138_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_15_138_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_138_d3_representative_1 : ∀ i : Fin 3, b_S0_15_138_d3.comparison.inclusion i ⟨1,by decide⟩ = (eval b_S0_15_138_d2.comparison.projection (fun i => ([false,true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_138_d3_outgoing_row3000_projection : ∀ i : Fin 3, matrixOf 3 3 b_S0_15_138_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_18_140_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_138_d3_outgoing_row3001_projection : ∀ i : Fin 3, matrixOf 3 3 b_S0_15_138_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_18_140_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_138_d3_outgoing_row3002_projection : ∀ i : Fin 3, matrixOf 3 3 b_S0_15_138_d3.outgoing i ⟨2,by decide⟩ = (eval b_S0_18_140_d2.comparison.projection (fun i => ([false,false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_15_138_d3_incoming_row2848_projection : ∀ i : Fin 3, matrixOf 3 1 b_S0_15_138_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_15_138_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_16_138_d3_representative_0 : ∀ i : Fin 3, b_S0_16_138_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_16_138_d2.comparison.projection (fun i => ([false,false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_16_138_d3_outgoing_row2997_projection : ∀ i : Fin 0, matrixOf 0 3 b_S0_16_138_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_19_140_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_16_138_d3_outgoing_row2998_projection : ∀ i : Fin 0, matrixOf 0 3 b_S0_16_138_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_19_140_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_16_138_d3_outgoing_row2999_zero_target : b_S0_19_140_d2.h = 0 := by decide
theorem b_S0_16_138_d3_incoming_row2843_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_16_138_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_16_138_d2.comparison.projection (fun i => ([false,true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_16_138_d3_incoming_row2844_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_16_138_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_16_138_d2.comparison.projection (fun i => ([true,false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_17_139_d3_outgoing_row3070_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_17_139_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_20_141_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_17_139_d3_outgoing_row3071_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_17_139_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_20_141_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_17_139_d3_incoming_row2912_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_17_139_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_17_139_d2.comparison.projection (fun i => ([false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_17_139_d3_incoming_row2913_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_17_139_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_17_139_d2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_17_139_d3_incoming_link : b_S0_17_139_d3.incoming = b_S0_14_137_d3.outgoing := by decide
theorem b_S0_18_139_d3_outgoing_row3067_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_18_139_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_21_141_d2.comparison.projection (fun i => ([false,false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_18_139_d3_outgoing_row3068_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_18_139_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_21_141_d2.comparison.projection (fun i => ([false,false,true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_18_139_d3_incoming_row2909_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_18_139_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_18_139_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_18_139_d3_incoming_link : b_S0_18_139_d3.incoming = b_S0_15_137_d3.outgoing := by decide
theorem b_S0_19_140_d3_incoming_row2997_projection : ∀ i : Fin 0, matrixOf 0 3 b_S0_19_140_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_19_140_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_19_140_d3_incoming_row2998_projection : ∀ i : Fin 0, matrixOf 0 3 b_S0_19_140_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_19_140_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_19_140_d3_incoming_row2999_zero_target : b_S0_19_140_d2.h = 0 := by decide
theorem b_S0_19_140_d3_incoming_link : b_S0_19_140_d3.incoming = b_S0_16_138_d3.outgoing := by decide
theorem b_S0_20_141_d3_representative_0 : ∀ i : Fin 1, b_S0_20_141_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_20_141_d2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_20_141_d3_outgoing_row3242_projection : ∀ i : Fin 0, matrixOf 0 1 b_S0_20_141_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_23_143_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_20_141_d3_incoming_row3070_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_20_141_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_20_141_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_20_141_d3_incoming_row3071_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_20_141_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_20_141_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_20_141_d3_incoming_link : b_S0_20_141_d3.incoming = b_S0_17_139_d3.outgoing := by decide
theorem b_S0_20_143_d3_outgoing_row3388_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_20_143_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_23_145_d2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_21_142_d3_outgoing_row3309_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_21_142_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_24_144_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_21_142_d3_incoming_row3138_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_21_142_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_21_142_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_21_142_d3_incoming_row3139_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_21_142_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_21_142_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_21_142_d3_incoming_row3140_projection : ∀ i : Fin 1, matrixOf 1 3 b_S0_21_142_d3.incoming i ⟨2,by decide⟩ = (eval b_S0_21_142_d2.comparison.projection (fun i => ([false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_22_142_d3_incoming_link : b_S0_22_142_d3.incoming = b_S0_19_140_d3.outgoing := by decide
theorem b_S0_22_144_d3_outgoing_row3481_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_22_144_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_25_146_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_22_144_d3_outgoing_row3482_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_22_144_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_25_146_d2.comparison.projection (fun i => ([false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_22_144_d3_incoming_row3315_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_22_144_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_22_144_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_22_144_d3_incoming_row3316_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_22_144_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_22_144_d2.comparison.projection (fun i => ([false,true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_23_143_d3_incoming_row3242_projection : ∀ i : Fin 0, matrixOf 0 1 b_S0_23_143_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_23_143_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_23_143_d3_incoming_link : b_S0_23_143_d3.incoming = b_S0_20_141_d3.outgoing := by decide
theorem b_S0_24_144_d3_representative_0 : ∀ i : Fin 2, b_S0_24_144_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_24_144_d2.comparison.projection (fun i => ([false,true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_24_144_d3_representative_1 : ∀ i : Fin 2, b_S0_24_144_d3.comparison.inclusion i ⟨1,by decide⟩ = (eval b_S0_24_144_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_24_144_d3_outgoing_row3475_projection : ∀ i : Fin 0, matrixOf 0 2 b_S0_24_144_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_27_146_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_24_144_d3_outgoing_row3476_zero_target : b_S0_27_146_d2.h = 0 := by decide
theorem b_S0_24_144_d3_incoming_row3309_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_24_144_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_24_144_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_24_144_d3_incoming_link : b_S0_24_144_d3.incoming = b_S0_21_142_d3.outgoing := by decide
theorem b_S0_25_146_d3_outgoing_row3621_projection : ∀ i : Fin 0, matrixOf 0 1 b_S0_25_146_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_28_148_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_25_146_d3_incoming_row3481_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_25_146_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_25_146_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_25_146_d3_incoming_row3482_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_25_146_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_25_146_d2.comparison.projection (fun i => ([false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_25_146_d3_incoming_link : b_S0_25_146_d3.incoming = b_S0_22_144_d3.outgoing := by decide
theorem b_S0_26_147_d3_outgoing_row3733_projection : ∀ i : Fin 0, matrixOf 0 1 b_S0_26_147_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_29_149_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_26_147_d3_incoming_row3552_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_26_147_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_26_147_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_26_147_d3_incoming_row3553_projection : ∀ i : Fin 1, matrixOf 1 2 b_S0_26_147_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_26_147_d2.comparison.projection (fun i => ([false,false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_28_147_d3_representative_0 : ∀ i : Fin 1, b_S0_28_147_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_28_147_d2.comparison.projection (fun i => ([false,false,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_28_147_d3_outgoing_row3728_projection : ∀ i : Fin 0, matrixOf 0 1 b_S0_28_147_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_31_149_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_28_147_d3_incoming_link : b_S0_28_147_d3.incoming = b_S0_25_145_d3.outgoing := by decide
theorem b_S0_30_150_d3_representative_0 : ∀ i : Fin 1, b_S0_30_150_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_30_150_d2.comparison.projection (fun i => ([true,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_30_150_d3_outgoing_row3978_projection : ∀ i : Fin 0, matrixOf 0 1 b_S0_30_150_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_33_152_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_5_130_d3_incoming_row2314_projection : ∀ i : Fin 0, matrixOf 0 1 b_S0_5_130_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_5_130_d2.comparison.projection (fun i => ([false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_7_132_d3_outgoing_row2572_projection : ∀ i : Fin 4, matrixOf 4 1 b_S0_7_132_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_10_134_d2.comparison.projection (fun i => ([false,false,false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_7_132_d3_incoming_row2437_projection : ∀ i : Fin 1, matrixOf 1 1 b_S0_7_132_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_7_132_d2.comparison.projection (fun i => ([true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_8_132_d3_incoming_link : b_S0_8_132_d3.incoming = b_S0_5_130_d3.outgoing := by decide
theorem b_S0_9_132_d3_representative_0 : ∀ i : Fin 2, b_S0_9_132_d3.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_9_132_d2.comparison.projection (fun i => ([true,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_9_132_d3_outgoing_row2569_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_9_132_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_12_134_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_9_132_d3_outgoing_row2570_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_9_132_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_12_134_d2.comparison.projection (fun i => ([false,true,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_9_132_d3_incoming_row2434_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_9_132_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_9_132_d2.comparison.projection (fun i => ([false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_9_133_d3_outgoing_row2626_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_9_133_d3.outgoing i ⟨0,by decide⟩ = (eval b_S0_12_135_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_9_133_d3_outgoing_row2627_projection : ∀ i : Fin 3, matrixOf 3 2 b_S0_9_133_d3.outgoing i ⟨1,by decide⟩ = (eval b_S0_12_135_d2.comparison.projection (fun i => ([false,true,true] : List Bool)[i.val]!)) i := by decide
theorem b_S0_9_133_d3_incoming_row2492_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_9_133_d3.incoming i ⟨0,by decide⟩ = (eval b_S0_9_133_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_9_133_d3_incoming_row2493_projection : ∀ i : Fin 2, matrixOf 2 2 b_S0_9_133_d3.incoming i ⟨1,by decide⟩ = (eval b_S0_9_133_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!)) i := by decide
theorem b_S0_11_135_d4_outgoing_row2781_projection : ∀ i : Fin 2, matrixOf 2 1 b_S0_11_135_d4.outgoing i ⟨0,by decide⟩ = (eval b_S0_15_138_d3.comparison.projection (eval b_S0_15_138_d2.comparison.projection (fun i => ([true,false,false] : List Bool)[i.val]!))) i := by decide
theorem b_S0_12_135_d4_representative_0 : ∀ i : Fin 1, b_S0_12_135_d4.comparison.inclusion i ⟨0,by decide⟩ = (eval b_S0_12_135_d3.comparison.projection (eval b_S0_12_135_d2.comparison.projection (fun i => ([false,false,true] : List Bool)[i.val]!))) i := by decide
theorem b_S0_12_135_d4_outgoing_row2777_projection : ∀ i : Fin 1, matrixOf 1 1 b_S0_12_135_d4.outgoing i ⟨0,by decide⟩ = (eval b_S0_16_138_d3.comparison.projection (eval b_S0_16_138_d2.comparison.projection (fun i => ([false,false,false] : List Bool)[i.val]!))) i := by decide
theorem b_S0_18_139_d4_incoming_link : b_S0_18_139_d4.incoming = b_S0_14_136_d4.outgoing := by decide
theorem candidate0_differential_zero {X : Type} (d : X → Homology (matrixOf 2 0 b_Cnu_18_142_d3.outgoing) (matrixOf 0 3 b_Cnu_18_142_d3.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_Cnu_18_142_d3.comparison b_Cnu_18_142_d3_complete.2 d x
theorem candidate1_differential_zero {X : Type} (d : X → Homology (matrixOf 4 2 b_Cnu_18_142_d2.outgoing) (matrixOf 2 5 b_Cnu_18_142_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_Cnu_18_142_d2.comparison b_Cnu_18_142_d2_complete.2 d x
theorem candidate2_differential_zero {X : Type} (d : X → Homology (matrixOf 2 1 b_Cnu_5_132_d2.outgoing) (matrixOf 1 0 b_Cnu_5_132_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_Cnu_5_132_d2.comparison b_Cnu_5_132_d2_complete.2 d x
theorem candidate3_differential_zero {X : Type} (d : X → Homology (matrixOf 2 2 b_S0_14_137_d3.outgoing) (matrixOf 2 2 b_S0_14_137_d3.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_14_137_d3.comparison b_S0_14_137_d3_complete.2 d x
theorem candidate6_differential_zero {X : Type} (d : X → Homology (matrixOf 0 0 b_S0_18_139_d4.outgoing) (matrixOf 0 0 b_S0_18_139_d4.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_18_139_d4.comparison b_S0_18_139_d4_complete.2 d x
theorem candidate8_differential_zero {X : Type} (d : X → Homology (matrixOf 4 4 b_S0_17_141_d2.outgoing) (matrixOf 4 5 b_S0_17_141_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_17_141_d2.comparison b_S0_17_141_d2_complete.2 d x
theorem candidate10_differential_zero {X : Type} (d : X → Homology (matrixOf 4 1 b_S0_19_140_d2.outgoing) (matrixOf 1 2 b_S0_19_140_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_19_140_d2.comparison b_S0_19_140_d2_complete.2 d x
theorem candidate11_differential_zero {X : Type} (d : X → Homology (matrixOf 0 0 b_S0_21_142_d4.outgoing) (matrixOf 0 0 b_S0_21_142_d4.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_21_142_d4.comparison b_S0_21_142_d4_complete.2 d x
theorem candidate14_differential_zero {X : Type} (d : X → Homology (matrixOf 2 1 b_S0_20_143_d3.outgoing) (matrixOf 1 0 b_S0_20_143_d3.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_20_143_d3.comparison b_S0_20_143_d3_complete.2 d x
theorem candidate17_differential_zero {X : Type} (d : X → Homology (matrixOf 1 2 b_S0_22_144_d3.outgoing) (matrixOf 2 2 b_S0_22_144_d3.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_22_144_d3.comparison b_S0_22_144_d3_complete.2 d x
theorem candidate20_differential_zero {X : Type} (d : X → Homology (matrixOf 1 0 b_S0_22_145_d2.outgoing) (matrixOf 0 2 b_S0_22_145_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_22_145_d2.comparison b_S0_22_145_d2_complete.2 d x
theorem candidate21_differential_zero {X : Type} (d : X → Homology (matrixOf 2 1 b_S0_24_143_d2.outgoing) (matrixOf 1 1 b_S0_24_143_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_24_143_d2.comparison b_S0_24_143_d2_complete.2 d x
theorem candidate22_differential_zero {X : Type} (d : X → Homology (matrixOf 0 1 b_S0_25_146_d3.outgoing) (matrixOf 1 2 b_S0_25_146_d3.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_25_146_d3.comparison b_S0_25_146_d3_complete.2 d x
theorem candidate23_differential_zero {X : Type} (d : X → Homology (matrixOf 1 0 b_S0_26_147_d4.outgoing) (matrixOf 0 0 b_S0_26_147_d4.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_26_147_d4.comparison b_S0_26_147_d4_complete.2 d x
theorem candidate28_differential_zero {X : Type} (d : X → Homology (matrixOf 3 1 b_S0_27_146_d2.outgoing) (matrixOf 1 1 b_S0_27_146_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_27_146_d2.comparison b_S0_27_146_d2_complete.2 d x
theorem candidate29_differential_zero {X : Type} (d : X → Homology (matrixOf 3 2 b_S0_28_152_d2.outgoing) (matrixOf 2 1 b_S0_28_152_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_28_152_d2.comparison b_S0_28_152_d2_complete.2 d x
theorem candidate30_differential_zero {X : Type} (d : X → Homology (matrixOf 3 2 b_S0_28_152_d2.outgoing) (matrixOf 2 1 b_S0_28_152_d2.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero b_S0_28_152_d2.comparison b_S0_28_152_d2_complete.2 d x
end AllClaimZeroTargetCertificates.Data
