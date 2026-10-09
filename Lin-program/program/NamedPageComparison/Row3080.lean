import PageTransitionCertificates.Import
namespace NamedPageComparison.Row3080
open LinearCertificates PageTransitionCertificates
def targetD2 : WireComparison := ⟨1,4,4,5,0,[true,false,false,false,false,false,false,false,false,false,false,false,true,false,true,false],[false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false,false,false,false],[],[],[false,false,false,true,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false],[true,false,false,false,false,false,false,false,true,false,false,true,false,false,false,false]⟩
theorem target_complete : targetD2.Valid := by lin_cert using ()
theorem every_map_to_target_zero (f : Vec n → Vec 0) (x : Vec n) : f x = zero := by
  funext i
  exact Fin.elim0 i
theorem every_d3_matrix_zero (d : Matrix 0 n) : d = (fun _ _ => false) := by
  funext i
  exact Fin.elim0 i
end NamedPageComparison.Row3080
