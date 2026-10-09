import FilteredRepresentativeCrossing.Basic
import Mathlib.GroupTheory.QuotientGroup.Basic
import Mathlib.Tactic.Abel
import Mathlib.Tactic.Convert

namespace FilteredMapExtension
open FilteredRepresentativeCrossing GeneralizedLeibnizAudit

variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]

structure FilteredMap (F : Filtration A) (G : Filtration B) where
  hom : A →+ B
  preserves : ∀ s, F.group s ≤ (G.group s).comap hom

variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G) (s n : Nat)

/-- Representatives whose actual image has reached the required target filtration. -/
def cycles : AddSubgroup A := F.group s ⊓ (G.group (s+n)).comap f.hom

/-- All higher-source corrections which still lie in this cycle group. -/
def corrections : AddSubgroup A := F.group (s+1) ⊓ (G.group (s+n)).comap f.hom

theorem corrections_le : corrections F G f s n ≤ cycles F G f s n := by
  intro x hx
  exact ⟨F.decreasing (by omega) hx.1,hx.2⟩

def sourceRelations : AddSubgroup (cycles F G f s n) :=
  (corrections F G f s n).addSubgroupOf (cycles F G f s n)

abbrev SourcePage := (cycles F G f s n) ⧸ sourceRelations F G f s n

/-- Target ambiguity is the next filtration plus images of every permitted
higher-source correction; no selected representative list is involved. -/
def targetRelations : AddSubgroup B :=
  G.group (s+n+1) ⊔ (corrections F G f s n).map f.hom

theorem targetRelations_le : targetRelations F G f s n ≤ G.group (s+n) := by
  apply sup_le
  · exact G.decreasing (by omega)
  · rintro y ⟨x,hx,rfl⟩
    exact hx.2

def targetSubgroup : AddSubgroup (G.group (s+n)) :=
  (targetRelations F G f s n).addSubgroupOf (G.group (s+n))

abbrev TargetPage := (G.group (s+n)) ⧸ targetSubgroup F G f s n

def sourceClass : cycles F G f s n →+ SourcePage F G f s n :=
  QuotientAddGroup.mk' (sourceRelations F G f s n)

def targetClass : G.group (s+n) →+ TargetPage F G f s n :=
  QuotientAddGroup.mk' (targetSubgroup F G f s n)

def cycleMap : cycles F G f s n →+ G.group (s+n) where
  toFun x := ⟨f.hom x.val,x.property.2⟩
  map_zero' := Subtype.ext (map_zero f.hom)
  map_add' x y := Subtype.ext (map_add f.hom x.val y.val)

theorem relations_map_zero : sourceRelations F G f s n ≤
    ((targetClass F G f s n).comp (cycleMap F G f s n)).ker := by
  intro x hx
  apply (QuotientAddGroup.eq_zero_iff _).mpr
  change f.hom x.val ∈ targetRelations F G f s n
  exact AddSubgroup.mem_sup_right (AddSubgroup.mem_map.mpr ⟨x.val,hx,rfl⟩)

/-- The extension differential is induced by the given additive homomorphism. -/
def differential : SourcePage F G f s n →+ TargetPage F G f s n :=
  QuotientAddGroup.lift (sourceRelations F G f s n)
    ((targetClass F G f s n).comp (cycleMap F G f s n))
    (relations_map_zero F G f s n)

theorem differential_class (x : cycles F G f s n) :
    differential F G f s n (sourceClass F G f s n x) =
      targetClass F G f s n (cycleMap F G f s n x) := rfl

theorem sourceClass_eq (x y : cycles F G f s n) :
    sourceClass F G f s n x = sourceClass F G f s n y ↔
      x.val-y.val ∈ corrections F G f s n :=
  QuotientAddGroup.eq_iff_sub_mem

theorem targetClass_eq (x y : G.group (s+n)) :
    targetClass F G f s n x = targetClass F G f s n y ↔
      x.val-y.val ∈ targetRelations F G f s n :=
  QuotientAddGroup.eq_iff_sub_mem

theorem targetRelations_mem (y : B) : y ∈ targetRelations F G f s n ↔
    ∃ h ∈ corrections F G f s n, y-f.hom h ∈ G.group (s+n+1) := by
  constructor
  · intro hy
    obtain ⟨z,hz,v,⟨h,hh,rfl⟩,eq⟩ := AddSubgroup.mem_sup.mp hy
    refine ⟨h,hh,?_⟩
    rw [← eq,add_sub_cancel_right]
    exact hz
  · rintro ⟨h,hh,hy⟩
    exact AddSubgroup.mem_sup.mpr ⟨y-f.hom h,hy,f.hom h,
      AddSubgroup.mem_map.mpr ⟨h,hh,rfl⟩,sub_add_cancel _ _⟩

theorem differential_zero_iff (x : cycles F G f s n) :
    differential F G f s n (sourceClass F G f s n x) = 0 ↔
      ∃ h ∈ corrections F G f s n, f.hom (x.val-h) ∈ G.group (s+n+1) := by
  rw [differential_class]
  change ((cycleMap F G f s n x : G.group (s+n)) : TargetPage F G f s n) = 0 ↔ _
  rw [QuotientAddGroup.eq_zero_iff]
  change f.hom x.val ∈ targetRelations F G f s n ↔ _
  simpa only [map_sub] using targetRelations_mem F G f s n (f.hom x.val)

/-- Equality on the quotient page is equivalent to an actual extension between
the indicated source and target cosets. No identification premise is assumed. -/
theorem differential_eq_iff_extension (x : cycles F G f s n) (y : G.group (s+n)) :
    differential F G f s n (sourceClass F G f s n x) = targetClass F G f s n y ↔
      Extension f.hom (corrections F G f s n) (G.group (s+n+1)) x.val y.val := by
  rw [differential_class,targetClass_eq,targetRelations_mem]
  constructor
  · rintro ⟨h,hh,he⟩
    change f.hom x.val-y.val-f.hom h ∈ G.group (s+n+1) at he
    refine ⟨x.val-h,?_,?_⟩
    · simpa [SameLeading,sub_sub_cancel_left] using (corrections F G f s n).neg_mem hh
    · change f.hom (x.val-h)-y.val ∈ G.group (s+n+1)
      rw [map_sub]
      convert he using 1 <;> abel
  · rintro ⟨a,ha,hfa⟩
    change f.hom a-y.val ∈ G.group (s+n+1) at hfa
    refine ⟨x.val-a,?_,?_⟩
    · exact SameLeading.symm ha
    · change f.hom x.val-y.val-f.hom (x.val-a) ∈ G.group (s+n+1)
      rw [map_sub]
      convert hfa using 1 <;> abel

/-- The same equation uses the ordinary higher-source coset as well: a
representative whose image has the specified target leading class automatically
differs by a correction in H. This removes an extra cycle condition from users. -/
theorem differential_eq_iff_leading_extension (x : cycles F G f s n)
    (y : G.group (s+n)) :
    differential F G f s n (sourceClass F G f s n x) = targetClass F G f s n y ↔
      Extension f.hom (F.group (s+1)) (G.group (s+n+1)) x.val y.val := by
  rw [differential_eq_iff_extension]
  constructor
  · rintro ⟨a,ha,hfa⟩
    exact ⟨a,ha.1,hfa⟩
  · rintro ⟨a,ha,hfa⟩
    refine ⟨a,⟨ha,?_⟩,hfa⟩
    change f.hom (a-x.val) ∈ G.group (s+n)
    rw [map_sub]
    apply (G.group (s+n)).sub_mem _ x.property.2
    have low : f.hom a-y.val ∈ G.group (s+n) := G.decreasing (by omega) hfa
    simpa only [sub_add_cancel] using (G.group (s+n)).add_mem low y.property

theorem cycles_zero : cycles F G f s 0 = F.group s := by
  apply le_antisymm inf_le_left
  intro x hx
  exact ⟨hx, f.preserves s hx⟩

theorem corrections_zero : corrections F G f s 0 = F.group (s+1) := by
  apply le_antisymm inf_le_left
  intro x hx
  exact ⟨hx,G.decreasing (by omega) (f.preserves (s+1) hx)⟩

theorem targetRelations_zero : targetRelations F G f s 0 = G.group (s+1) := by
  apply le_antisymm
  · apply sup_le
    · exact le_rfl
    · rintro y ⟨x,hx,rfl⟩
      exact f.preserves (s+1) hx.1
  · exact le_sup_left

#print axioms differential
#print axioms sourceClass_eq
#print axioms differential_zero_iff
#print axioms differential_eq_iff_extension
#print axioms differential_eq_iff_leading_extension
#print axioms cycles_zero
#print axioms corrections_zero
#print axioms targetRelations_zero
end FilteredMapExtension
