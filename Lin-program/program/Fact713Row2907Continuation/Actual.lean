import Fact713Row2907Continuation.CoordinateBridge

namespace Fact713Row2907Continuation.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open ActualAdamsHomologyCoordinates.Meaning
open Row2907PDeltaDetection Row2907PDeltaDetection.Descent Row2907PDeltaDetection.Branches
open Row2907TargetProduct Row2907TargetProduct.Actual
open CoordinateBridge

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {W : Witness S pages P}

noncomputable def current (T : TargetMeaning W r false) : Coordinates S 3 targetDegree 2 where
  equivalence := T.current.equivalence.trans currentEquiv
  zero_value := (congrArg currentEquiv T.current.zero_value).trans (by decide)

noncomputable def complete (T : TargetMeaning W r false) :
    ActualAdamsHomologyCoordinates.Meaning S 3 targetDegree (staircaseComparison r) (current T) where
  current_add := by
    intro x y
    exact (congrArg currentEquiv (T.complete.current_add x y)).trans
      (eval_add CoordinateBridge.swap _ _)
  outgoingCoordinates := T.complete.outgoingCoordinates
  outgoing_injective := T.complete.outgoing_injective
  outgoing_zero := T.complete.outgoing_zero
  outgoing := fun x => (T.complete.outgoing x).trans (outgoing_all r _)
  incomingCoordinates := T.complete.incomingCoordinates
  incoming_surjective := T.complete.incoming_surjective
  incoming := fun x => (congrArg currentEquiv (T.complete.incoming x)).trans (incoming_all r _)

/-- The entire E4 target chart is transported by the checked quotient
basis change. It is not identified from dimensions or a named value. -/
noncomputable def page4 (T : TargetMeaning W r false) :
    Coordinates S 4 targetDegree (Row3136FamilyBranches.source r false).h where
  equivalence := T.page4.equivalence.trans (nextEquiv r)
  zero_value := (congrArg (nextEquiv r) T.page4.zero_value).trans (zero_next r)

theorem quotient_all (T : TargetMeaning W r false) (x : PageCycle S 3 targetDegree) :
    (page4 T).equivalence ((pages.nextPage 3 targetDegree).toNext (Quotient.mk _ x)) =
      eval (staircaseComparison r).comparison.projection
        ((current T).equivalence x.val) :=
  (congrArg (nextEquiv r)
    (T.complete.nextCoordinates_quotient pages (comparison_valid r false) T.zeroMeaning x)).trans
      (whole_projection r _)

theorem constructed_coordinates_all (T : TargetMeaning W r false)
    (x : (S.element 4 targetDegree).carrier) :
    ((complete T).nextCoordinates pages (staircaseComparison_valid r) T.zeroMeaning).equivalence x =
      (page4 T).equivalence x := by
  obtain ⟨cycle,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S pages 3 targetDegree x
  exact ((complete T).nextCoordinates_quotient pages
    (staircaseComparison_valid r) T.zeroMeaning cycle).trans (quotient_all T cycle).symm

/-- The complete E3 current coordinate equation is preserved under the
same swap used in the inherited family. -/
theorem current_binding (T : TargetMeaning W r false)
    (x : (S.element 3 targetDegree).carrier) :
    (current T).equivalence x = currentEquiv (targetCoordinates.toCoordinates (T.meaning x)) :=
  congrArg currentEquiv (T.binding x)

noncomputable def coefficient (T : TargetMeaning W r false) : Bool :=
  match r,T with
  | false,T => Row2907D4Candidates.Actual.remainingCoefficient T
  | true,_ => false

theorem whole_column_in_staircase (T : TargetMeaning W r false)
    (x : (S.element 4 sourceDegree).carrier) :
    (page4 T).equivalence (S.differential 4 sourceDegree x) =
      eval (staircaseColumn r (coefficient T)) (W.data.source4.equivalence x) := by
  cases r
  · exact (congrArg (nextEquiv false) (Row2907D4Candidates.Actual.whole_column T x)).trans
      (zero_branch_column _ _)
  · exact (congrArg (nextEquiv true)
      (Row2907TargetProduct.Branches.residual_whole_d4 T x)).trans (residual_column _)

#print axioms current
#print axioms complete
#print axioms page4
#print axioms quotient_all
#print axioms constructed_coordinates_all
#print axioms current_binding
#print axioms whole_column_in_staircase
end Fact713Row2907Continuation.Actual
