import PageTransitionCertificates.InducedMap
import PageTransitionCertificates.Examples
namespace PageTransitionCertificates
open LinearCertificates ResolutionCertificates LinProgramCertificates

-- Swap the two survivor coordinates, keeping boundary/outgoing coordinates fixed.
def swapSurvivors : Matrix 4 4 := fun i j => decide
  ((i.val < 2 ∧ i = j) ∨ (i.val = 2 ∧ j.val = 3) ∨ (i.val = 3 ∧ j.val = 2))
theorem swapCompatible : CompatibleMap outgoing incoming outgoing incoming
    swapSurvivors (identityMatrix 1) (identityMatrix 1) := by lin_cert using ()

def swapOnHomology : Homology outgoing incoming → Homology outgoing incoming :=
  inducedMap swapCompatible

example : coordinateMap comparison comparison swapSurvivors 0 1 = true := by decide
example : coordinateMap comparison comparison swapSurvivors 1 0 = true := by decide
example : coordinateMap comparison comparison swapSurvivors 0 0 = false := by decide

-- A map sending a boundary to a survivor fails the lower square.
def badBoundary : Matrix 4 4 := fun i j => decide (i.val = 2 ∧ j.val = 0)
example : checkCompatibleMap outgoing incoming outgoing incoming badBoundary
    (fun _ _ => false) (fun _ _ => false) = false := by decide

-- A map sending a cycle into the outgoing direction fails the upper square.
def badCycle : Matrix 4 4 := fun i j => decide (i.val = 1 ∧ j.val = 2)
example : checkCompatibleMap outgoing incoming outgoing incoming badCycle
    (fun _ _ => false) (fun _ _ => false) = false := by decide

example (x : Homology outgoing incoming) :
    twoDimensionalEquivalence.toCoordinates (swapOnHomology x) =
    eval (coordinateMap comparison comparison swapSurvivors)
      (twoDimensionalEquivalence.toCoordinates x) :=
  induced_coordinates_all swapCompatible comparison comparison twoDimensional twoDimensional x

#print axioms inducedMap
#print axioms induced_coordinates_all
end PageTransitionCertificates
