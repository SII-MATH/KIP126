import AggregateTargetInventory.Bases
import Mathlib.Tactic.FinCases
import Mathlib.Data.Fintype.Fin
namespace AggregateTargetInventory.Aggregate
open LinearCertificates StaircaseCertificates Bases
def dimensions : List Nat := [1,2,1,2,5,5,5,5,5,3,5,4,2,2,3,3,3,4,2,1,4,1,2,4,2,2,3,1,2,2,2,1,1,2,2,1,2,1,1,1,1,1,1,1,1]
theorem filtration_count : dimensions.length = 45 := by decide
theorem total_dimension : dimensions.sum = 105 := by decide
def dim (i : Fin 45) : Nat := dimensions[i.val]!
abbrev Coordinates := (i : Fin 45) → Vec (dim i)
def bases (i : Fin 45) : BasisCertificate (dim i) := match i with
  | ⟨0,_⟩ => f5
  | ⟨1,_⟩ => f6
  | ⟨2,_⟩ => f7
  | ⟨3,_⟩ => f8
  | ⟨4,_⟩ => f9
  | ⟨5,_⟩ => f10
  | ⟨6,_⟩ => f11
  | ⟨7,_⟩ => f12
  | ⟨8,_⟩ => f13
  | ⟨9,_⟩ => f14
  | ⟨10,_⟩ => f15
  | ⟨11,_⟩ => f16
  | ⟨12,_⟩ => f17
  | ⟨13,_⟩ => f18
  | ⟨14,_⟩ => f19
  | ⟨15,_⟩ => f20
  | ⟨16,_⟩ => f21
  | ⟨17,_⟩ => f22
  | ⟨18,_⟩ => f23
  | ⟨19,_⟩ => f24
  | ⟨20,_⟩ => f25
  | ⟨21,_⟩ => f26
  | ⟨22,_⟩ => f27
  | ⟨23,_⟩ => f28
  | ⟨24,_⟩ => f29
  | ⟨25,_⟩ => f30
  | ⟨26,_⟩ => f31
  | ⟨27,_⟩ => f33
  | ⟨28,_⟩ => f34
  | ⟨29,_⟩ => f36
  | ⟨30,_⟩ => f37
  | ⟨31,_⟩ => f38
  | ⟨32,_⟩ => f39
  | ⟨33,_⟩ => f40
  | ⟨34,_⟩ => f41
  | ⟨35,_⟩ => f42
  | ⟨36,_⟩ => f43
  | ⟨37,_⟩ => f44
  | ⟨38,_⟩ => f45
  | ⟨39,_⟩ => f46
  | ⟨40,_⟩ => f49
  | ⟨41,_⟩ => f52
  | ⟨42,_⟩ => f55
  | ⟨43,_⟩ => f56
  | ⟨44,_⟩ => f57
  | ⟨n+45,h⟩ => False.elim (by omega)
theorem all_bases (i : Fin 45) : IsBasis (bases i) := by
  fin_cases i
  · exact f5_basis
  · exact f6_basis
  · exact f7_basis
  · exact f8_basis
  · exact f9_basis
  · exact f10_basis
  · exact f11_basis
  · exact f12_basis
  · exact f13_basis
  · exact f14_basis
  · exact f15_basis
  · exact f16_basis
  · exact f17_basis
  · exact f18_basis
  · exact f19_basis
  · exact f20_basis
  · exact f21_basis
  · exact f22_basis
  · exact f23_basis
  · exact f24_basis
  · exact f25_basis
  · exact f26_basis
  · exact f27_basis
  · exact f28_basis
  · exact f29_basis
  · exact f30_basis
  · exact f31_basis
  · exact f33_basis
  · exact f34_basis
  · exact f36_basis
  · exact f37_basis
  · exact f38_basis
  · exact f39_basis
  · exact f40_basis
  · exact f41_basis
  · exact f42_basis
  · exact f43_basis
  · exact f44_basis
  · exact f45_basis
  · exact f46_basis
  · exact f49_basis
  · exact f52_basis
  · exact f55_basis
  · exact f56_basis
  · exact f57_basis
def forward (x : Coordinates) : Coordinates := fun i => eval (bases i).basis (x i)
def backward (x : Coordinates) : Coordinates := fun i => eval (bases i).inverse (x i)
theorem forward_backward (x : Coordinates) : forward (backward x) = x := by
  funext i
  exact (all_bases i).1 (x i)
theorem backward_forward (x : Coordinates) : backward (forward x) = x := by
  funext i
  exact (all_bases i).2 (x i)
inductive Status where | incoming | outgoing | unknown deriving DecidableEq
def statuses : List Status := [.outgoing,.outgoing,.outgoing,.incoming,.outgoing,.outgoing,.unknown,.outgoing,.outgoing,.outgoing,.outgoing,.incoming,.outgoing,.outgoing,.outgoing,.outgoing,.incoming,.incoming,.outgoing,.outgoing,.outgoing,.incoming,.incoming,.incoming,.outgoing,.outgoing,.incoming,.incoming,.incoming,.incoming,.outgoing,.incoming,.unknown,.outgoing,.incoming,.incoming,.outgoing,.outgoing,.outgoing,.incoming,.incoming,.outgoing,.outgoing,.incoming,.outgoing,.incoming,.outgoing,.outgoing,.outgoing,.outgoing,.incoming,.outgoing,.outgoing,.incoming,.outgoing,.outgoing,.incoming,.incoming,.outgoing,.outgoing,.outgoing,.outgoing,.outgoing,.incoming,.unknown,.unknown,.outgoing,.outgoing,.outgoing,.outgoing,.incoming,.incoming,.outgoing,.outgoing,.incoming,.outgoing,.incoming,.outgoing,.incoming,.incoming,.outgoing,.outgoing,.incoming,.incoming,.incoming,.outgoing,.incoming,.outgoing,.outgoing,.outgoing,.incoming,.outgoing,.outgoing,.outgoing,.outgoing,.outgoing,.outgoing,.outgoing,.incoming,.incoming,.incoming,.outgoing,.outgoing,.outgoing,.incoming]
theorem status_count : statuses.length = 105 := by decide
theorem incoming_count : (statuses.filter (· == .incoming)).length = 38 := by decide
theorem outgoing_count : (statuses.filter (· == .outgoing)).length = 63 := by decide
theorem unknown_count : (statuses.filter (· == .unknown)).length = 4 := by decide
theorem partition_count : 38 + 63 + 4 = 105 := by decide
def unknownRows : List (Nat × Nat × List Nat) := [(2695,9,[2]),(3080,14,[1]),(3993,25,[2]),(3994,25,[0,1])]
theorem unknown_rows_exact : unknownRows = [(2695,9,[2]),(3080,14,[1]),(3993,25,[2]),(3994,25,[0,1])] := by rfl
#print axioms forward_backward
end AggregateTargetInventory.Aggregate
