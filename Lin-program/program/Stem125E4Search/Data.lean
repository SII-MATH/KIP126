import Stem125HomologyCertificates.D3
namespace Stem125E4Search.Data
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
def b_S0_37_161_d2 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_37_161_d2_complete : b_S0_37_161_d2.Valid := by lin_cert using ()
def b_S0_39_163_d2 : WireComparison := ⟨1,0,1,2,0,[],[true,false],[],[],[true,false],[]⟩
theorem b_S0_39_163_d2_complete : b_S0_39_163_d2.Valid := by lin_cert using ()
def b_S0_48_172_d2 : WireComparison := ⟨1,0,0,1,0,[],[],[],[],[],[]⟩
theorem b_S0_48_172_d2_complete : b_S0_48_172_d2.Valid := by lin_cert using ()
def b_S0_60_184_d2 : WireComparison := ⟨1,1,0,0,0,[],[],[],[],[],[]⟩
theorem b_S0_60_184_d2_complete : b_S0_60_184_d2.Valid := by lin_cert using ()
def b_S0_34_159_d3 : WireComparison := ⟨1,0,1,2,0,[],[false,true],[],[],[false,true],[]⟩
theorem b_S0_34_159_d3_complete : b_S0_34_159_d3.Valid := by lin_cert using ()
def b_S0_36_161_d3 : WireComparison := ⟨1,0,1,2,0,[],[false,true],[],[],[false,true],[]⟩
theorem b_S0_36_161_d3_complete : b_S0_36_161_d3.Valid := by lin_cert using ()
def b_S0_45_170_d3 : WireComparison := ⟨1,0,1,3,0,[],[false,false,true],[],[],[false,false,true],[]⟩
theorem b_S0_45_170_d3_complete : b_S0_45_170_d3.Valid := by lin_cert using ()
def b_S0_57_182_d3 : WireComparison := ⟨1,0,1,1,0,[],[true],[],[],[true],[]⟩
theorem b_S0_57_182_d3_complete : b_S0_57_182_d3.Valid := by lin_cert using ()
def branch0 : WireComparison := page_comparison% "Stem125E4Search/branch0.json"
theorem branch0_complete : branch0.Valid := by lin_cert using ()
def branch1 : WireComparison := page_comparison% "Stem125E4Search/branch1.json"
theorem branch1_complete : branch1.Valid := by lin_cert using ()
def branch (b : Bool) : WireComparison := if b then branch1 else branch0
theorem branch_complete (b : Bool) : (branch b).Valid := by cases b <;> first | exact branch0_complete | exact branch1_complete
#print axioms branch_complete
end Stem125E4Search.Data
