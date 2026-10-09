import ModuleMapCertificates.Basic
namespace Fact764TrajectoryAudit.MapActual
open NamedElementCertificates LinProgramCertificates ModuleMapCertificates
def images : Nat → Polynomial
  | 0 => []
  | 1 => [[1]]
  | 16 => [[24]]
  | 261 => [[293]]
  | 436 => [[8,318]]
  | _ => []
theorem basis3660 : MapValid images [[[1,481],[0,495]]] ⟨[481],1⟩ [[0,495]] := by lin_cert using ([⟨0,[[]]⟩] : List Term)
theorem basis3661 : MapValid images [[[1,112],[0,0,113]]] ⟨[69,112],1⟩ [[0,0,69,113]] := by lin_cert using ([⟨0,[[69]]⟩] : List Term)
theorem basis3662 : MapValid images [[[1,1,457],[0,0,0,475]]] ⟨[1,457],1⟩ [[0,0,0,475]] := by lin_cert using ([⟨0,[[]]⟩] : List Term)
theorem basis3663 : MapValid images [] ⟨[7,328],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3664 : MapValid images [] ⟨[1,495],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3732 : MapValid images [[[24,133],[23,134]],[[23,134],[13,164]]] ⟨[13,133],16⟩ [[13,13,164]] := by lin_cert using ([⟨0,[[13]]⟩,⟨1,[[13]]⟩] : List Term)
theorem basis3733 : MapValid images [] ⟨[493],1⟩ [[1,493]] := by lin_cert using ([] : List Term)
theorem basis3734 : MapValid images [[[1,1,1],[0,0,2]],[[2,448],[0,69,112]]] ⟨[1,1,448],1⟩ [[0,0,0,69,112]] := by lin_cert using ([⟨0,[[448]]⟩,⟨1,[[0,0]]⟩] : List Term)
theorem basis3735 : MapValid images [] ⟨[519],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3736 : MapValid images [] ⟨[8,9,209],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3842 : MapValid images [] ⟨[],436⟩ [[8,318]] := by lin_cert using ([] : List Term)
theorem basis3843 : MapValid images [] ⟨[8,9,212],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3844 : MapValid images [] ⟨[9],261⟩ [[9,293]] := by lin_cert using ([] : List Term)
theorem basis3845 : MapValid images [] ⟨[501],1⟩ [[1,501]] := by lin_cert using ([] : List Term)
theorem basis3846 : MapValid images [] ⟨[500],1⟩ [[1,500]] := by lin_cert using ([] : List Term)
theorem basis3847 : MapValid images [] ⟨[9,13,188],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3934 : MapValid images [] ⟨[510],1⟩ [[1,510]] := by lin_cert using ([] : List Term)
theorem basis3935 : MapValid images [] ⟨[537],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3936 : MapValid images [] ⟨[13,13,13,105],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis4007 : MapValid images [[[1,517],[0,17,255]],[[0,17,255],[0,0,0,0,0,0,0,0,0,449]]] ⟨[517],1⟩ [[0,0,0,0,0,0,0,0,0,449]] := by lin_cert using ([⟨0,[[]]⟩,⟨1,[[]]⟩] : List Term)
theorem basis4008 : MapValid images [[[1,316],[0,2,292]],[[2,8],[0,9]]] ⟨[8,316],1⟩ [[0,0,9,292]] := by lin_cert using ([⟨0,[[8]]⟩,⟨1,[[0,292]]⟩] : List Term)
theorem basis4009 : MapValid images [] ⟨[549],0⟩ [] := by lin_cert using ([] : List Term)
#print axioms ModuleMapCertificates.mapValid_linear
end Fact764TrajectoryAudit.MapActual
