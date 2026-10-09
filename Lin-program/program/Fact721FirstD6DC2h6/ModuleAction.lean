import Fact713Row3247Source.ModuleLeibniz
import Row2773D4Leibniz.Descent

namespace Fact721FirstD6DC2h6.ModuleAction
open ManualInputObligations.Reference ActualAdamsProductCycleBridge
abbrev Action := Fact713Row3247Source.ModuleLeibniz.Action

theorem product_cycle (S T : AdamsSpectralSequence) (A : Action S T)
    (r : Nat) (d e : Bidegree) (a : (S.element r d).carrier) (b : (T.element r e).carrier)
    (ha : S.differential r d a = 0) (hb : T.differential r e b = 0) :
    T.differential r (Bidegree.add d e) (A.multiply r d e a b) = 0 := by
  apply (cast_zero_iff T r (adamsTarget_add_left r d e) _).mp
  rw [A.leibniz,ha,hb,A.zero_left,A.zero_right,cast_zero,add_zero]

def multiplyCycle (S T : AdamsSpectralSequence) (A : Action S T)
    (r : Nat) (d e : Bidegree) (a : PageCycle S r d) (b : PageCycle T r e) :
    PageCycle T r (Bidegree.add d e) :=
  ⟨A.multiply r d e a.val b.val,
    (product_cycle S T A r d e a.val b.val
      (a.property.trans (S.zero_is_zero _ _)) (b.property.trans (T.zero_is_zero _ _))).trans
      (T.zero_is_zero _ _).symm⟩

/-- The actual module action commutes with the two homology quotients. -/
structure Transition (S T : AdamsSpectralSequence) (sp : CertifiedAdamsPages S)
    (tp : CertifiedAdamsPages T) (A : Action S T) (r : Nat) (d e : Bidegree) : Prop where
  formula : ∀ (a : PageCycle S r d) (b : PageCycle T r e),
    (tp.nextPage r (Bidegree.add d e)).toNext
      (Quotient.mk _ (multiplyCycle S T A r d e a b)) =
    A.multiply (r+1) d e ((sp.nextPage r d).toNext (Quotient.mk _ a))
      ((tp.nextPage r e).toNext (Quotient.mk _ b))

theorem fixed_zero_next (S T : AdamsSpectralSequence) (sp : CertifiedAdamsPages S)
    (tp : CertifiedAdamsPages T) (A : Action S T) (r : Nat) (d e : Bidegree)
    (transition : Transition S T sp tp A r d e)
    (zeroMeaning : ActualAdamsHomologyCoordinates.Meaning.LocalZeroMeaning tp r (Bidegree.add d e))
    (a : PageCycle S r d) (zeroProduct : ∀ b, A.multiply r d e a.val b = 0)
    (b : (T.element (r+1) e).carrier) :
    A.multiply (r+1) d e ((sp.nextPage r d).toNext (Quotient.mk _ a)) b = 0 := by
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective T tp r e b
  have same : multiplyCycle S T A r d e a q =
      ActualAdamsSystemBridge.zeroCycle T r (Bidegree.add d e) := Subtype.ext (zeroProduct q.val)
  exact (transition.formula a q).symm.trans
    ((congrArg (fun z => (tp.nextPage r (Bidegree.add d e)).toNext (Quotient.mk _ z)) same).trans
      (zeroMeaning.trans (T.zero_is_zero _ _)))

theorem named_next (S T : AdamsSpectralSequence) (sp : CertifiedAdamsPages S)
    (tp : CertifiedAdamsPages T) (A : Action S T) (r : Nat) (d e : Bidegree)
    (transition : Transition S T sp tp A r d e)
    (a : PageCycle S r d) (b : PageCycle T r e) (x : PageCycle T r (Bidegree.add d e))
    (factor : x.val = A.multiply r d e a.val b.val) :
    (tp.nextPage r (Bidegree.add d e)).toNext (Quotient.mk _ x) =
      A.multiply (r+1) d e ((sp.nextPage r d).toNext (Quotient.mk _ a))
        ((tp.nextPage r e).toNext (Quotient.mk _ b)) := by
  have same : x = multiplyCycle S T A r d e a b := Subtype.ext factor
  rw [same]
  exact transition.formula a b

#print axioms product_cycle
#print axioms multiplyCycle
#print axioms fixed_zero_next
#print axioms named_next
end Fact721FirstD6DC2h6.ModuleAction
