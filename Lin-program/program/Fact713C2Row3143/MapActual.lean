import ModuleMapCertificates.Basic
namespace Fact713C2Row3143.MapActual
open NamedElementCertificates LinProgramCertificates ModuleMapCertificates
def images : Nat → Polynomial
  | 0 => []
  | 1 => [[1]]
  | 6 => [[0,3,3]]
  | 27 => [[13,13]]
  | 61 => [[76]]
  | 249 => [[280]]
  | _ => []
theorem basis3178 : MapValid images [[[76,90],[7,286],[7,285]],[[7,285],[0,439]],[[7,286],[7,285],[3,3,287]]] ⟨[90],61⟩ [[3,3,287]] := by lin_cert using ([⟨0,[[]]⟩,⟨1,[[]]⟩,⟨2,[[]]⟩,⟨1,[[]]⟩] : List Term)
theorem basis3179 : MapValid images [] ⟨[456],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3180 : MapValid images [] ⟨[67,107],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3181 : MapValid images [] ⟨[1,439],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3288 : MapValid images [] ⟨[8],249⟩ [[8,280]] := by lin_cert using ([] : List Term)
theorem basis3289 : MapValid images [[[1,437],[0,0,438],[0,0,0,0,418]]] ⟨[437],1⟩ [[0,0,0,0,418],[0,0,438]] := by lin_cert using ([⟨0,[[]]⟩] : List Term)
theorem basis3290 : MapValid images [] ⟨[472],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3375 : MapValid images [] ⟨[9,13,13,95],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3449 : MapValid images [] ⟨[13,83],27⟩ [[13,13,13,83]] := by lin_cert using ([] : List Term)
theorem basis3450 : MapValid images [[[3,292],[0,358]],[[3,358],[0,0,437]]] ⟨[292],6⟩ [[0,0,0,0,437]] := by lin_cert using ([⟨0,[[0,3]]⟩,⟨1,[[0,0]]⟩] : List Term)
theorem basis3451 : MapValid images [] ⟨[492],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3546 : MapValid images [[[1,1,447],[0,0,8,8,201]],[[0,0,8,8,201],[0,0,0,0,0,0,422]]] ⟨[1,447],1⟩ [[0,0,0,0,0,0,422]] := by lin_cert using ([⟨0,[[]]⟩,⟨1,[[]]⟩] : List Term)
theorem basis3547 : MapValid images [] ⟨[499],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis3548 : MapValid images [] ⟨[9,13,13,101],0⟩ [] := by lin_cert using ([] : List Term)
#print axioms ModuleMapCertificates.mapValid_linear
end Fact713C2Row3143.MapActual
