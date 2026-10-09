import PageTransitionCertificates.Quotient

namespace BranchReplayCertificates.QuotientConclusion
open LinearCertificates PageTransitionCertificates

/-- Target local basis 0,1,2,3 at (s,t)=(25,150); cycle constraint x0=x1. -/
def outgoing : Matrix 1 4 := fun _ j => j.val < 2

/-- These two boundary vectors are explicit INPUTS, not inferred from T rows. -/
def incoming (optional : Bool) : Matrix 4 2 := fun i j =>
  if j.val = 0 then i.val == 3
  else if i.val < 3 then true else optional

def comparison (optional : Bool) : Comparison 1 4 2 1 where
  inclusion := fun i _ => i.val == 2
  projection := fun _ j => j.val == 0 || j.val == 2
  up := fun i j => if i.val = 0 then j.val == 3 || (optional && j.val == 0)
                  else j.val == 0
  down := fun i _ => i.val == 1

theorem comparison_checked (optional : Bool) :
    checkComparison outgoing (incoming optional) (comparison optional) = true := by
  cases optional <;> decide

theorem whole_quotient_comparison (optional : Bool) :
    HomologyComparison outgoing (incoming optional) (comparison optional) :=
  checkComparison_sound _ _ _ (comparison_checked optional)

/-- Equivalence of the entire cycle/boundary quotient with one F2 coordinate. -/
def whole_quotient (optional : Bool) : HomologyEquivalence outgoing (incoming optional) 1 :=
  homologyEquivalence _ _ _ (whole_quotient_comparison optional)

def survivor : Vec 4 := fun i => i.val == 2

theorem survivor_cycle : InKernel outgoing survivor := by
  lin_cert using ()

theorem survivor_not_boundary (optional : Bool) : ¬ InImage (incoming optional) survivor := by
  apply checkNotImage_sound _ _ (fun i => i.val == 0 || i.val == 2)
  cases optional <;> decide

theorem survivor_generates (optional : Bool) (x : Vec 4) (hx : InKernel outgoing x) :
    InImage (incoming optional)
      (add x (eval (comparison optional).inclusion
        (eval (comparison optional).projection x))) :=
  (whole_quotient_comparison optional).2.2.2.1 x hx

-- Without either supplied boundary, this comparison no longer certifies a 1D quotient.
example : checkComparison outgoing
    (fun i j => if j.val = 0 then incoming false i j else false)
    (comparison false) = false := by decide

example : checkComparison outgoing
    (fun i j => if j.val = 1 then incoming false i j else false)
    (comparison false) = false := by decide

end BranchReplayCertificates.QuotientConclusion
