import Row2907TargetProduct.Finite

namespace Row2907TargetProduct.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsProductTraceBridge ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning
open Row2907PDeltaDetection Row2907PDeltaDetection.Descent
open Row2907PDeltaDetection.Actual Row2907PDeltaDetection.Branches

/-- The current target chart is canonical. Its entire d3 source/incoming
meaning and the whole E3 product action are supplied, with the same factor
and known-target interpretations used by the nonzero-product witness. -/
structure TargetMeaning (W : Witness S pages P) (r a : Bool) where
  current : Coordinates S 3 targetDegree 2
  complete : Meaning S 3 targetDegree (comparison r a) current
  meaning : (S.element 3 targetDegree).carrier → Q Data.c20_140_2
  binding : ∀ x, current.equivalence x = targetCoordinates.toCoordinates (meaning x)
  product : (S.element 3 knownTargetDegree).carrier → Q Data.c32_182_2
  productFaithful : Function.Injective product
  productZero : product 0 = zeroQ Data.c32_182_2
  productBinding : ∀ x, W.data.knownTarget.equivalence x =
    knownTargetCoordinates.toCoordinates (product x)
  productEquation : ∀ x y,
    product (P.product.multiply 3 factorDegree targetDegree x y) =
      targetMul (W.meaning.factor x) (meaning y)
  zeroMeaning : LocalZeroMeaning pages 3 targetDegree
  transition : Transition S pages P 3 factorDegree targetDegree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {W : Witness S pages P}

noncomputable def TargetMeaning.page4 {r a : Bool} (T : TargetMeaning W r a) :
    Coordinates S 4 targetDegree (comparison r a).h :=
  T.complete.nextCoordinates pages (comparison_valid r a) T.zeroMeaning

theorem actual_E3_action {r a : Bool} (T : TargetMeaning W r a)
    (x : (S.element 3 factorDegree).carrier) (y : (S.element 3 targetDegree).carrier) :
    W.data.knownTarget.equivalence (P.product.multiply 3 factorDegree targetDegree x y) =
      action (W.data.factor.equivalence x) (T.current.equivalence y) := by
  rw [T.productBinding,T.productEquation,complete_quotient_action,
    W.meaning.factorBinding,T.binding]

theorem nonzero_branch_cycle_product_zero {r : Bool} (T : TargetMeaning W r true)
    (x : PageCycle S 3 factorDegree) (y : PageCycle S 3 targetDegree) :
    P.product.multiply 3 factorDegree targetDegree x.val y.val = 0 := by
  apply W.data.knownTarget.equivalence.injective
  exact (actual_E3_action T x.val y.val).trans
    ((nonzero_branch_cycles_annihilated r _ _ ((T.complete.cycle_iff y.val).mp y.property)).trans
      W.data.knownTarget.zero_value.symm)

/-- Surjectivity of the actual E3/E4 quotient supplies representatives for
both arbitrary E4 inputs; no E4 product matrix is assumed. -/
theorem nonzero_branch_E4_all_zero {r : Bool} (T : TargetMeaning W r true)
    (x : (S.element 4 factorDegree).carrier) (y : (S.element 4 targetDegree).carrier) :
    P.product.multiply 4 factorDegree targetDegree x y = 0 := by
  obtain ⟨xx,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 3 factorDegree x
  obtain ⟨yy,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 3 targetDegree y
  have zeroCycle : multiplyCycle S P 3 factorDegree targetDegree xx yy =
      ActualAdamsSystemBridge.zeroCycle S 3 knownTargetDegree :=
    Subtype.ext (nonzero_branch_cycle_product_zero T xx yy)
  exact (T.transition.formula xx yy).symm.trans
    ((congrArg (fun z => (pages.nextPage 3 knownTargetDegree).toNext (Quotient.mk _ z)) zeroCycle).trans
      (W.data.knownTargetZero.trans (S.zero_is_zero _ _)))

theorem nonzero_branch_product_d4_zero {r : Bool} (T : TargetMeaning W r true) :
    S.differential 4 productDegree (productNext W.data W.product) = 0 := by
  rw [next_factorization W.meaning W.transition W.factor W.source W.product
    W.factorName W.sourceName W.productName]
  apply (ActualAdamsProductCycleBridge.cast_zero_iff S 4
    (adamsTarget_add_left 4 factorDegree sourceDegree) _).mp
  have formula := P.leibniz.formula 4 factorDegree sourceDegree
    (factorNext W.data W.factor) (sourceNext W.data W.source)
  have rightZero := nonzero_branch_E4_all_zero T (factorNext W.data W.factor)
    (S.differential 4 sourceDegree (sourceNext W.data W.source))
  change P.product.multiply 4 factorDegree (AdamsTarget 4 sourceDegree)
    (factorNext W.data W.factor) (S.differential 4 sourceDegree (sourceNext W.data W.source)) = 0 at rightZero
  rw [factor_d4_zero W.meaning W.leftZero,P.product.zero_left,rightZero,
    ActualAdamsProductCycleBridge.cast_zero,add_zero] at formula
  exact formula

theorem nonzero_branch_excluded {r : Bool} (T : TargetMeaning W r true) : False :=
  known_nonzero W.data W.known (productNext W.data W.product)
    (product_next_name W.meaning W.product W.productName)
    (nonzero_branch_product_d4_zero T)

theorem parameter_zero {r a : Bool} (T : TargetMeaning W r a) : a = false := by
  cases a
  · rfl
  · exact False.elim (nonzero_branch_excluded T)

#print axioms TargetMeaning.page4
#print axioms actual_E3_action
#print axioms nonzero_branch_cycle_product_zero
#print axioms nonzero_branch_E4_all_zero
#print axioms nonzero_branch_product_d4_zero
#print axioms nonzero_branch_excluded
#print axioms parameter_zero
end Row2907TargetProduct.Actual
