import Row2773D4Leibniz.Basic
import Row2773D4Leibniz.Descent
import Row2773Leibniz.Actual
import EtaD3Source.Actual

namespace Row2773D4Leibniz.Actual
open LinearCertificates ManualInputObligations.Reference ActualAdamsProductCycleBridge
open ActualAdamsProductTraceBridge

abbrev etaDegree : Bidegree := ⟨1,2⟩
abbrev rightDegree : Bidegree := ⟨12,133⟩
abbrev sourceDegree : Bidegree := ⟨13,135⟩
abbrev leftDegree : Bidegree := ⟨5,5⟩
abbrev rightTargetDegree : Bidegree := ⟨16,136⟩
abbrev targetDegree : Bidegree := ⟨17,138⟩

/-- Only E3 product meanings are supplied; E4 vanishing is derived through
the actual homology quotient and complete multiplicativity squares. -/
structure Meaning (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S) where
  eta : (S.element 3 etaDegree).carrier → Q Data.eta
  right : (S.element 3 rightDegree).carrier → Q Data.right
  left : (S.element 3 leftDegree).carrier → Q Data.leftTarget
  rightTarget : (S.element 3 rightTargetDegree).carrier → Q Data.rightTarget
  target : (S.element 3 targetDegree).carrier → Q Data.target
  targetFaithful : Function.Injective target
  targetZero : target 0 = zeroQ Data.target
  leftProduct : ∀ a b, target (P.product.multiply 3 leftDegree rightDegree a b) =
    leftMul (left a) (right b)
  rightProduct : ∀ a b, target (P.product.multiply 3 etaDegree rightTargetDegree a b) =
    rightMul (eta a) (rightTarget b)

theorem left_E3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 leftDegree).carrier)
    (b : (S.element 3 rightDegree).carrier) :
    P.product.multiply 3 leftDegree rightDegree a b = 0 := by
  apply M.targetFaithful
  exact (M.leftProduct a b).trans ((left_all_zero _ _).trans M.targetZero.symm)

theorem right_E3_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Meaning S P) (a : (S.element 3 etaDegree).carrier)
    (b : (S.element 3 rightTargetDegree).carrier) :
    P.product.multiply 3 etaDegree rightTargetDegree a b = 0 := by
  apply M.targetFaithful
  exact (M.rightProduct a b).trans ((right_all_zero _ _).trans M.targetZero.symm)

theorem actual_product_d4_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (M : Meaning S P)
    (leftTransition : Transition S pages P 3 leftDegree rightDegree)
    (rightTransition : Transition S pages P 3 etaDegree rightTargetDegree)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 3 targetDegree)
    (a : (S.element 4 etaDegree).carrier) (b : (S.element 4 rightDegree).carrier) :
    S.differential 4 sourceDegree (P.product.multiply 4 etaDegree rightDegree a b) = 0 := by
  have leftZero : P.product.multiply 4 (AdamsTarget 4 etaDegree) rightDegree
      (S.differential 4 etaDegree a) b = 0 :=
    Descent.whole_zero_next S pages P 3 leftDegree rightDegree leftTransition zeroMeaning
      (left_E3_zero S P M) _ _
  have rightZero : P.product.multiply 4 etaDegree (AdamsTarget 4 rightDegree)
      a (S.differential 4 rightDegree b) = 0 :=
    Descent.whole_zero_next S pages P 3 etaDegree rightTargetDegree rightTransition zeroMeaning
      (right_E3_zero S P M) _ _
  apply (cast_zero_iff S 4 (adamsTarget_add_left 4 etaDegree rightDegree) _).mp
  have formula := P.leibniz.formula 4 etaDegree rightDegree a b
  rw [leftZero,rightZero,cast_zero,add_zero] at formula
  exact formula

/-- The named E4 element is obtained from its E3 cycle, not assumed to factor
on E4. Multiplicativity transports the already checked E3 factorization. -/
theorem named_next_d4_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (M : Meaning S P)
    (sourceTransition : Transition S pages P 3 etaDegree rightDegree)
    (leftTransition : Transition S pages P 3 leftDegree rightDegree)
    (rightTransition : Transition S pages P 3 etaDegree rightTargetDegree)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 3 targetDegree)
    (a : PageCycle S 3 etaDegree) (b : PageCycle S 3 rightDegree)
    (x : PageCycle S 3 sourceDegree)
    (named : x.val = P.product.multiply 3 etaDegree rightDegree a.val b.val) :
    S.differential 4 sourceDegree ((pages.nextPage 3 sourceDegree).toNext (Quotient.mk _ x)) = 0 := by
  have same : x = multiplyCycle S P 3 etaDegree rightDegree a b := Subtype.ext named
  have targetName := sourceTransition.formula a b
  rw [← same] at targetName
  exact (congrArg (S.differential 4 sourceDegree) targetName).trans
    (actual_product_d4_zero S pages P M leftTransition rightTransition zeroMeaning _ _)

theorem actual_row2773_d4_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (M : Meaning S P)
    (old : Row2773Leibniz.Actual.Meaning S P) (eta : EtaD3Source.Actual.Meaning S P)
    (h0 : (S.element 3 EtaD3Source.Actual.h0Degree).carrier) (namedH0 : eta.h0 h0 = EtaD3Source.namedH0)
    (sourceTransition : Transition S pages P 3 etaDegree rightDegree)
    (leftTransition : Transition S pages P 3 leftDegree rightDegree)
    (rightTransition : Transition S pages P 3 etaDegree rightTargetDegree)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages 3 targetDegree)
    (a : (S.element 3 etaDegree).carrier) (b : (S.element 3 rightDegree).carrier)
    (x : (S.element 3 sourceDegree).carrier)
    (namedA : old.eta a = Row2773Leibniz.namedEta)
    (namedB : old.right b = Row2773Leibniz.namedRight)
    (namedX : old.source x = Row2773Leibniz.namedSource) :
    S.differential 4 sourceDegree ((pages.nextPage 3 sourceDegree).toNext
      (Quotient.mk _ (⟨x, (Row2773Leibniz.Actual.actual_row2773_d3_zero S P old a b x
        namedA namedB namedX).trans (S.zero_is_zero _ _).symm⟩ : PageCycle S 3 sourceDegree))) = 0 := by
  have acycle := (EtaD3Source.Actual.eta_d3_zero S P eta h0 namedH0 a).trans (S.zero_is_zero _ _).symm
  have bcycle := (Row2773Leibniz.Actual.actual_right_d3_zero S P old b).trans (S.zero_is_zero _ _).symm
  have factor : x = P.product.multiply 3 etaDegree rightDegree a b := by
    apply old.sourceFaithful
    rw [old.sourceProduct,namedA,namedB,Row2773Leibniz.named_product,namedX]
  exact named_next_d4_zero S pages P M sourceTransition leftTransition rightTransition zeroMeaning
    ⟨a,acycle⟩ ⟨b,bcycle⟩ _ factor

#print axioms left_E3_zero
#print axioms right_E3_zero
#print axioms actual_product_d4_zero
#print axioms named_next_d4_zero
#print axioms actual_row2773_d4_zero
end Row2773D4Leibniz.Actual
