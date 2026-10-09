import ActualAdamsProductTraceBridge.Basic
import ActualAdamsHomologyCoordinates.Basic

namespace Row2773D4Leibniz.Descent
open ManualInputObligations.Reference ActualAdamsProductTraceBridge

theorem next_surjective (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (d : Bidegree) (y : (S.element (r+1) d).carrier) :
    ∃ x : PageCycle S r d, (pages.nextPage r d).toNext (Quotient.mk _ x) = y := by
  have represent (q : PageHomology S r d) :
      ∃ x : PageCycle S r d, (pages.nextPage r d).toNext (Quotient.mk _ x) =
        (pages.nextPage r d).toNext q := by
    induction q using Quotient.inductionOn with
    | h x => exact ⟨x,rfl⟩
  obtain ⟨x,hx⟩ := represent ((pages.nextPage r d).fromNext y)
  exact ⟨x,hx.trans ((pages.nextPage r d).rightInverse y)⟩

/-- Multiplicativity and surjectivity of the actual homology identification
transport a whole zero product to the following page. -/
theorem whole_zero_next (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (r : Nat) (d e : Bidegree)
    (transition : Transition S pages P r d e)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning pages r (Bidegree.add d e))
    (zeroProduct : ∀ a b, P.product.multiply r d e a b = 0)
    (a : (S.element (r+1) d).carrier) (b : (S.element (r+1) e).carrier) :
    P.product.multiply (r+1) d e a b = 0 := by
  obtain ⟨x,rfl⟩ := next_surjective S pages r d a
  obtain ⟨y,rfl⟩ := next_surjective S pages r e b
  have productZero : multiplyCycle S P r d e x y =
      ActualAdamsSystemBridge.zeroCycle S r (Bidegree.add d e) := by
    apply Subtype.ext
    exact zeroProduct x.val y.val
  exact (transition.formula x y).symm.trans
    ((congrArg (fun z => (pages.nextPage r (Bidegree.add d e)).toNext (Quotient.mk _ z))
      productZero).trans (zeroMeaning.trans (S.zero_is_zero _ _)))

#print axioms next_surjective
#print axioms whole_zero_next
end Row2773D4Leibniz.Descent
