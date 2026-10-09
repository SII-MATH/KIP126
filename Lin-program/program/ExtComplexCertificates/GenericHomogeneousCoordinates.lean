import ExtComplexCertificates.GenericFreeComplex
import MilnorCertificates.HomogeneousCoordinates

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates
open scoped BigOperators

/-- Complete finite set of generator/monomial pairs of bidegree (s,t).
Generator positions distinguish even repeated degree declarations. -/
def componentBasisList (d : Data rank n) (s t : Nat) : List (Fin n × Monomial) :=
  (List.finRange n).flatMap fun i =>
    if d.homological i = s then
      ((basis rank t).filter fun m => weight m + d.internal i = t).map (i,·)
    else []

def componentBasis (d : Data rank n) (s t : Nat) : Finset (Fin n × Monomial) :=
  (componentBasisList d s t).toFinset

theorem componentBasis_mem (d : Data rank n) (s t : Nat) (i : Fin n) (m : Monomial) :
    (i,m) ∈ componentBasis d s t ↔
      d.homological i = s ∧ m.length = rank ∧ weight m + d.internal i = t := by
  simp only [componentBasis,componentBasisList,List.mem_toFinset,List.mem_flatMap]
  constructor
  · rintro ⟨j,hj,hp⟩
    split at hp
    next hs =>
      obtain ⟨a,ha,he⟩ := List.mem_map.mp hp
      cases he
      have hm := List.mem_filter.mp ha
      exact ⟨hs,exponentVectors_length rank t m (List.mem_filter.mp hm.1).1,
        of_decide_eq_true hm.2⟩
    next hs => simp at hp
  · rintro ⟨hs,hm,hw⟩
    refine ⟨i,List.mem_finRange i,?_⟩
    rw [if_pos hs]
    exact List.mem_map.mpr ⟨m,List.mem_filter.mpr
      ⟨basis_complete rank t m hm (by omega),by simpa using hw⟩,rfl⟩

abbrev ComponentIndex (d : Data rank n) (s t : Nat) :=
  {p : Fin n × Monomial // p ∈ componentBasis d s t}
abbrev ComponentCoordinates (d : Data rank n) (s t : Nat) := ComponentIndex d s t → ZMod 2

instance componentIndexFintype (d : Data rank n) (s t : Nat) :
    Fintype (ComponentIndex d s t) := inferInstanceAs (Fintype {p // p ∈ componentBasis d s t})

def Homogeneous (d : Data rank n) (s t : Nat) (x : FreeModule rank n) : Prop :=
  ∀ i (m : RankMonomial rank),
    d.homological i ≠ s ∨ weight m.val + d.internal i ≠ t → (x i).val m = 0

def extract (d : Data rank n) (s t : Nat) (x : FreeModule rank n) :
    ComponentCoordinates d s t := fun p =>
  (x p.val.1).val ⟨p.val.2,((componentBasis_mem d s t _ _).mp p.property).2.1⟩

def reconstructCoefficient (d : Data rank n) (s t : Nat)
    (v : ComponentCoordinates d s t) (i : Fin n) : RankDual rank := fun m =>
  if h : d.homological i = s ∧ weight m.val + d.internal i = t then
    v ⟨(i,m.val),(componentBasis_mem d s t i m.val).mpr ⟨h.1,m.property,h.2⟩⟩
  else 0

theorem reconstructCoefficient_bounded (d : Data rank n) (s t : Nat)
    (v : ComponentCoordinates d s t) (i : Fin n) :
    DegreeBounded rank t (reconstructCoefficient d s t v i) := by
  intro m hm
  have hn : ¬ (d.homological i = s ∧ weight m.val + d.internal i = t) := by omega
  simp [reconstructCoefficient,hn]

noncomputable def reconstruct (d : Data rank n) (s t : Nat)
    (v : ComponentCoordinates d s t) : FreeModule rank n :=
  ∑ i, Finsupp.single i
    ⟨reconstructCoefficient d s t v i,⟨t,reconstructCoefficient_bounded d s t v i⟩⟩

theorem reconstruct_apply (d : Data rank n) (s t : Nat)
    (v : ComponentCoordinates d s t) (i : Fin n) :
    (reconstruct d s t v i).val = reconstructCoefficient d s t v i := by
  classical
  simp [reconstruct,Finset.sum_apply',Finsupp.single_apply]

theorem reconstruct_homogeneous (d : Data rank n) (s t : Nat)
    (v : ComponentCoordinates d s t) : Homogeneous d s t (reconstruct d s t v) := by
  intro i m h
  rw [reconstruct_apply]
  have hn : ¬ (d.homological i = s ∧ weight m.val + d.internal i = t) := by tauto
  simp [reconstructCoefficient,hn]

theorem extract_reconstruct (d : Data rank n) (s t : Nat)
    (v : ComponentCoordinates d s t) : extract d s t (reconstruct d s t v) = v := by
  funext p
  have hp := (componentBasis_mem d s t p.val.1 p.val.2).mp p.property
  unfold extract
  rw [reconstruct_apply]
  simp [reconstructCoefficient,hp.1,hp.2.2]

theorem reconstruct_extract (d : Data rank n) (s t : Nat)
    (x : FreeModule rank n) (hx : Homogeneous d s t x) :
    reconstruct d s t (extract d s t x) = x := by
  apply Finsupp.ext
  intro i
  apply Subtype.ext
  funext m
  rw [reconstruct_apply]
  by_cases h : d.homological i = s ∧ weight m.val + d.internal i = t
  · simp [reconstructCoefficient,h,extract]
  · have hn : d.homological i ≠ s ∨ weight m.val + d.internal i ≠ t := by tauto
    simp [reconstructCoefficient,h,hx i m hn]

noncomputable def componentEquiv (d : Data rank n) (s t : Nat) :
    {x : FreeModule rank n // Homogeneous d s t x} ≃ ComponentCoordinates d s t where
  toFun x := extract d s t x.val
  invFun v := ⟨reconstruct d s t v,reconstruct_homogeneous d s t v⟩
  left_inv x := Subtype.ext (reconstruct_extract d s t x.val x.property)
  right_inv := extract_reconstruct d s t

theorem extract_add (d : Data rank n) (s t : Nat) (x y : FreeModule rank n) :
    extract d s t (x+y) = extract d s t x + extract d s t y := by
  funext p
  rfl

theorem extract_zero (d : Data rank n) (s t : Nat) : extract d s t 0 = 0 := by
  funext p
  rfl

/-- A finite coordinate numbering exists for every degree, without an imported
completeness assertion or a rank-three cutoff. -/
noncomputable def numberedComponentEquiv (d : Data rank n) (s t : Nat) :
    {x : FreeModule rank n // Homogeneous d s t x} ≃
      (Fin (Fintype.card (ComponentIndex d s t)) → ZMod 2) :=
  (componentEquiv d s t).trans (Equiv.piCongrLeft' (fun _ => ZMod 2) (Fintype.equivFin _))

theorem exponentVectors_nodup (rank bound : Nat) : (exponentVectors rank bound).Nodup := by
  induction rank with
  | zero => simp [exponentVectors]
  | succ rank ih =>
    apply List.nodup_flatMap.mpr
    constructor
    · intro e he
      exact ih.map (by intro a b h; exact List.cons.inj h |>.2)
    · apply (List.nodup_range (n := bound+1)).imp
      intro a b hab x ha hb
      obtain ⟨u,hu,rfl⟩ := List.mem_map.mp ha
      obtain ⟨v,hv,he⟩ := List.mem_map.mp hb
      exact hab (List.cons.inj he).1.symm

theorem componentBasisList_nodup (d : Data rank n) (s t : Nat) :
    (componentBasisList d s t).Nodup := by
  unfold componentBasisList
  apply List.nodup_flatMap.mpr
  constructor
  · intro i hi
    split
    · exact (((exponentVectors_nodup rank t).filter _).filter _).map
        (by intro a b h; exact congrArg Prod.snd h)
    · exact List.nodup_nil
  · apply (List.nodup_finRange n).imp
    intro i j hij x hi hj
    dsimp only at hi hj
    split at hi
    next hs =>
      split at hj
      next ht =>
        obtain ⟨a,ha,he⟩ := List.mem_map.mp hi
        obtain ⟨b,hb,hf⟩ := List.mem_map.mp hj
        exact hij (congrArg Prod.fst (he.trans hf.symm))
      next ht => simp at hj
    next hs => simp at hi

noncomputable def componentToListIndex (d : Data rank n) (s t : Nat)
    (p : ComponentIndex d s t) : Fin (componentBasisList d s t).length :=
  (List.mem_iff_get.mp (List.mem_toFinset.mp p.property)).choose

theorem componentToListIndex_spec (d : Data rank n) (s t : Nat)
    (p : ComponentIndex d s t) :
    (componentBasisList d s t).get (componentToListIndex d s t p) = p.val :=
  (List.mem_iff_get.mp (List.mem_toFinset.mp p.property)).choose_spec

noncomputable def componentListEquiv (d : Data rank n) (s t : Nat) :
    ComponentIndex d s t ≃ Fin (componentBasisList d s t).length :=
  Equiv.ofBijective (componentToListIndex d s t) (by
    constructor
    · intro p q h
      apply Subtype.ext
      rw [← componentToListIndex_spec d s t p,← componentToListIndex_spec d s t q,h]
    · intro j
      let p : ComponentIndex d s t :=
        ⟨(componentBasisList d s t).get j,List.mem_toFinset.mpr (List.get_mem _ _)⟩
      refine ⟨p,?_⟩
      apply List.nodup_iff_injective_get.mp (componentBasisList_nodup d s t)
      exact componentToListIndex_spec d s t p)

noncomputable def orderedComponentEquiv (d : Data rank n) (s t : Nat) :
    {x : FreeModule rank n // Homogeneous d s t x} ≃
      (Fin (componentBasisList d s t).length → ZMod 2) :=
  (componentEquiv d s t).trans
    (Equiv.piCongrLeft' (fun _ => ZMod 2) (componentListEquiv d s t))

#print axioms componentBasis_mem
#print axioms componentEquiv
#print axioms numberedComponentEquiv
#print axioms orderedComponentEquiv
end ExtComplexCertificates.GenericFreeComplex
