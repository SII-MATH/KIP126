import ExtComplexCertificates.GenericAugmentationImport

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
open MilnorCertificates
open scoped BigOperators

/-- Contraction of the degree-zero component against the specified field
augmentation, with one outgoing coordinate in internal degree zero only. -/
structure AugmentedCertificate where
  version : Nat
  t : Nat
  incoming : WireArrow
  up : List Bool
  down : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def augmentationMatrix (d : Data rank n) (a : AugmentationCertificate) (t : Nat) :
    LinearCertificates.Matrix (if t = 0 then 1 else 0) (componentBasisList d 0 t).length :=
  fun _ j =>
    let p := (componentBasisList d 0 t).get j
    coefficient [p.2] (unitMonomial rank) && a.values[p.1.val]?.getD false

def checkAugmented (d : Data rank n) (a : AugmentationCertificate) (c : AugmentedCertificate) : Bool :=
  checkAugmentation d a && decide (c.version = 1 ∧
    c.up.length = (componentBasisList d 1 t).length * (componentBasisList d 0 t).length ∧
    c.down.length = (componentBasisList d 0 t).length * (if t = 0 then 1 else 0)) &&
  checkArrow d 0 c.t c.incoming &&
  ResolutionCertificates.checkContraction (augmentationMatrix d a c.t)
    (orderedMatrix d 0 c.t (c.incoming.certificate d 0 c.t))
    ⟨ResolutionCertificates.matrixOf _ _ c.up,ResolutionCertificates.matrixOf _ _ c.down⟩
  where t := c.t

theorem augmentation_coordinateVector (d : Data rank n) (a : AugmentationCertificate)
    (t : Nat) (p : ComponentIndex d 0 t) :
    augmentation d a (coordinateVector d 0 t p) =
      @HMul.hMul (ZMod 2) (ZMod 2) (ZMod 2) _
        (boolScalar (coefficient [p.val.2] (unitMonomial rank)))
        (boolScalar (a.values[p.val.1.val]?.getD false)) := by
  rw [coordinateVector,augmentation,fromGenerators,Finsupp.linearCombination_single]
  rfl

theorem augmentation_reconstruct (d : Data rank n) (a : AugmentationCertificate)
    (t : Nat) (v : ComponentCoordinates d 0 t) :
    augmentation d a (reconstruct d 0 t v) =
      ∑ p, v p * (boolScalar (coefficient [p.val.2] (unitMonomial rank)) *
        boolScalar (a.values[p.val.1.val]?.getD false)) := by
  rw [reconstruct_sum,map_sum]
  simp only [map_nsmul,augmentation_coordinateVector]
  change (∑ p, (v p).val • (boolScalar _ * boolScalar _ : ZMod 2)) = _
  simp only [nsmul_eq_mul,ZMod.natCast_zmod_val]

theorem augmentation_matrix_kernel (d : Data rank n) (a : AugmentationCertificate)
    (t : Nat) (v : Fin (componentBasisList d 0 t).length → ZMod 2)
    (h : augmentation d a (listReconstruct d 0 t v) = 0) :
    matrixScalarAction (augmentationMatrix d a t) v = 0 := by
  funext i
  unfold listReconstruct at h
  rw [augmentation_reconstruct] at h
  change (∑ p, v (componentListEquiv d 0 t p) *
    (boolScalar (coefficient [p.val.2] (unitMonomial rank)) *
    boolScalar (a.values[p.val.1.val]?.getD false)) : ZMod 2) = 0 at h
  change (∑ j, boolScalar (augmentationMatrix d a t i j) * v j) = 0
  rw [← (componentListEquiv d 0 t).sum_comp]
  have he (p : ComponentIndex d 0 t) :
      (componentBasisList d 0 t).get (componentListEquiv d 0 t p) = p.val :=
    componentToListIndex_spec d 0 t p
  simp only [augmentationMatrix,he,boolScalar_and]
  rw [← h]
  apply Finset.sum_congr rfl
  intro p hp
  exact mul_comm _ _

/-- Checked augmented exactness gives actual homogeneous witnesses, including
internal degree zero where unaugmented surjectivity is false. -/
theorem checkAugmented_sound (d : Data rank n) (a : AugmentationCertificate)
    (c : AugmentedCertificate) (h : checkAugmented d a c = true)
    (x : FreeModule rank n) (hx : Homogeneous d 0 c.t x)
    (ha : augmentation d a x = 0) :
    ∃ y : FreeModule rank n, Homogeneous d 1 c.t y ∧ differential d y = x := by
  simp only [checkAugmented,Bool.and_eq_true] at h
  have hi := h.1.2
  simp only [checkArrow,Bool.and_eq_true] at hi
  let v := listExtract d 0 c.t x
  have hv : matrixScalarAction (augmentationMatrix d a c.t) v = 0 := by
    apply augmentation_matrix_kernel d a c.t v
    rw [listReconstruct_extract d 0 c.t x hx]
    exact ha
  obtain ⟨z,hz⟩ := exactAt_scalar _ _ (ResolutionCertificates.checkContraction_sound _ _ _ h.2) v hv
  refine ⟨listReconstruct d 1 c.t z,reconstruct_homogeneous d 1 c.t _,?_⟩
  rw [listDifferential_reconstruct d 0 c.t _ hi.1.2 z,hz]
  exact listReconstruct_extract d 0 c.t x hx

#print axioms augmentation_matrix_kernel
#print axioms checkAugmented_sound
end ExtComplexCertificates.GenericFreeComplex.GenericHom
