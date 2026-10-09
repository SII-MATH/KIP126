import ExtComplexCertificates.Presentation

namespace ExtComplexCertificates
open LinearCertificates ResolutionCertificates

def upper : Matrix 2 2 := fun i j => decide (i.val = 0 ∧ j.val = 1)
def lower : Matrix 2 2 := fun i j => decide (i.val = 1 ∧ j.val = 0)
def noncommutingActions : Actions 2 2 := fun g => if g.val = 0 then upper else lower

/-- Each generator squares to zero, but they do not commute. -/
def squareRelations : List (WordPolynomial 2) := [[[0,0]], [[1,1]]]

example : SatisfiesPresentation noncommutingActions squareRelations := by
  lin_cert using ()

example : checkPresentation noncommutingActions [[[0,1],[1,0]]] = false := by decide

example (p : WordPolynomial 2) (x : Vec 2) :
    eval (identityMatrix 2) (eval (polynomialMatrix noncommutingActions p) x) =
    eval (polynomialMatrix noncommutingActions p) (eval (identityMatrix 2) x) := by
  apply equivariant_polynomial
  lin_cert using ()

#print axioms ExtComplexCertificates.checkPresentation_sound
#print axioms ExtComplexCertificates.equivariant_polynomial

end ExtComplexCertificates
