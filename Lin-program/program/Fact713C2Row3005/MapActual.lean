import ModuleMapCertificates.Basic
namespace Fact713C2Row3005.MapActual
open NamedElementCertificates LinProgramCertificates ModuleMapCertificates
def images : Nat → Polynomial
  | 0 => []
  | 1 => [[1]]
  | 61 => [[76]]
  | 249 => [[280]]
  | 367 => [[0,0,0,391],[426]]
  | 368 => [[0,0,0,0,375],[0,69,89]]
  | 373 => [[23,190]]
  | _ => []
theorem basis3038 : MapValid images [] ⟨[],368⟩ [[0,0,0,0,375],[0,69,89]] := by lin_cert using ([] : List Term)
theorem basis3039 : MapValid images [] ⟨[],367⟩ [[0,0,0,391],[426]] := by lin_cert using ([] : List Term)
theorem basis3040 : MapValid images [] ⟨[25,190],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3041 : MapValid images [] ⟨[3,336],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3106 : MapValid images [] ⟨[],373⟩ [[23,190]] := by lin_cert using ([] : List Term)
theorem basis3107 : MapValid images [] ⟨[418],1⟩ [[1,418]] := by lin_cert using ([] : List Term)
theorem basis3108 : MapValid images [] ⟨[417],1⟩ [[1,417]] := by lin_cert using ([] : List Term)
theorem basis3109 : MapValid images [] ⟨[449],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3110 : MapValid images [] ⟨[1,7,275],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3175 : MapValid images [] ⟨[424],1⟩ [[1,424]] := by lin_cert using ([] : List Term)
theorem basis3176 : MapValid images [] ⟨[9,261],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3177 : MapValid images [] ⟨[1,438],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3178 : MapValid images [[[76,90],[7,286],[7,285]],[[7,285],[0,439]],[[7,286],[7,285],[3,3,287]]] ⟨[90],61⟩ [[3,3,287]] := by lin_cert using ([⟨0,[[]]⟩,⟨1,[[]]⟩,⟨2,[[]]⟩,⟨1,[[]]⟩] : List Term)
theorem basis3179 : MapValid images [] ⟨[456],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3180 : MapValid images [] ⟨[67,107],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3181 : MapValid images [] ⟨[1,439],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3288 : MapValid images [] ⟨[8],249⟩ [[8,280]] := by lin_cert using ([] : List Term)
theorem basis3289 : MapValid images [[[1,437],[0,0,438],[0,0,0,0,418]]] ⟨[437],1⟩ [[0,0,0,0,418],[0,0,438]] := by lin_cert using ([⟨0,[[]]⟩] : List Term)
theorem basis3290 : MapValid images [] ⟨[472],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3375 : MapValid images [] ⟨[9,13,13,95],0⟩ [] := by lin_cert using ([] : List Term)
#print axioms ModuleMapCertificates.mapValid_linear
end Fact713C2Row3005.MapActual
