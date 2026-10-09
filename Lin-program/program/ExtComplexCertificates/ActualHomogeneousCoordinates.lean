import ExtComplexCertificates.ActualModuleComplex
import ExtComplexCertificates.FiniteExactness
import MilnorCertificates.HomogeneousCoordinates

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates
open scoped BigOperators

/-- Internal degree t and homological degree s, inside the actual free module.
This is an additive/F2 component, not an ActualRing submodule. -/
def ModuleHomogeneous (s t : Nat) (x : ActualFreeModule) : Prop :=
  ∀ i : ActualIndex, ∀ m : RankMonomial 3,
    (actualRow i).s ≠ s ∨ weight m.val + (actualRow i).t ≠ t → x i m = 0

abbrev ActualComponent (s t : Nat) := {x : ActualFreeModule // ModuleHomogeneous s t x}
abbrev ComponentIndex (s t : Nat) := {p : ActualIndex × RankMonomial 3 //
  (actualRow p.1).s = s ∧ weight p.2.val + (actualRow p.1).t = t}
abbrev ComponentCoordinates (s t : Nat) := ComponentIndex s t → ZMod 2

def extractComponent (s t : Nat) (x : ActualFreeModule) : ComponentCoordinates s t :=
  fun p => x p.val.1 p.val.2

noncomputable def reconstructComponent (s t : Nat) (v : ComponentCoordinates s t) : ActualFreeModule :=
  ∑ i : ActualIndex, Finsupp.single i (fun m =>
    if h : (actualRow i).s = s ∧ weight m.val + (actualRow i).t = t then v ⟨(i,m),h⟩ else 0)

theorem reconstructComponent_apply (s t : Nat) (v : ComponentCoordinates s t)
    (i : ActualIndex) (m : RankMonomial 3) :
    reconstructComponent s t v i m =
      if h : (actualRow i).s = s ∧ weight m.val + (actualRow i).t = t then v ⟨(i,m),h⟩ else 0 := by
  classical
  unfold reconstructComponent
  rw [Finset.sum_apply']
  simp only [Finsupp.single_apply]
  simp

theorem reconstructComponent_homogeneous (s t : Nat) (v : ComponentCoordinates s t) :
    ModuleHomogeneous s t (reconstructComponent s t v) := by
  intro i m h
  rw [reconstructComponent_apply]
  have hn : ¬ ((actualRow i).s = s ∧ weight m.val + (actualRow i).t = t) := by tauto
  simp [hn]

theorem extract_reconstruct_component (s t : Nat) (v : ComponentCoordinates s t) :
    extractComponent s t (reconstructComponent s t v) = v := by
  funext p
  unfold extractComponent
  rw [reconstructComponent_apply]
  simp [p.property]

theorem reconstruct_extract_component (s t : Nat) (x : ActualFreeModule)
    (hx : ModuleHomogeneous s t x) : reconstructComponent s t (extractComponent s t x) = x := by
  ext i
  funext m
  rw [reconstructComponent_apply]
  by_cases h : (actualRow i).s = s ∧ weight m.val + (actualRow i).t = t
  · simp [h,extractComponent]
  · have hn : (actualRow i).s ≠ s ∨ weight m.val + (actualRow i).t ≠ t := by tauto
    simp [h,hx i m hn]

noncomputable def componentEquiv (s t : Nat) : ActualComponent s t ≃ ComponentCoordinates s t where
  toFun x := extractComponent s t x.val
  invFun v := ⟨reconstructComponent s t v,reconstructComponent_homogeneous s t v⟩
  left_inv x := Subtype.ext (reconstruct_extract_component s t x.val x.property)
  right_inv := extract_reconstruct_component s t

theorem actualRow_injective : Function.Injective actualRow := by
  have hid : Function.Injective (fun i : ActualIndex => (actualRow i).id) := by decide
  intro i j h
  exact hid (congrArg RawGenerator.id h)

theorem freeBasis_mem (s t : Nat) (p : FreeBasisTerm) :
    p ∈ freeBasis actualRows s t ↔ p.1 ∈ actualRows ∧ p.1.s = s ∧ p.1.t ≤ t ∧
      p.2 ∈ basis 3 8 ∧ weight p.2 + p.1.t = t := by
  unfold freeBasis
  simp only [List.mem_flatMap]
  constructor
  · rintro ⟨r,hr,hp⟩
    split at hp
    next h =>
      obtain ⟨m,hm,he⟩ := List.mem_map.mp hp
      subst p
      have hm' := List.mem_filter.mp hm
      exact ⟨hr,h.1,h.2,hm'.1,of_decide_eq_true hm'.2⟩
    next h => simp at hp
  · rintro ⟨hr,hs,ht,hm,hw⟩
    refine ⟨p.1,hr,?_⟩
    simp only [hs,ht,and_self,ite_true]
    exact List.mem_map.mpr ⟨p.2,List.mem_filter.mpr ⟨hm,by simpa using hw⟩,Prod.eta p⟩

def componentPair (s t : Nat) (p : ComponentIndex s t) : FreeBasisTerm :=
  (actualRow p.val.1,p.val.2.val)

theorem componentPair_mem (s t : Nat) (ht : t ≤ 8) (p : ComponentIndex s t) :
    componentPair s t p ∈ freeBasis actualRows s t := by
  unfold componentPair
  apply (freeBasis_mem s t _).mpr
  have hp := p.property
  exact ⟨List.getElem_mem p.val.1.isLt,hp.1,by dsimp; omega,
    basis_complete 3 8 _ p.val.2.property (by dsimp; omega),hp.2⟩

theorem componentPair_injective (s t : Nat) : Function.Injective (componentPair s t) := by
  intro p q h
  apply Subtype.ext
  apply Prod.ext
  · exact actualRow_injective (congrArg (fun x => x.1) h)
  · apply Subtype.ext
    exact congrArg (fun x => x.2) h

theorem componentPair_surjective (s t : Nat) (ht : t ≤ 8) (p : FreeBasisTerm)
    (hp : p ∈ freeBasis actualRows s t) : ∃ q : ComponentIndex s t, componentPair s t q = p := by
  have h := (freeBasis_mem s t p).mp hp
  obtain ⟨i,hi⟩ := List.mem_iff_get.mp h.1
  have hm := exponentVectors_length 3 8 p.2 (List.mem_filter.mp h.2.2.2.1).1
  let q : ComponentIndex s t := ⟨(i,⟨p.2,hm⟩),by
    change (actualRows[i.val]).s = s ∧ weight p.2 + (actualRows[i.val]).t = t
    have hi' : actualRows[i.val] = p.1 := hi
    rw [hi']
    exact ⟨h.2.1,h.2.2.2.2⟩⟩
  exact ⟨q,by apply Prod.ext; exact hi; rfl⟩

def basisKey (p : FreeBasisTerm) : Nat × Monomial := (p.1.id,p.2)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem actual_freeBasis_nodup_small : ∀ s t : Fin 9, ((freeBasis actualRows s.val t.val).map basisKey).Nodup := by decide

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem actualRows_s_bound : ∀ i : ActualIndex, (actualRow i).s ≤ 8 := by decide

theorem actual_freeBasis_nodup (s t : Nat) (ht : t ≤ 8) : (freeBasis actualRows s t).Nodup := by
  by_cases hs : s ≤ 8
  · exact List.Nodup.of_map basisKey (actual_freeBasis_nodup_small ⟨s,by omega⟩ ⟨t,by omega⟩)
  · have hempty : freeBasis actualRows s t = [] := by
      apply List.eq_nil_iff_forall_not_mem.mpr
      intro p hp
      obtain ⟨q,hq⟩ := componentPair_surjective s t ht p hp
      have hbound := actualRows_s_bound q.val.1
      have hqs := q.property.1
      omega
    rw [hempty]
    exact List.nodup_nil

noncomputable def componentToListIndex (s t : Nat) (ht : t ≤ 8) (p : ComponentIndex s t) :
    Fin (freeBasis actualRows s t).length :=
  (List.mem_iff_get.mp (componentPair_mem s t ht p)).choose

theorem componentToListIndex_spec (s t : Nat) (ht : t ≤ 8) (p : ComponentIndex s t) :
    (freeBasis actualRows s t).get (componentToListIndex s t ht p) = componentPair s t p :=
  (List.mem_iff_get.mp (componentPair_mem s t ht p)).choose_spec

noncomputable def componentListEquiv (s t : Nat) (ht : t ≤ 8) :
    ComponentIndex s t ≃ Fin (freeBasis actualRows s t).length :=
  Equiv.ofBijective (componentToListIndex s t ht) (by
    constructor
    · intro p q h
      apply componentPair_injective s t
      rw [← componentToListIndex_spec s t ht p,← componentToListIndex_spec s t ht q,h]
    · intro j
      obtain ⟨p,hp⟩ := componentPair_surjective s t ht ((freeBasis actualRows s t).get j)
        (List.get_mem _ _)
      refine ⟨p,?_⟩
      apply (List.nodup_iff_injective_get.mp (actual_freeBasis_nodup s t ht))
      rw [componentToListIndex_spec,hp])

noncomputable def componentListCoordinates (s t : Nat) (ht : t ≤ 8) :
    ActualComponent s t ≃ (Fin (freeBasis actualRows s t).length → ZMod 2) :=
  (componentEquiv s t).trans (Equiv.piCongrLeft' (fun _ => ZMod 2) (componentListEquiv s t ht))

theorem extractComponent_add (s t : Nat) (x y : ActualFreeModule) :
    extractComponent s t (x+y) = extractComponent s t x + extractComponent s t y := by
  funext p
  simp [extractComponent,Finsupp.add_apply,rankDual_add_apply]

theorem reconstructComponent_add (s t : Nat) (v w : ComponentCoordinates s t) :
    reconstructComponent s t (v+w) = reconstructComponent s t v + reconstructComponent s t w := by
  ext i
  funext m
  rw [Finsupp.add_apply,rankDual_add_apply,reconstructComponent_apply,
    reconstructComponent_apply,reconstructComponent_apply]
  by_cases h : (actualRow i).s = s ∧ weight m.val + (actualRow i).t = t <;> simp [h]

theorem extractComponent_zero (s t : Nat) : extractComponent s t 0 = 0 := by
  funext p
  simp [extractComponent,Finsupp.zero_apply,rankDual_zero_apply]

theorem reconstructComponent_zero (s t : Nat) : reconstructComponent s t 0 = 0 := by
  ext i
  funext m
  rw [reconstructComponent_apply]
  simp [Finsupp.zero_apply,rankDual_zero_apply]

noncomputable def extractListComponent (s t : Nat) (ht : t ≤ 8) (x : ActualFreeModule) :
    Fin (freeBasis actualRows s t).length → ZMod 2 :=
  fun j => extractComponent s t x ((componentListEquiv s t ht).symm j)

noncomputable def reconstructListComponent (s t : Nat) (ht : t ≤ 8)
    (v : Fin (freeBasis actualRows s t).length → ZMod 2) : ActualFreeModule :=
  reconstructComponent s t (fun p => v (componentListEquiv s t ht p))

theorem extract_reconstruct_list (s t : Nat) (ht : t ≤ 8)
    (v : Fin (freeBasis actualRows s t).length → ZMod 2) :
    extractListComponent s t ht (reconstructListComponent s t ht v) = v := by
  funext j
  simp [extractListComponent,reconstructListComponent,extract_reconstruct_component]

theorem reconstruct_extract_list (s t : Nat) (ht : t ≤ 8) (x : ActualFreeModule)
    (hx : ModuleHomogeneous s t x) :
    reconstructListComponent s t ht (extractListComponent s t ht x) = x := by
  unfold reconstructListComponent extractListComponent
  simp only [Equiv.symm_apply_apply]
  exact reconstruct_extract_component s t x hx

theorem extractListComponent_add (s t : Nat) (ht : t ≤ 8) (x y : ActualFreeModule) :
    extractListComponent s t ht (x+y) = extractListComponent s t ht x + extractListComponent s t ht y := by
  funext j
  exact congrFun (extractComponent_add s t x y) _

theorem reconstructListComponent_add (s t : Nat) (ht : t ≤ 8)
    (v w : Fin (freeBasis actualRows s t).length → ZMod 2) :
    reconstructListComponent s t ht (v+w) =
      reconstructListComponent s t ht v + reconstructListComponent s t ht w :=
  reconstructComponent_add s t _ _

#print axioms componentListCoordinates
#print axioms reconstruct_extract_list
#print axioms reconstructListComponent_add
end ExtComplexCertificates.ActualResolution
