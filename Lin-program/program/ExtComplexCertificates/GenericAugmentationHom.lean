import ExtComplexCertificates.GenericFreeComplexImport
import ExtComplexCertificates.GenericComponentExactness
import MilnorCertificates.RankStability

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
open MilnorCertificates
open scoped BigOperators

def unitIndex (rank : Nat) : RankMonomial rank := ⟨unitMonomial rank,by simp [unitMonomial]⟩

theorem coproduct_unit (rank : Nat) :
    coproduct rank (unitMonomial rank) = [(unitMonomial rank,unitMonomial rank)] := by
  unfold coproduct
  have he : ∀ j ∈ List.range rank,
      tensorPower rank (generatorCoproduct rank (j+1)) ((unitMonomial rank)[j]?.getD 0) =
        [(unitMonomial rank,unitMonomial rank)] := by
    intro j hj
    simp [unitMonomial,List.getElem?_replicate_of_lt (List.mem_range.mp hj),tensorPower]
  rw [List.map_congr_left he]
  have hf (l : List Nat) :
      (l.map fun _ => [(unitMonomial rank,unitMonomial rank)]).foldl tensorMultiply
        [(unitMonomial rank,unitMonomial rank)] = [(unitMonomial rank,unitMonomial rank)] := by
    induction l with
    | nil => rfl
    | cons j l ih =>
      simp only [List.map_cons,List.foldl_cons]
      rw [tensor_unit_right _ rank (by intro a ha; simp only [List.mem_singleton] at ha; subst a; simp [unitMonomial])]
      exact ih
  exact hf _

def ringAugmentation (rank : Nat) : FiniteGradedDual rank →+* ZMod 2 where
  toFun a := a.val (unitIndex rank)
  map_one' := by change dualUnit rank (unitMonomial rank) = 1; simp [dualUnit,counit,boolScalar]
  map_mul' a b := by
    change (a.val*b.val) (unitIndex rank) = _
    rw [rankDual_mul_apply]
    simp only [dualMul,unitIndex,coproduct_unit,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,add_zero]
    rw [extendRank_apply rank a.val _ (by simp [unitMonomial]),
      extendRank_apply rank b.val _ (by simp [unitMonomial])]
  map_zero' := rfl
  map_add' _ _ := rfl

def Field (_rank : Nat) := ZMod 2
instance (rank : Nat) : AddCommGroup (Field rank) := inferInstanceAs (AddCommGroup (ZMod 2))
instance (rank : Nat) : One (Field rank) := inferInstanceAs (One (ZMod 2))
instance (rank : Nat) : Module (FiniteGradedDual rank) (Field rank) :=
  Module.compHom (ZMod 2) (ringAugmentation rank)

abbrev Hom (rank n : Nat) := FreeModule rank n →ₗ[FiniteGradedDual rank] Field rank
noncomputable def fromGenerators (v : Fin n → Field rank) : Hom rank n :=
  Finsupp.linearCombination _ v
noncomputable def toGenerators (f : Hom rank n) : Fin n → Field rank := fun i => f (Finsupp.single i 1)

theorem to_from (v : Fin n → Field rank) : toGenerators (fromGenerators v) = v := by
  funext i
  simp [toGenerators,fromGenerators]

theorem from_to (f : Hom rank n) : fromGenerators (toGenerators f) = f := by
  apply Finsupp.lhom_ext
  intro i a
  rw [fromGenerators,Finsupp.linearCombination_single]
  unfold toGenerators
  rw [← map_smul]
  congr 1
  simp

noncomputable def homEquiv : Hom rank n ≃ (Fin n → Field rank) where
  toFun := toGenerators
  invFun := fromGenerators
  left_inv := from_to
  right_inv := to_from

def checkMinimal (d : Data rank n) : Bool := decide
  (∀ i j, ∀ m ∈ d.edge i j, m.length = rank ∧ 0 < weight m)

theorem edge_augmentation_zero (d : Data rank n) (h : checkMinimal d = true) (i j : Fin n) :
    ringAugmentation rank (finitePolynomial rank (d.edge i j)) = 0 := by
  have hh := of_decide_eq_true h
  have hn : unitMonomial rank ∉ d.edge i j := by
    intro hm
    have hp := (hh i j _ hm).2
    rw [unitMonomial_weight] at hp
    omega
  have hc : coefficient (d.edge i j) (unitMonomial rank) = false := by
    cases he : coefficient (d.edge i j) (unitMonomial rank) with
    | false => rfl
    | true => exact False.elim (hn (coefficient_true_mem _ _ he))
  change boolScalar (coefficient (d.edge i j) (unitMonomial rank)) = 0
  rw [hc]
  rfl

theorem hom_boundary_zero (d : Data rank n) (h : checkMinimal d = true)
    (f : Hom rank n) (i : Fin n) : f (boundaryVector d i) = 0 := by
  classical
  rw [boundaryVector,map_sum]
  apply Finset.sum_eq_zero
  intro j hj
  have he : Finsupp.single j (finitePolynomial rank (d.edge i j)) =
      finitePolynomial rank (d.edge i j) • (Finsupp.single j 1 : FreeModule rank n) := by simp
  rw [he,map_smul]
  change @HMul.hMul (ZMod 2) (ZMod 2) (ZMod 2) _
    (ringAugmentation rank (finitePolynomial rank (d.edge i j))) (f (Finsupp.single j 1)) = 0
  rw [edge_augmentation_zero d h,zero_mul]

theorem hom_differential_zero (d : Data rank n) (h : checkMinimal d = true) (f : Hom rank n) :
    f.comp (differential d) = 0 := by
  apply Finsupp.lhom_ext
  intro i a
  simp only [LinearMap.comp_apply,differential_single,map_smul,hom_boundary_zero d h,smul_zero,LinearMap.zero_apply]

def Bidegree (d : Data rank n) (s t : Nat) (f : Hom rank n) : Prop :=
  ∀ i, d.homological i ≠ s ∨ d.internal i ≠ t → toGenerators f i = 0

abbrev GeneratorIndex (d : Data rank n) (s t : Nat) :=
  {i : Fin n // d.homological i = s ∧ d.internal i = t}

noncomputable def bidegreeEquiv (d : Data rank n) (s t : Nat) :
    {f : Hom rank n // Bidegree d s t f} ≃ (GeneratorIndex d s t → Field rank) where
  toFun f := fun i => toGenerators f.val i.val
  invFun v := ⟨fromGenerators (fun i => if h : d.homological i = s ∧ d.internal i = t then v ⟨i,h⟩ else 0),by
    intro i hi
    rw [to_from]
    have hn : ¬ (d.homological i = s ∧ d.internal i = t) := by tauto
    simp [hn]⟩
  left_inv f := by
    apply Subtype.ext
    apply homEquiv.injective
    change toGenerators (fromGenerators _) = toGenerators f.val
    rw [to_from]
    funext i
    by_cases h : d.homological i = s ∧ d.internal i = t
    · simp [h]
    · have hn : d.homological i ≠ s ∨ d.internal i ≠ t := by tauto
      simp [h,f.property i hn]
  right_inv v := by
    funext i
    change toGenerators (fromGenerators _) i.val = v i
    rw [to_from]
    simp [i.property]

/-- A target-field augmentation is specified by values on generators.
The check enforces homogeneous degree zero and a surjective value. -/
structure AugmentationCertificate where
  version : Nat
  values : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def checkAugmentation (d : Data rank n) (c : AugmentationCertificate) : Bool :=
  checkMinimal d && decide (c.version = 1 ∧ c.values.length = n ∧
    (∀ i : Fin n, c.values[i.val]?.getD false = true → d.homological i = 0 ∧ d.internal i = 0) ∧
    ∃ i : Fin n, c.values[i.val]?.getD false = true)

noncomputable def augmentation (_d : Data rank n) (c : AugmentationCertificate) : Hom rank n :=
  fromGenerators (fun i => boolScalar (c.values[i.val]?.getD false))

theorem checkAugmentation_boundary (d : Data rank n) (c : AugmentationCertificate)
    (h : checkAugmentation d c = true) : (augmentation d c).comp (differential d) = 0 := by
  simp only [checkAugmentation,Bool.and_eq_true] at h
  exact hom_differential_zero d h.1 _

theorem checkAugmentation_surjective (d : Data rank n) (c : AugmentationCertificate)
    (h : checkAugmentation d c = true) : Function.Surjective (augmentation d c) := by
  simp only [checkAugmentation,Bool.and_eq_true,decide_eq_true_eq] at h
  obtain ⟨i,hi⟩ := h.2.2.2.2
  intro a
  have ha : a = 0 ∨ a = 1 := by
    have hb : boolScalar (scalarBool a) = a := boolScalar_scalarBool a
    cases he : scalarBool a <;> simp [he,boolScalar] at hb <;> tauto
  rcases ha with rfl | rfl
  · exact ⟨0,map_zero _⟩
  · refine ⟨Finsupp.single i 1,?_⟩
    have hv := congrFun (to_from (rank := rank) (fun j : Fin n => (boolScalar (c.values[j.val]?.getD false) : Field rank))) i
    change augmentation d c (Finsupp.single i 1) = _ at hv
    rw [hi] at hv
    exact hv

#print axioms ringAugmentation
#print axioms hom_differential_zero
#print axioms bidegreeEquiv
#print axioms checkAugmentation_surjective
end ExtComplexCertificates.GenericFreeComplex.GenericHom
