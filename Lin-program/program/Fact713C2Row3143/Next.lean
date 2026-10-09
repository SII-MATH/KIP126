import Fact713C2Row3143.MapComparison
namespace Fact713C2Row3143.Next
open LinearCertificates PageTransitionCertificates
def next : WireComparison := ⟨1,2,3,1,3,[false,false,false,false,false,false],[false,false,false],[true,false,false,false,true,false,false,false,true],[true,false,false,false,true,false,false,false,true],[false,false,false],[false,false,false,false,false,false]⟩
theorem next_complete : next.Valid := by lin_cert using ()
end Fact713C2Row3143.Next
