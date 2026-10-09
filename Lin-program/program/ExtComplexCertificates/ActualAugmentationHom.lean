import ExtComplexCertificates.ActualAugmentation
import ExtComplexCertificates.MinimalHom

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates
open scoped BigOperators

def ringAugmentation : ActualRing →+* ZMod 2 where
  toFun a := a unitRankMonomial
  map_one' := by change dualUnit 3 unitRankMonomial.val = 1; simp [dualUnit,counit,boolScalar,unitRankMonomial]
  map_mul' := rankDual_unit_eval_mul
  map_zero' := rfl
  map_add' a b := rankDual_add_apply 3 a b unitRankMonomial

/-- The field with scalar action through the proved ring augmentation. -/
def AugmentationField := ZMod 2

instance : AddCommGroup AugmentationField := inferInstanceAs (AddCommGroup (ZMod 2))
instance : Module ActualRing AugmentationField := Module.compHom (ZMod 2) ringAugmentation

abbrev ActualHom := ActualFreeModule →ₗ[ActualRing] AugmentationField

noncomputable def homFromGenerators (v : ActualIndex → AugmentationField) : ActualHom :=
  Finsupp.linearCombination ActualRing v

noncomputable def homToGenerators (f : ActualHom) : ActualIndex → AugmentationField :=
  fun i => f (Finsupp.single i 1)

theorem homToFrom (v : ActualIndex → AugmentationField) : homToGenerators (homFromGenerators v) = v := by
  funext i
  simp [homToGenerators,homFromGenerators]

theorem homFromTo (f : ActualHom) : homFromGenerators (homToGenerators f) = f := by
  apply Finsupp.lhom_ext
  intro i a
  rw [homFromGenerators,Finsupp.linearCombination_single]
  unfold homToGenerators
  rw [← map_smul]
  congr 1
  simp

noncomputable def actualHomEquiv : ActualHom ≃ (ActualIndex → AugmentationField) where
  toFun := homToGenerators
  invFun := homFromGenerators
  left_inv := homFromTo
  right_inv := homToFrom

theorem edge_augmentation_zero (i j : ActualIndex) : ringAugmentation (edgeCoefficient i j) = 0 := by
  change edgeCoefficient i j unitRankMonomial = 0
  rw [edgeCoefficient,rank_sum_apply,List.map_map]
  change ((edgeTerms i j).map fun a => polynomialRankFunctional 3 [a] unitRankMonomial).sum = 0
  apply List.sum_eq_zero
  intro z hz
  obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hz
  rw [singletonFunctional_apply]
  have hp := actualEdges_positive i j a ha
  have hn : a ≠ unitRankMonomial.val := by
    intro h
    rw [h] at hp
    have hz : weight unitRankMonomial.val = 0 := by decide
    omega
  simp [hn]

theorem actualHom_boundary (f : ActualHom) (i : ActualIndex) : f (basisBoundary i) = 0 := by
  classical
  rw [basisBoundary,map_sum]
  apply Finset.sum_eq_zero
  intro j hj
  have he : Finsupp.single j (edgeCoefficient i j) = edgeCoefficient i j • (Finsupp.single j 1 : ActualFreeModule) := by simp
  rw [he,map_smul]
  change @HMul.hMul (ZMod 2) (ZMod 2) (ZMod 2) _ (ringAugmentation (edgeCoefficient i j)) (f (Finsupp.single j 1)) = 0
  rw [edge_augmentation_zero,zero_mul]

theorem actualHom_differential_zero (f : ActualHom) : f.comp actualDifferential = 0 := by
  apply Finsupp.lhom_ext
  intro i a
  simp only [LinearMap.comp_apply,actualDifferential_single,map_smul,actualHom_boundary,smul_zero,LinearMap.zero_apply]

theorem actualHom_minimal_value (f : ActualHom) (i : ActualIndex) (values : Nat → Bool) :
    (f.comp actualDifferential) (Finsupp.single i 1) =
      boolScalar (homDifferentialValue (actualRow i) values) := by
  rw [actualHom_differential_zero,LinearMap.zero_apply,
    actual_all_functionals_zero (actualRow i) (List.getElem_mem i.isLt) values]
  rfl

/-- Homogeneous cochains vanish on generators of other bidegrees. -/
def HomBidegree (s t : Nat) (f : ActualHom) : Prop :=
  ∀ i : ActualIndex, (actualRow i).s ≠ s ∨ (actualRow i).t ≠ t → homToGenerators f i = 0

abbrev HomGeneratorIndex (s t : Nat) := {i : ActualIndex // (actualRow i).s = s ∧ (actualRow i).t = t}

noncomputable def homBidegreeEquiv (s t : Nat) :
    {f : ActualHom // HomBidegree s t f} ≃ (HomGeneratorIndex s t → AugmentationField) where
  toFun f := fun i => homToGenerators f.val i.val
  invFun v := ⟨homFromGenerators (fun i => if h : (actualRow i).s = s ∧ (actualRow i).t = t then v ⟨i,h⟩ else 0),by
    intro i hi
    rw [homToFrom]
    have hn : ¬ ((actualRow i).s = s ∧ (actualRow i).t = t) := by tauto
    simp [hn]⟩
  left_inv f := by
    apply Subtype.ext
    apply actualHomEquiv.injective
    change homToGenerators (homFromGenerators _) = homToGenerators f.val
    rw [homToFrom]
    funext i
    by_cases h : (actualRow i).s = s ∧ (actualRow i).t = t
    · simp [h]
    · have hn : (actualRow i).s ≠ s ∨ (actualRow i).t ≠ t := by tauto
      simp [h,f.property i hn]
  right_inv v := by
    funext i
    change homToGenerators (homFromGenerators _) i.val = v i
    rw [homToFrom]
    simp [i.property]

theorem homGeneratorIndex_card (s t : Nat) :
    Fintype.card (HomGeneratorIndex s t) = actualHomDimension s t := by
  classical
  rw [Fintype.card_subtype]
  unfold actualHomDimension
  have hfilter : ((List.finRange actualRows.length).filter (fun i =>
      decide ((actualRow i).s = s ∧ (actualRow i).t = t))).length =
      (actualRows.filter fun r => r.s == s && r.t == t).length := by
    have hmap : (List.finRange actualRows.length).map actualRow = actualRows := by
      exact List.map_getElem_finRange actualRows
    conv_rhs => rw [← hmap]
    rw [List.filter_map,List.length_map]
    congr 1
    apply List.filter_congr
    intro i hi
    apply Bool.eq_iff_iff.mpr
    simp
  rw [← hfilter]
  rw [← List.toFinset_card_of_nodup ((List.nodup_finRange _).filter _)]
  congr 1
  ext i
  simp

noncomputable def homDimensionEquiv (s t : Nat) :
    {f : ActualHom // HomBidegree s t f} ≃ (Fin (actualHomDimension s t) → AugmentationField) :=
  (homBidegreeEquiv s t).trans (Equiv.piCongrLeft' (fun _ => AugmentationField)
    ((Fintype.equivFin (HomGeneratorIndex s t)).trans (finCongr (homGeneratorIndex_card s t))))

/-- Existing local-ID raw Hom checks agree with precomposition on genuine
linear maps. For these minimal differentials both expressions vanish for any
assignment, so no ambiguous cross-filtration local-ID lookup is assumed. -/
theorem actualHom_raw_differential_agrees (f : ActualHom) (i : ActualIndex) (values : Nat → Bool) :
    (f.comp actualDifferential) (Finsupp.single i 1) =
      boolScalar (homDifferentialValue (actualRow i) values) := actualHom_minimal_value f i values

#print axioms actualHom_differential_zero
#print axioms homDimensionEquiv
end ExtComplexCertificates.ActualResolution
