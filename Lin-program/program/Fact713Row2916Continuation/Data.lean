import Fact713FourBranchContinuation.Branches
namespace Fact713Row2916Continuation.Data
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_17_140_d4 : WireComparison := page_comparison% "Fact713Row2916Continuation/wire/b_S0_17_140_d4.json"
theorem b_S0_17_140_d4_valid : b_S0_17_140_d4.Valid := by lin_cert using ()
#print axioms b_S0_17_140_d4_valid
def b_S0_17_140_d5 : WireComparison := page_comparison% "Fact713Row2916Continuation/wire/b_S0_17_140_d5.json"
theorem b_S0_17_140_d5_valid : b_S0_17_140_d5.Valid := by lin_cert using ()
#print axioms b_S0_17_140_d5_valid
def b_S0_22_144_d5 : WireComparison := page_comparison% "Fact713Row2916Continuation/wire/b_S0_22_144_d5.json"
theorem b_S0_22_144_d5_valid : b_S0_22_144_d5.Valid := by lin_cert using ()
#print axioms b_S0_22_144_d5_valid
end Fact713Row2916Continuation.Data
