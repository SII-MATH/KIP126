import ExtComplexCertificates.ActualHomogeneousExactness

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates LinearCertificates ResolutionCertificates
open scoped BigOperators

def rootIndex : ActualIndex := ⟨0,by decide⟩
def unitRankMonomial : RankMonomial 3 := ⟨unitMonomial 3,by simp [unitMonomial]⟩

def actualAugmentation (x : ActualFreeModule) : ZMod 2 := x rootIndex unitRankMonomial

theorem actualAugmentation_add (x y : ActualFreeModule) :
    actualAugmentation (x+y) = actualAugmentation x + actualAugmentation y := by
  simp [actualAugmentation,Finsupp.add_apply,rankDual_add_apply]

theorem actualAugmentation_zero : actualAugmentation 0 = 0 := rfl

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem degree_zero_coordinate : ∀ p : ComponentIndex 0 0,
    p.val.1 = rootIndex ∧ p.val.2.val = unitMonomial 3 := by
  intro p
  have hs : ∀ i : ActualIndex, (actualRow i).s = 0 → i = rootIndex := by decide
  have hi := hs p.val.1 p.property.1
  have hw : weight p.val.2.val = 0 := by
    have hp := p.property.2
    rw [hi] at hp
    exact hp
  have hex := basis_complete 3 0 p.val.2.val p.val.2.property (by omega)
  have hb : basis 3 0 = [unitMonomial 3] := by decide
  rw [hb] at hex
  exact ⟨hi,List.mem_singleton.mp hex⟩

theorem augmentation_component_zero (t : Nat) (x : ActualFreeModule)
    (hx : ModuleHomogeneous 0 t x) (ht : t ≠ 0) : actualAugmentation x = 0 := by
  apply hx rootIndex unitRankMonomial
  right
  change 0 ≠ t
  exact Ne.symm ht

theorem augmentation_scalar_kernel (t : Nat) (ht : t ≤ 8) (x : ActualFreeModule)
    (hx : ModuleHomogeneous 0 t x) (ha : actualAugmentation x = 0) :
    matrixScalarAction (augmentedOutgoing actualRows 0 t) (extractListComponent 0 t ht x) = 0 := by
  funext i
  by_cases ht0 : t = 0
  · subst t
    change (∑ j, boolScalar (augmentedOutgoing actualRows 0 0 i j) *
      extractListComponent 0 0 ht x j) = 0
    apply Finset.sum_eq_zero
    intro j hj
    have hp := degree_zero_coordinate ((componentListEquiv 0 0 ht).symm j)
    have hv : extractListComponent 0 0 ht x j = actualAugmentation x := by
      unfold extractListComponent extractComponent actualAugmentation
      rw [hp.1]
      have hm : ((componentListEquiv 0 0 ht).symm j).val.2 = unitRankMonomial := Subtype.ext hp.2
      rw [hm]
    rw [hv,ha,mul_zero]
  · have hi := i.isLt
    simp [ht0] at hi

/-- Exactness at the augmented homological-degree-zero component through
internal degree eight, transported from the original checked matrices. -/
theorem actualAugmentedHomogeneousExactness (t : Nat) (ht : t ≤ 8)
    (x : ActualFreeModule) (hx : ModuleHomogeneous 0 t x) (ha : actualAugmentation x = 0) :
    ∃ y : ActualFreeModule, ModuleHomogeneous 1 t y ∧ actualDifferential y = x := by
  let v := extractListComponent 0 t ht x
  obtain ⟨w,hw⟩ := exactAt_scalar _ _ (actualExactAt 0 t (by omega) ht) v
    (augmentation_scalar_kernel t ht x hx ha)
  refine ⟨reconstructListComponent 1 t ht w,reconstructComponent_homogeneous _ _ _,?_⟩
  rw [differential_reconstruct 0 t ht w]
  change reconstructListComponent 0 t ht (matrixScalarAction _ w) = x
  rw [hw]
  exact reconstruct_extract_list 0 t ht x hx

def rootComponent : ComponentIndex 0 0 := ⟨(rootIndex,unitRankMonomial),by decide⟩

noncomputable def augmentationSection (a : ZMod 2) : ActualFreeModule :=
  a.val • coordinateVector rootComponent

theorem augmentationSection_value (a : ZMod 2) : actualAugmentation (augmentationSection a) = a := by
  unfold actualAugmentation augmentationSection
  rw [module_nsmul_eval,coordinateVector_apply]
  simp [rootComponent,unitRankMonomial]

theorem augmentationSection_homogeneous (a : ZMod 2) : ModuleHomogeneous 0 0 (augmentationSection a) := by
  intro i m hbad
  rw [augmentationSection,module_nsmul_eval,coordinateVector_apply]
  have hn : ¬ (rootComponent.val.1 = i ∧ rootComponent.val.2.val = m.val) := by
    intro h
    have hi : i = rootIndex := h.1.symm
    have hm : m = unitRankMonomial := Subtype.ext h.2.symm
    subst i
    subst m
    have hp := rootComponent.property
    exact hbad.elim (fun h => h hp.1) (fun h => h hp.2)
  simp [hn]

theorem actualAugmentation_surjective : Function.Surjective actualAugmentation :=
  fun a => ⟨augmentationSection a,augmentationSection_value a⟩

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem actualEdges_positive : ∀ i j : ActualIndex, ∀ a ∈ edgeTerms i j, 0 < weight a := by decide

theorem augmentation_basis_boundary (i : ActualIndex) : actualAugmentation (basisBoundary i) = 0 := by
  unfold actualAugmentation
  rw [basisBoundary_apply,edgeCoefficient,rank_sum_apply,List.map_map]
  change ((edgeTerms i rootIndex).map fun a => polynomialRankFunctional 3 [a] unitRankMonomial).sum = 0
  apply List.sum_eq_zero
  intro z hz
  obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hz
  rw [singletonFunctional_apply]
  have hg := actualEdges_positive i rootIndex a ha
  have hn : a ≠ unitRankMonomial.val := by
    intro h
    rw [h] at hg
    have hz : weight unitRankMonomial.val = 0 := by decide
    omega
  simp [hn]

theorem rankDual_unit_eval_mul (a b : ActualRing) :
    (a*b) unitRankMonomial = a unitRankMonomial * b unitRankMonomial := by
  rw [rankDual_mul_apply]
  have hc : coproduct 3 unitRankMonomial.val = [(unitMonomial 3,unitMonomial 3)] := by decide
  simp only [dualMul,hc,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,add_zero]
  rw [extendRank_apply 3 a _ (by simp [unitMonomial]),extendRank_apply 3 b _ (by simp [unitMonomial])]
  exact _root_.add_zero _

theorem actualAugmentation_smul (a : ActualRing) (x : ActualFreeModule) :
    actualAugmentation (a • x) = a unitRankMonomial * actualAugmentation x := by
  unfold actualAugmentation
  rw [Finsupp.smul_apply,smul_eq_mul,rankDual_unit_eval_mul]

/-- The augmentation annihilates the actual boundary on every module vector,
including arbitrary completed-dual coefficients. No exactness beyond degree
 eight follows from this chain-complex identity. -/
theorem actualAugmentation_differential (x : ActualFreeModule) :
    actualAugmentation (actualDifferential x) = 0 := by
  classical
  induction x using Finsupp.induction with
  | zero => simp [actualAugmentation_zero]
  | @single_add i a x hi ha ih =>
    rw [map_add,actualAugmentation_add,actualDifferential_single,actualAugmentation_smul,
      augmentation_basis_boundary,ih,mul_zero,_root_.zero_add]

#print axioms actualAugmentedHomogeneousExactness
#print axioms actualAugmentation_surjective
#print axioms actualAugmentation_differential
end ExtComplexCertificates.ActualResolution
