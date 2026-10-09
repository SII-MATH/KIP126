import ExtComplexCertificates.ActualFiniteExactness
import ExtComplexCertificates.ActualHomCohomology

namespace ExtComplexCertificates.ActualResolution.FiniteHom
open MilnorCertificates
open scoped BigOperators

def augmentation : ActualFiniteRing →+* ZMod 2 :=
  ringAugmentation.comp (finiteGradedSubring 3).subtype

def CoefficientField := ZMod 2
instance : AddCommGroup CoefficientField := inferInstanceAs (AddCommGroup (ZMod 2))
instance : Module ActualFiniteRing CoefficientField := Module.compHom (ZMod 2) augmentation

abbrev Hom := ActualFiniteFreeModule →ₗ[ActualFiniteRing] CoefficientField
noncomputable def fromGenerators (v : ActualIndex → CoefficientField) : Hom :=
  Finsupp.linearCombination ActualFiniteRing v
noncomputable def toGenerators (f : Hom) : ActualIndex → CoefficientField := fun i => f (Finsupp.single i 1)

theorem to_from (v : ActualIndex → CoefficientField) : toGenerators (fromGenerators v) = v := by
  funext i
  simp [toGenerators,fromGenerators]

theorem from_to (f : Hom) : fromGenerators (toGenerators f) = f := by
  apply Finsupp.lhom_ext
  intro i a
  rw [fromGenerators,Finsupp.linearCombination_single]
  unfold toGenerators
  rw [← map_smul]
  congr 1
  simp

noncomputable def coordinateEquiv : Hom ≃ (ActualIndex → CoefficientField) where
  toFun := toGenerators
  invFun := fromGenerators
  left_inv := from_to
  right_inv := to_from

theorem boundary_zero (f : Hom) (i : ActualIndex) : f (finiteBasisBoundary i) = 0 := by
  classical
  rw [finiteBasisBoundary,map_sum]
  apply Finset.sum_eq_zero
  intro j hj
  have he : Finsupp.single j (finiteEdgeCoefficient i j) =
      finiteEdgeCoefficient i j • (Finsupp.single j 1 : ActualFiniteFreeModule) := by simp
  rw [he,map_smul]
  change @HMul.hMul (ZMod 2) (ZMod 2) (ZMod 2) _
    (ringAugmentation (finiteEdgeCoefficient i j : ActualRing)) (f (Finsupp.single j 1)) = 0
  rw [finiteEdge_coe,edge_augmentation_zero,zero_mul]

theorem differential_zero (f : Hom) : f.comp finiteDifferential = 0 := by
  apply Finsupp.lhom_ext
  intro i a
  simp only [LinearMap.comp_apply,finiteDifferential_single,map_smul,boundary_zero,smul_zero,LinearMap.zero_apply]

def Bidegree (s t : Nat) (f : Hom) : Prop :=
  ∀ i : ActualIndex, (actualRow i).s ≠ s ∨ (actualRow i).t ≠ t → toGenerators f i = 0

noncomputable def bidegreeSubgroup (s t : Nat) : AddSubgroup Hom where
  carrier := {f | Bidegree s t f}
  zero_mem' := by intro i hi; rfl
  add_mem' := by
    intro f g hf hg i hi
    change toGenerators f i + toGenerators g i = 0
    rw [hf i hi,hg i hi,add_zero]
  neg_mem' := by
    intro f hf i hi
    change -toGenerators f i = 0
    rw [hf i hi,neg_zero]

noncomputable abbrev Cochain (s t : Nat) := bidegreeSubgroup s t

noncomputable def cochainDifferential (s t : Nat) : Cochain s t →+ Cochain (s+1) t where
  toFun f := ⟨f.val.comp finiteDifferential,by rw [differential_zero]; exact (bidegreeSubgroup _ _).zero_mem⟩
  map_zero' := by apply Subtype.ext; ext x; rfl
  map_add' f g := by apply Subtype.ext; ext x; rfl

theorem cochainDifferential_zero (s t : Nat) : cochainDifferential s t = 0 := by
  apply AddMonoidHom.ext
  intro f
  apply Subtype.ext
  exact differential_zero f.val

noncomputable def cycles (s t : Nat) : AddSubgroup (Cochain s t) := (cochainDifferential s t).ker
noncomputable def boundaries (s t : Nat) : AddSubgroup (Cochain s t) :=
  match s with
  | 0 => ⊥
  | n+1 => (cochainDifferential n t).range
noncomputable def boundariesInCycles (s t : Nat) : AddSubgroup (cycles s t) :=
  (boundaries s t).comap (cycles s t).subtype
abbrev Cohomology (s t : Nat) := (cycles s t) ⧸ boundariesInCycles s t

theorem cycles_top (s t : Nat) : cycles s t = ⊤ := by simp [cycles,cochainDifferential_zero]
theorem boundaries_bot (s t : Nat) : boundaries s t = ⊥ := by cases s <;> simp [boundaries,cochainDifferential_zero]
theorem boundariesInCycles_bot (s t : Nat) : boundariesInCycles s t = ⊥ := by
  rw [boundariesInCycles,boundaries_bot]
  ext x
  simp

noncomputable def quotientEquiv (s t : Nat) : Cohomology s t ≃+ Cochain s t := by
  have hq : Cohomology s t ≃+ cycles s t := by
    unfold Cohomology
    rw [boundariesInCycles_bot]
    exact QuotientAddGroup.quotientBot
  exact hq.trans {
    toFun := fun x => x.val
    invFun := fun x => ⟨x,by rw [cycles_top]; trivial⟩
    left_inv := fun x => rfl
    right_inv := fun x => rfl
    map_add' := fun x y => rfl }

/-- Cochain comparison via the same generator values, between genuine linear
maps over two different scalar rings. -/
noncomputable def fullCochainEquiv (s t : Nat) : Cochain s t ≃+ HomCochain s t where
  toFun f := ⟨homFromGenerators (fun i => toGenerators f.val i),by
    intro i hi
    rw [homToFrom]
    exact f.property i hi⟩
  invFun f := ⟨fromGenerators (fun i => homToGenerators f.val i),by
    intro i hi
    rw [to_from]
    exact f.property i hi⟩
  left_inv f := by
    apply Subtype.ext
    apply coordinateEquiv.injective
    change toGenerators (fromGenerators _) = toGenerators f.val
    rw [to_from,homToFrom]
  right_inv f := by
    apply Subtype.ext
    apply actualHomEquiv.injective
    change homToGenerators (homFromGenerators _) = homToGenerators f.val
    rw [homToFrom,to_from]
  map_add' f g := by
    apply Subtype.ext
    apply actualHomEquiv.injective
    funext i
    change homToGenerators (homFromGenerators _) i =
      homToGenerators ((homFromGenerators _) + (homFromGenerators _)) i
    simp only [homToFrom]
    change toGenerators f.val i + toGenerators g.val i =
      homToGenerators (homFromGenerators (fun i => toGenerators f.val i)) i +
      homToGenerators (homFromGenerators (fun i => toGenerators g.val i)) i
    rw [homToFrom,homToFrom]
    rfl

noncomputable def cohomologyFullEquiv (s t : Nat) : Cohomology s t ≃+ ActualHomCohomology s t :=
  (quotientEquiv s t).trans ((fullCochainEquiv s t).trans
    (((cohomologyCyclesEquiv s t).trans (cyclesCochainEquiv s t)).symm))

noncomputable def cohomologyCoordinates (s t : Nat) :
    Cohomology s t ≃+ (Fin (actualHomDimension s t) → AugmentationField) :=
  (cohomologyFullEquiv s t).trans (actualHomCohomologyEquiv s t)

#print axioms differential_zero
#print axioms cohomologyCoordinates
end ExtComplexCertificates.ActualResolution.FiniteHom
