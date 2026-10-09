import PageTransitionCertificates.Quotient

namespace PageTransitionCertificates
open LinearCertificates ResolutionCertificates LinProgramCertificates

-- One boundary, one outgoing coordinate, and two independent homology classes.
def outgoing : Matrix 1 4 := fun _ j => decide (j.val = 1)
def incoming : Matrix 4 1 := fun i _ => decide (i.val = 0)
def comparison : Comparison 1 4 1 2 where
  inclusion := fun i j => decide (i.val = j.val + 2)
  projection := fun i j => decide (j.val = i.val + 2)
  up := fun _ j => decide (j.val = 0)
  down := fun i _ => decide (i.val = 1)

theorem twoDimensional : HomologyComparison outgoing incoming comparison := by
  lin_cert using ()

def twoDimensionalEquivalence : HomologyEquivalence outgoing incoming 2 :=
  homologyEquivalence outgoing incoming comparison twoDimensional

-- Removing the inclusion loses both survivor coordinates.
example : checkComparison outgoing incoming
    { comparison with inclusion := fun _ _ => false } = false := by decide

-- Removing the boundary homotopy invalidates the identity even though pi = I.
example : checkComparison outgoing incoming
    { comparison with up := fun _ _ => false } = false := by decide

-- Missing one homology direction also fails.
example : checkComparison outgoing incoming
    { comparison with projection := fun i j => decide (i.val = 0 ∧ j.val = 2) } = false := by decide

def emptyComparison : Comparison 0 0 0 0 :=
  ⟨fun _ _ => false, fun _ _ => false, fun _ _ => false, fun _ _ => false⟩
example : HomologyComparison (fun _ _ => false) (fun _ _ => false) emptyComparison := by
  lin_cert using ()

#print axioms checkComparison_sound
#print axioms homologyEquivalence
end PageTransitionCertificates
