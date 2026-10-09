import ModuleMapCertificates.Basic
namespace Fact715TrajectoryCertificates.MapActual
open NamedElementCertificates LinProgramCertificates ModuleMapCertificates
def images : Nat → Polynomial
  | 0 => []
  | 1 => [[0]]
  | 5 => [[3,3]]
  | 11 => [[20]]
  | 14 => [[23]]
  | 15 => [[24]]
  | 302 => [[9,261]]
  | _ => []
theorem basis5020 : MapValid images [] ⟨[190],15⟩ [[24,190]] := by lin_cert using ([] : List Term)
theorem basis5021 : MapValid images [] ⟨[425],1⟩ [[0,425]] := by lin_cert using ([] : List Term)
theorem basis5022 : MapValid images [] ⟨[0,0,0,391],1⟩ [[0,0,0,0,391]] := by lin_cert using ([] : List Term)
theorem basis5023 : MapValid images [] ⟨[0,0,0,0,375],1⟩ [[0,0,0,0,0,375]] := by lin_cert using ([] : List Term)
theorem basis5024 : MapValid images [] ⟨[458],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5025 : MapValid images [] ⟨[13,251],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5026 : MapValid images [] ⟨[3,363],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5027 : MapValid images [] ⟨[0,0,0,0,0,0,0,0,0,0,0,0,324],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5159 : MapValid images [] ⟨[287],5⟩ [[3,3,287]] := by lin_cert using ([] : List Term)
theorem basis5160 : MapValid images [] ⟨[440],1⟩ [[0,440]] := by lin_cert using ([] : List Term)
theorem basis5161 : MapValid images [] ⟨[439],1⟩ [[0,439]] := by lin_cert using ([] : List Term)
theorem basis5162 : MapValid images [] ⟨[0,68,107],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5163 : MapValid images [] ⟨[0,0,0,0,0,0,0,0,0,0,0,0,0,69,69],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5255 : MapValid images [[[20,209],[17,221],[8,280]],[[17,221],[1,437],[0,0,438]],[[1,437],[0,0,438],[0,0,0,0,418]]] ⟨[209],11⟩ [[0,0,0,0,418],[8,280]] := by lin_cert using ([⟨0,[[]]⟩,⟨1,[[]]⟩,⟨2,[[]]⟩] : List Term)
theorem basis5256 : MapValid images [] ⟨[0,438],1⟩ [[0,0,438]] := by lin_cert using ([] : List Term)
theorem basis5257 : MapValid images [] ⟨[0,0,0,418],1⟩ [[0,0,0,0,418]] := by lin_cert using ([] : List Term)
theorem basis5258 : MapValid images [] ⟨[0,0,0,449],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5259 : MapValid images [] ⟨[],302⟩ [[9,261]] := by lin_cert using ([] : List Term)
theorem basis5260 : MapValid images [] ⟨[448],1⟩ [[0,448]] := by lin_cert using ([] : List Term)
theorem basis5261 : MapValid images [] ⟨[0,440],1⟩ [[0,0,440]] := by lin_cert using ([] : List Term)
theorem basis5262 : MapValid images [] ⟨[0,439],1⟩ [[0,0,439]] := by lin_cert using ([] : List Term)
theorem basis5263 : MapValid images [] ⟨[0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5395 : MapValid images [[[23,201],[15,235],[9,267],[8,286]],[[8,286],[8,285]],[[8,285],[0,3,359]],[[15,235],[2,421]],[[2,421],[0,0,0,438]],[[0,0,0,438],[0,0,0,0,0,418]]] ⟨[201],14⟩ [[0,0,0,0,0,418],[0,3,359],[9,267]] := by lin_cert using ([⟨0,[[]]⟩,⟨1,[[]]⟩,⟨2,[[]]⟩,⟨3,[[]]⟩,⟨4,[[]]⟩,⟨5,[[]]⟩] : List Term)
theorem basis5396 : MapValid images [] ⟨[3,359],1⟩ [[0,3,359]] := by lin_cert using ([] : List Term)
theorem basis5397 : MapValid images [] ⟨[0,0,0,0,418],1⟩ [[0,0,0,0,0,418]] := by lin_cert using ([] : List Term)
theorem basis5398 : MapValid images [] ⟨[8,8,209],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5399 : MapValid images [] ⟨[0,0,0,0,449],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5532 : MapValid images [[[23,23],[17,34],[13,13,13]],[[17,34],[0,0,0,80]],[[0,83],[0,82]],[[0,82],[0,0,0,0,0,0,0,18,18]],[[0,0,0,0,0,0,0,0,18,18]]] ⟨[23,83],14⟩ [[13,13,13,83]] := by lin_cert using ([⟨0,[[83]]⟩,⟨1,[[83]]⟩,⟨2,[[0,0,80]]⟩,⟨3,[[0,0,80]]⟩,⟨4,[[0,80]]⟩] : List Term)
theorem basis5533 : MapValid images [] ⟨[8,9,188],1⟩ [[0,8,9,188]] := by lin_cert using ([] : List Term)
theorem basis5534 : MapValid images [] ⟨[0,0,0,437],1⟩ [[0,0,0,0,437]] := by lin_cert using ([] : List Term)
theorem basis5535 : MapValid images [] ⟨[8,8,212],0⟩ [] := by lin_cert using ([] : List Term)
theorem basis5536 : MapValid images [] ⟨[0,0,0,0,0,0,440],0⟩ [] := by lin_cert using ([] : List Term)
#print axioms ModuleMapCertificates.mapValid_linear
end Fact715TrajectoryCertificates.MapActual
