import ExtComplexCertificates.Presentation
import MilnorCertificates.Examples

namespace ExtComplexCertificates.MilnorAction
open LinearCertificates ResolutionCertificates

/-- Degree <= 1 has basis dual to 1 and xi_1. -/
def window : MilnorCertificates.Window := ⟨1, 1⟩
def unit : MilnorCertificates.Polynomial := [[0]]
def sqOne : MilnorCertificates.Polynomial := [[1]]

theorem sqOne_unit : MilnorCertificates.IsMilnorProduct window sqOne unit sqOne := by
  milnor_cert using MilnorCertificates.generate window

theorem sqOne_square : MilnorCertificates.IsMilnorProduct window sqOne sqOne [] := by
  milnor_cert using MilnorCertificates.generate window

/-- The square vanishes also in a degree-three window, which explicitly tests
the degree-two coefficient. No general unbounded support theorem is claimed. -/
theorem sqOne_square_degree_three :
    MilnorCertificates.IsMilnorProduct MilnorCertificates.smallWindow [[1,0]] [[1,0]] [] :=
  MilnorCertificates.squareOne

/-- The columns are the two certified products Sq1*1 and Sq1*Sq1, paired
with the two basis monomials. Thus the action is computed from Milnor data. -/
def productColumns : Fin 2 → MilnorCertificates.Polynomial :=
  fun j => if j.val = 0 then sqOne else []
def basisMonomial : Fin 2 → MilnorCertificates.Monomial := fun i => [i.val]
def sqOneMatrix : Matrix 2 2 := fun i j =>
  MilnorCertificates.coefficient (productColumns j) (basisMonomial i)

theorem columns_certified (j : Fin 2) :
    MilnorCertificates.IsMilnorProduct window sqOne
      (if j.val = 0 then unit else sqOne) (productColumns j) := by
  by_cases hj : j.val = 0
  · simpa [productColumns, hj] using sqOne_unit
  · simpa [productColumns, hj] using sqOne_square

/-- Each matrix entry is the dual-coproduct pairing from the checked Milnor
product semantics, not an independently asserted multiplication table. -/
theorem matrix_entry_semantics (i j : Fin 2) :
    sqOneMatrix i j = MilnorCertificates.pairTensor sqOne
      (if j.val = 0 then unit else sqOne)
      (MilnorCertificates.coproduct window.rank (basisMonomial i)) := by
  apply (columns_certified j).2.2.2
  have h : ∀ i : Fin 2, basisMonomial i ∈ MilnorCertificates.basis window.rank window.degree := by decide
  exact h i

def actions : Actions 1 2 := fun _ => sqOneMatrix

/-- The supplied operator satisfies q^2=0. This is presentation-action data;
an abstract F2<q>/(q^2) module structure is not constructed here. -/
theorem action_relation : SatisfiesPresentation actions [[[0, 0]]] := by
  lin_cert using ()

theorem action_matrix_nonzero : sqOneMatrix 1 0 = true := by decide

#print axioms matrix_entry_semantics
#print axioms action_relation

end ExtComplexCertificates.MilnorAction
