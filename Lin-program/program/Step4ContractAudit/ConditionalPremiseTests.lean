import AggregateThreeProductConditional.Matches

namespace Step4ContractAudit.ConditionalPremiseTests
open LinearCertificates PageTransitionCertificates
open Row3325Detector.Quotient
open AggregateThreeProductConditional.ThreeProducts

def nonzeroTarget : Q detect1.right :=
  targetCoordinates.fromCoordinates (fun i => i.val == 0)

theorem nonzeroTarget_ne_zero : nonzeroTarget ≠ z detect1.right := by
  intro h
  have coordinate := congrArg targetCoordinates.toCoordinates h
  rw [nonzeroTarget, targetCoordinates.rightInverse] at coordinate
  have atZero := congrFun coordinate ⟨0, by decide⟩
  contradiction

def arbitraryDifferential : Q ann1.right → Q detect1.right := fun _ => nonzeroTarget

/-- The matched column theorem cannot discard its local zero-preservation
and Leibniz premises: an arbitrary function need not match the zero column. -/
theorem arbitrary_differential_does_not_match : ¬ ColumnMatches arbitraryDifferential := by
  intro h
  exact nonzeroTarget_ne_zero h.1

example : True := by
  fail_if_success have : ColumnMatches arbitraryDifferential := by lin_cert using ()
  trivial

/-- Reuses all six explicit premises of the actual three-product bridge.
This is a conditional statement, not a certificate producing those premises. -/
theorem complete_local_premises_required
    (d : Q ann1.right → Q detect1.right)
    (d1 : Q ann1.target → Q detect1.target)
    (d8 : Q ann8.target → Q detect8.target)
    (d13 : Q ann13.target → Q detect13.target)
    (z1 : d1 (z ann1.target) = z detect1.target)
    (z8 : d8 (z ann8.target) = z detect8.target)
    (z13 : d13 (z ann13.target) = z detect13.target)
    (l1 : ∀ x, d1 (annMap1 x) = detectMap1 (d x))
    (l8 : ∀ x, d8 (annMap8 x) = detectMap8 (d x))
    (l13 : ∀ x, d13 (annMap13 x) = detectMap13 (d x)) : ColumnMatches d :=
  matched d d1 d8 d13 z1 z8 z13 l1 l8 l13

#print axioms arbitrary_differential_does_not_match
#print axioms complete_local_premises_required
end Step4ContractAudit.ConditionalPremiseTests
