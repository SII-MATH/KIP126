import PageTransitionCertificates.Import
import Prop79IncomingSearch.Finite
namespace Prop79TargetSearch.Finite
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
def Cnu_14_139_d3 : WireComparison := page_comparison% "Prop79TargetSearch/wires/Cnu_14_139_d3.json"
theorem Cnu_14_139_d3_complete : Cnu_14_139_d3.Valid := by lin_cert using ()
#print axioms Cnu_14_139_d3_complete
def Cnu_14_139_d4 : WireComparison := page_comparison% "Prop79TargetSearch/wires/Cnu_14_139_d4.json"
theorem Cnu_14_139_d4_complete : Cnu_14_139_d4.Valid := by lin_cert using ()
#print axioms Cnu_14_139_d4_complete
end Prop79TargetSearch.Finite
