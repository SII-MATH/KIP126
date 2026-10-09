import Row2907D4Candidates.Finite

namespace Row2907D4Candidates.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ActualAdamsProductTraceBridge ActualAdamsHomologyCoordinates.Meaning
open Row2907PDeltaDetection Row2907PDeltaDetection.Descent
open Row2907PDeltaDetection.Actual Row2907PDeltaDetection.Branches
open Row2907TargetProduct Row2907TargetProduct.Actual

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {W : Witness S pages P}

theorem whole_E4_action {r : Bool} (T : TargetMeaning W r false)
    (x : (S.element 4 factorDegree).carrier) (y : (S.element 4 targetDegree).carrier) :
    W.data.knownTarget4.equivalence (P.product.multiply 4 factorDegree targetDegree x y) =
      action4 r (W.data.factor4.equivalence x) (T.page4.equivalence y) := by
  obtain ⟨xx,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 3 factorDegree x
  obtain ⟨yy,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 3 targetDegree y
  have hk := W.data.knownTargetMeaning.nextCoordinates_quotient pages
    Data.c32_182_3_valid W.data.knownTargetZero (multiplyCycle S P 3 factorDegree targetDegree xx yy)
  have hf := W.data.factorMeaning.nextCoordinates_quotient pages
    Data.c12_42_3_valid W.data.factorZero xx
  have ht := T.complete.nextCoordinates_quotient pages (comparison_valid r false) T.zeroMeaning yy
  exact (congrArg W.data.knownTarget4.equivalence (T.transition.formula xx yy).symm).trans
    (hk.trans ((congrArg (eval Data.c32_182_3.comparison.projection)
      (actual_E3_action T xx.val yy.val)).trans
        ((quotient_action r _ _).trans (congrArg₂ (action4 r) hf.symm ht.symm))))

theorem product_d4_factorization :
    S.differential 4 productDegree (productNext W.data W.product) =
      P.product.multiply 4 factorDegree targetDegree (factorNext W.data W.factor)
        (S.differential 4 sourceDegree W.next) := by
  rw [next_factorization W.meaning W.transition W.factor W.source W.product
    W.factorName W.sourceName W.productName]
  have h := P.leibniz.formula 4 factorDegree sourceDegree
    (factorNext W.data W.factor) (sourceNext W.data W.source)
  rw [factor_d4_zero W.meaning W.leftZero,P.product.zero_left,zero_add] at h
  exact h

theorem named_action_one {r : Bool} (T : TargetMeaning W r false) :
    action4 r (fun _ => true)
      (T.page4.equivalence (S.differential 4 sourceDegree W.next)) = (fun _ => true) := by
  have equation := whole_E4_action T (factorNext W.data W.factor)
    (S.differential 4 sourceDegree W.next)
  rw [← product_d4_factorization, factor_next_name W.meaning W.factor W.factorName] at equation
  have same : productNext W.data W.product =
      W.data.product4.equivalence.symm (fun _ => true) :=
    W.data.product4.equivalence.injective
      ((product_next_name W.meaning W.product W.productName).trans
        (W.data.product4.equivalence.apply_symm_apply _).symm)
  rw [same,W.known.recorded] at equation
  exact equation.symm

theorem named_first_one (T : TargetMeaning W false false) :
    T.page4.equivalence (S.differential 4 sourceDegree W.next) (0 : Fin 2) = true :=
  first_forced _ (named_action_one T)

noncomputable def remainingCoefficient (T : TargetMeaning W false false) : Bool :=
  T.page4.equivalence (S.differential 4 sourceDegree W.next) (1 : Fin 2)

/-- The source is the entire one-dimensional E4 space. The named value and
zero preservation therefore determine every column entry. -/
theorem whole_column (T : TargetMeaning W false false)
    (x : (S.element 4 sourceDegree).carrier) :
    T.page4.equivalence (S.differential 4 sourceDegree x) =
      eval (column (remainingCoefficient T)) (W.data.source4.equivalence x) := by
  rcases (show ∀ v : Vec 1, v = zero ∨ v = (fun _ => true) from by decide)
    (W.data.source4.equivalence x) with hz | hn
  · have same : x = 0 := W.data.source4.equivalence.injective
      (hz.trans W.data.source4.zero_value.symm)
    have image : T.page4.equivalence (S.differential 4 sourceDegree x) = zero :=
      (congrArg (fun y : (S.element 4 targetDegree).carrier => T.page4.equivalence y)
        (show S.differential 4 sourceDegree x = 0 by rw [same,(S.differential 4 sourceDegree).map_zero'])).trans
          T.page4.zero_value
    exact image.trans ((eval_zero (column (remainingCoefficient T))).symm.trans
      (congrArg (eval (column (remainingCoefficient T))) hz.symm))
  · have same : x = W.next := W.data.source4.equivalence.injective (hn.trans W.next_name.symm)
    rw [same,W.next_name]
    exact named_column _ (named_first_one T)

theorem complete_candidates (T : TargetMeaning W false false) :
    ∃ b : Bool, ∀ x : (S.element 4 sourceDegree).carrier,
      T.page4.equivalence (S.differential 4 sourceDegree x) =
        eval (column b) (W.data.source4.equivalence x) :=
  ⟨remainingCoefficient T,whole_column T⟩

#print axioms whole_E4_action
#print axioms product_d4_factorization
#print axioms named_action_one
#print axioms named_first_one
#print axioms whole_column
#print axioms complete_candidates
end Row2907D4Candidates.Actual
