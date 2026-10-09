import Stem125E5Search.Known
namespace Stem125E5Search.Product
open LinearCertificates PageTransitionCertificates Stem125HomologyCertificates
set_option maxRecDepth 10000
set_option maxHeartbeats 12000000
structure Choice where
  nine : Fin 2
  fourteen : Fin 3
  fifteen : Fin 4
  twentyfive : Fin 20
  deriving DecidableEq
def dimension (c : Choice) : Nat := 2 + (Data.nine c.nine).h + (Data.fourteen c.fourteen).h + (Data.fifteen c.fifteen).h + (Data.twentyfive c.twentyfive).h
def wires (c : Choice) (i : Fin 17) : WireComparison := match i with
  | ⟨0,_⟩ => Known.wires ⟨0,by decide⟩
  | ⟨1,_⟩ => Data.nine c.nine
  | ⟨2,_⟩ => Known.wires ⟨1,by decide⟩
  | ⟨3,_⟩ => Known.wires ⟨2,by decide⟩
  | ⟨4,_⟩ => Data.fourteen c.fourteen
  | ⟨5,_⟩ => Data.fifteen c.fifteen
  | ⟨6,_⟩ => Known.wires ⟨3,by decide⟩
  | ⟨7,_⟩ => Known.wires ⟨4,by decide⟩
  | ⟨8,_⟩ => Known.wires ⟨5,by decide⟩
  | ⟨9,_⟩ => Known.wires ⟨6,by decide⟩
  | ⟨10,_⟩ => Data.twentyfive c.twentyfive
  | ⟨11,_⟩ => Known.wires ⟨7,by decide⟩
  | ⟨12,_⟩ => Known.wires ⟨8,by decide⟩
  | ⟨13,_⟩ => Known.wires ⟨9,by decide⟩
  | ⟨14,_⟩ => Known.wires ⟨10,by decide⟩
  | ⟨15,_⟩ => Known.wires ⟨11,by decide⟩
  | ⟨16,_⟩ => Known.wires ⟨12,by decide⟩
  | ⟨n+17,h⟩ => False.elim (by omega)
theorem all_complete (c : Choice) (i : Fin 17) : (wires c i).Valid := by
  fin_cases i
  · exact Known.all_complete ⟨0,by decide⟩
  · exact Data.nine_complete c.nine
  · exact Known.all_complete ⟨1,by decide⟩
  · exact Known.all_complete ⟨2,by decide⟩
  · exact Data.fourteen_complete c.fourteen
  · exact Data.fifteen_complete c.fifteen
  · exact Known.all_complete ⟨3,by decide⟩
  · exact Known.all_complete ⟨4,by decide⟩
  · exact Known.all_complete ⟨5,by decide⟩
  · exact Known.all_complete ⟨6,by decide⟩
  · exact Data.twentyfive_complete c.twentyfive
  · exact Known.all_complete ⟨7,by decide⟩
  · exact Known.all_complete ⟨8,by decide⟩
  · exact Known.all_complete ⟨9,by decide⟩
  · exact Known.all_complete ⟨10,by decide⟩
  · exact Known.all_complete ⟨11,by decide⟩
  · exact Known.all_complete ⟨12,by decide⟩
theorem coordinate_count (c : Choice) : Fintype.card (CoordinateIndex (fun i => (wires c i).h)) = dimension c := by
  obtain ⟨a,b,c,d⟩ := c
  exact (show ∀ a : Fin 2, ∀ b : Fin 3, ∀ c : Fin 4, ∀ d : Fin 20, Fintype.card (CoordinateIndex (fun i => (wires ⟨a,b,c,d⟩ i).h)) = dimension ⟨a,b,c,d⟩ from by decide) a b c d
theorem input_count (c : Choice) : Fintype.card (CoordinateIndex (fun i => (wires c i).m)) = 24 := by
  obtain ⟨a,b,c,d⟩ := c
  exact (show ∀ a : Fin 2, ∀ b : Fin 3, ∀ c : Fin 4, ∀ d : Fin 20, Fintype.card (CoordinateIndex (fun i => (wires ⟨a,b,c,d⟩ i).m)) = 24 from by decide) a b c d
theorem dimension_bounds (c : Choice) : 2 ≤ dimension c ∧ dimension c ≤ 7 := by
  obtain ⟨a,b,c,d⟩ := c
  exact (show ∀ a : Fin 2, ∀ b : Fin 3, ∀ c : Fin 4, ∀ d : Fin 20, 2 ≤ dimension ⟨a,b,c,d⟩ ∧ dimension ⟨a,b,c,d⟩ ≤ 7 from by decide) a b c d
abbrev PositiveHomology (c : Choice) := TotalHomology (wires c)
noncomputable def equivalence (c : Choice) : PositiveHomology c ≃ Vec (dimension c) := totalFlatEquiv (wires c) (all_complete c) (coordinate_count c)
theorem cardinality (c : Choice) : Nat.card (PositiveHomology c) = 2 ^ dimension c := total_card (wires c) (all_complete c) (coordinate_count c)
theorem preserves_addition (c : Choice) (x y : PositiveHomology c) : equivalence c (totalAdd (wires c) x y) = add (equivalence c x) (equivalence c y) := totalFlatEquiv_add (wires c) (all_complete c) (coordinate_count c) x y
def positiveFiltrations : List Nat := [6, 9, 11, 13, 14, 15, 16, 18, 21, 22, 25, 31, 39, 43, 46, 49, 52]
def zeroFiltrations : List Nat := [5, 7, 8, 10, 12, 17, 19, 20, 23, 24, 26, 27, 28, 29, 30, 33, 34, 36, 37, 38, 40, 41, 42, 44, 45, 55, 56, 57]
def positiveIndex (i : Fin 17) : Fin 31 := match i with
  | ⟨0,_⟩ => ⟨0,by decide⟩
  | ⟨1,_⟩ => ⟨3,by decide⟩
  | ⟨2,_⟩ => ⟨5,by decide⟩
  | ⟨3,_⟩ => ⟨7,by decide⟩
  | ⟨4,_⟩ => ⟨8,by decide⟩
  | ⟨5,_⟩ => ⟨9,by decide⟩
  | ⟨6,_⟩ => ⟨10,by decide⟩
  | ⟨7,_⟩ => ⟨11,by decide⟩
  | ⟨8,_⟩ => ⟨14,by decide⟩
  | ⟨9,_⟩ => ⟨15,by decide⟩
  | ⟨10,_⟩ => ⟨17,by decide⟩
  | ⟨11,_⟩ => ⟨19,by decide⟩
  | ⟨12,_⟩ => ⟨23,by decide⟩
  | ⟨13,_⟩ => ⟨25,by decide⟩
  | ⟨14,_⟩ => ⟨27,by decide⟩
  | ⟨15,_⟩ => ⟨28,by decide⟩
  | ⟨16,_⟩ => ⟨29,by decide⟩
  | ⟨n+17,h⟩ => False.elim (by omega)
theorem previous_dimensions (b : Bool) (c : Choice) (i : Fin 17) : (wires c i).m = (Stem125E4Search.Product.wires b (positiveIndex i)).h := by
  cases b <;> fin_cases i <;> first | rfl | (obtain ⟨a,b,c,d⟩ := c; fin_cases a <;> fin_cases b <;> fin_cases c <;> fin_cases d <;> rfl)
def previousHomologyEquiv (b : Bool) (c : Choice) : ((i : Fin 17) → LocalHomology (Stem125E4Search.Product.wires b (positiveIndex i))) ≃ ((i : Fin 17) → Vec (wires c i).m) :=
  Equiv.piCongrRight (fun i => (localEquiv _ (Stem125E4Search.Product.all_complete b _)).trans
    (Equiv.cast (congrArg Vec (previous_dimensions b c i).symm)))
#print axioms cardinality
#print axioms preserves_addition
def newlyZeroIndex (i : Fin 14) : Fin 31 := match i with
  | ⟨0,_⟩ => ⟨1,by decide⟩
  | ⟨1,_⟩ => ⟨2,by decide⟩
  | ⟨2,_⟩ => ⟨4,by decide⟩
  | ⟨3,_⟩ => ⟨6,by decide⟩
  | ⟨4,_⟩ => ⟨12,by decide⟩
  | ⟨5,_⟩ => ⟨13,by decide⟩
  | ⟨6,_⟩ => ⟨16,by decide⟩
  | ⟨7,_⟩ => ⟨18,by decide⟩
  | ⟨8,_⟩ => ⟨20,by decide⟩
  | ⟨9,_⟩ => ⟨21,by decide⟩
  | ⟨10,_⟩ => ⟨22,by decide⟩
  | ⟨11,_⟩ => ⟨24,by decide⟩
  | ⟨12,_⟩ => ⟨26,by decide⟩
  | ⟨13,_⟩ => ⟨30,by decide⟩
  | ⟨n+14,h⟩ => False.elim (by omega)
theorem newly_zero_previous_dimension (b : Bool) (i : Fin 14) : (Stem125E4Search.Product.wires b (newlyZeroIndex i)).h = 0 := by cases b <;> fin_cases i <;> rfl
theorem previous_partition : Function.Bijective (Sum.elim positiveIndex newlyZeroIndex : Fin 17 ⊕ Fin 14 → Fin 31) := by decide
def originalPositive (i : Fin 17) : Fin 45 := match i with
  | ⟨0,_⟩ => ⟨1,by decide⟩
  | ⟨1,_⟩ => ⟨4,by decide⟩
  | ⟨2,_⟩ => ⟨6,by decide⟩
  | ⟨3,_⟩ => ⟨8,by decide⟩
  | ⟨4,_⟩ => ⟨9,by decide⟩
  | ⟨5,_⟩ => ⟨10,by decide⟩
  | ⟨6,_⟩ => ⟨11,by decide⟩
  | ⟨7,_⟩ => ⟨13,by decide⟩
  | ⟨8,_⟩ => ⟨16,by decide⟩
  | ⟨9,_⟩ => ⟨17,by decide⟩
  | ⟨10,_⟩ => ⟨20,by decide⟩
  | ⟨11,_⟩ => ⟨26,by decide⟩
  | ⟨12,_⟩ => ⟨32,by decide⟩
  | ⟨13,_⟩ => ⟨36,by decide⟩
  | ⟨14,_⟩ => ⟨39,by decide⟩
  | ⟨15,_⟩ => ⟨40,by decide⟩
  | ⟨16,_⟩ => ⟨41,by decide⟩
  | ⟨n+17,h⟩ => False.elim (by omega)
def originalZero (i : Fin 28) : Fin 45 := match i with
  | ⟨0,_⟩ => ⟨0,by decide⟩
  | ⟨1,_⟩ => ⟨2,by decide⟩
  | ⟨2,_⟩ => ⟨3,by decide⟩
  | ⟨3,_⟩ => ⟨5,by decide⟩
  | ⟨4,_⟩ => ⟨7,by decide⟩
  | ⟨5,_⟩ => ⟨12,by decide⟩
  | ⟨6,_⟩ => ⟨14,by decide⟩
  | ⟨7,_⟩ => ⟨15,by decide⟩
  | ⟨8,_⟩ => ⟨18,by decide⟩
  | ⟨9,_⟩ => ⟨19,by decide⟩
  | ⟨10,_⟩ => ⟨21,by decide⟩
  | ⟨11,_⟩ => ⟨22,by decide⟩
  | ⟨12,_⟩ => ⟨23,by decide⟩
  | ⟨13,_⟩ => ⟨24,by decide⟩
  | ⟨14,_⟩ => ⟨25,by decide⟩
  | ⟨15,_⟩ => ⟨27,by decide⟩
  | ⟨16,_⟩ => ⟨28,by decide⟩
  | ⟨17,_⟩ => ⟨29,by decide⟩
  | ⟨18,_⟩ => ⟨30,by decide⟩
  | ⟨19,_⟩ => ⟨31,by decide⟩
  | ⟨20,_⟩ => ⟨33,by decide⟩
  | ⟨21,_⟩ => ⟨34,by decide⟩
  | ⟨22,_⟩ => ⟨35,by decide⟩
  | ⟨23,_⟩ => ⟨37,by decide⟩
  | ⟨24,_⟩ => ⟨38,by decide⟩
  | ⟨25,_⟩ => ⟨42,by decide⟩
  | ⟨26,_⟩ => ⟨43,by decide⟩
  | ⟨27,_⟩ => ⟨44,by decide⟩
  | ⟨n+28,h⟩ => False.elim (by omega)
def partitionMap : Fin 17 ⊕ Fin 28 → Fin 45 := Sum.elim originalPositive originalZero
theorem partition_bijective : Function.Bijective partitionMap := by decide
noncomputable def partitionEquiv : (Fin 17 ⊕ Fin 28) ≃ Fin 45 := Equiv.ofBijective partitionMap partition_bijective
end Stem125E5Search.Product
