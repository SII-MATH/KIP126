import PageProductCertificates.Witness
namespace PageProductCertificates
open LinearCertificates ResolutionCertificates PageTransitionCertificates

/-- A verified cycle projector onto the entire kernel, including boundaries. -/
structure CycleProjector (m : Nat) where
  matrix : Matrix m m
  correction : Matrix m m

-- The correction is instead supplied in its natural outgoing-domain shape.
def cycleProjectionCheck (out : Matrix k m) (p : Matrix m m) (down : Matrix m k) : Bool :=
  checkComplex out p && decide (∀ i j,
    matrixAdd p (compose down out) i j = identityMatrix m i j)

theorem cycleProjectionCheck_sound (out : Matrix k m) (p : Matrix m m) (down : Matrix m k)
    (h : cycleProjectionCheck out p down = true) :
    (∀ x, InKernel out (eval p x)) ∧ (∀ x, InKernel out x → eval p x = x) := by
  simp only [cycleProjectionCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  refine ⟨checkComplex_sound _ _ h.1, ?_⟩
  intro x hx
  have he : matrixAdd p (compose down out) = identityMatrix m :=
    funext fun i => funext fun j => h.2 i j
  have hh := congrArg (fun a => eval a x) he
  rw [eval_matrixAdd, eval_compose, hx, eval_zero, add_zero, eval_identity] at hh
  exact hh

structure CycleWitness (ka a kb b nc na nb : Nat) where
  leftProjector : Matrix a a
  leftCorrection : Matrix a ka
  rightProjector : Matrix b b
  rightCorrection : Matrix b kb
  leftBoundary : Tensor na b nc
  rightBoundary : Tensor a nb nc

def checkCycles (oa : Matrix ka a) (ia : Matrix a na) (ca : Comparison ka a na ha)
    (ob : Matrix kb b) (ib : Matrix b nb) (cb : Comparison kb b nb hb)
    (oc : Matrix kc c) (ic : Matrix c nc) (cc : Comparison kc c nc hc)
    (t : Tensor a b c) (w : CycleWitness ka a kb b nc na nb) : Bool :=
  checkComparison oa ia ca && checkComparison ob ib cb && checkComparison oc ic cc &&
  cycleProjectionCheck oa w.leftProjector w.leftCorrection &&
  cycleProjectionCheck ob w.rightProjector w.rightCorrection &&
  checkTensorEq (post oc (preRight (preLeft t w.leftProjector) w.rightProjector))
    (fun _ _ _ => false) &&
  checkTensorEq (preRight (preLeft t ia) w.rightProjector) (post ic w.leftBoundary) &&
  checkTensorEq (preRight (preLeft t w.leftProjector) ib) (post ic w.rightBoundary)

theorem checkCycles_sound (oa : Matrix ka a) (ia : Matrix a na) (ca : Comparison ka a na ha)
    (ob : Matrix kb b) (ib : Matrix b nb) (cb : Comparison kb b nb hb)
    (oc : Matrix kc c) (ic : Matrix c nc) (cc : Comparison kc c nc hc)
    (t : Tensor a b c) (w : CycleWitness ka a kb b nc na nb)
    (h : checkCycles oa ia ca ob ib cb oc ic cc t w = true) : Valid oa ia ob ib oc ic t := by
  simp only [checkCycles, Bool.and_eq_true] at h
  have left := cycleProjectionCheck_sound _ _ _ h.1.1.1.1.2
  have right := cycleProjectionCheck_sound _ _ _ h.1.1.1.2
  refine ⟨?_, ?_, ?_⟩
  · intro x y hx hy
    have hh := checkTensorEq_sound _ _ h.1.1.2 x y
    rw [post_eval, preRight_eval, preLeft_eval, left.2 x hx, right.2 y hy,
      product_zero_tensor] at hh
    exact hh
  · rintro x y ⟨u,rfl⟩ hy
    refine ⟨product w.leftBoundary u y, ?_⟩
    have hh := checkTensorEq_sound _ _ h.1.2 u y
    rw [preRight_eval, preLeft_eval, right.2 y hy, post_eval] at hh
    exact hh.symm
  · rintro x y hx ⟨v,rfl⟩
    refine ⟨product w.rightBoundary x v, ?_⟩
    have hh := checkTensorEq_sound _ _ h.2 x v
    rw [preRight_eval, preLeft_eval, left.2 x hx, post_eval] at hh
    exact hh.symm
end PageProductCertificates
