import Fact762SphereGDetection.Data
import Fact762SphereGDetection.Actual

namespace Fact762SphereGDetection.Relations
open NamedElementCertificates ManualInputObligations.Reference LinearCertificates
open Row3151ActualTransport

variable {R : Type} [CommRing R] [CharP R 2]

theorem g_annihilator (v : Nat → R)
    (relations : ∀ rel ∈ Data.p0.relations, evaluate v rel = 0) :
    evaluate v [[13]] * evaluate v [[1,7,275]] = 0 := by
  have h := equalModulo_evaluate v _ _ _ Data.p0_valid relations
  rw [evaluate_multiply,Data.p0_output] at h
  exact h

theorem correction_annihilator (v : Nat → R)
    (relations : ∀ rel ∈ Data.p1.relations, evaluate v rel = 0) :
    evaluate v [[15]] * evaluate v [[1,7,275]] = 0 := by
  have h := equalModulo_evaluate v _ _ _ Data.p1_valid relations
  rw [evaluate_multiply,Data.p1_output] at h
  exact h

/-- The mathematical interpretation is explicit at E2. The named product
value is computed from the checked relation certificate. -/
structure Interpretation (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (R : Type) [CommRing R] [CharP R 2] where
  valuation : Nat → R
  source : (S.element 2 Actual.sourceDegree).carrier → R
  g : (S.element 2 Actual.factorDegree).carrier → R
  correction : (S.element 2 Actual.factorD5Degree).carrier → R
  product : (S.element 2 (Bidegree.add Actual.factorDegree Actual.sourceDegree)).carrier → R
  correctionProduct : (S.element 2 (Bidegree.add Actual.factorD5Degree Actual.sourceDegree)).carrier → R
  productFaithful : Function.Injective product
  correctionFaithful : Function.Injective correctionProduct
  productZero : product 0 = 0
  correctionZero : correctionProduct 0 = 0
  gCoordinates : Coordinates S 2 Actual.factorDegree 1
  correctionCoordinates : Coordinates S 2 Actual.factorD5Degree 1
  gValues : ∀ x, g x = if gCoordinates.equivalence x 0 then evaluate valuation [[13]] else 0
  correctionValues : ∀ x, correction x = if correctionCoordinates.equivalence x 0 then evaluate valuation [[15]] else 0
  productFormula : ∀ x y, product (P.product.multiply 2 Actual.factorDegree Actual.sourceDegree x y) = g x * source y
  correctionFormula : ∀ x y, correctionProduct (P.product.multiply 2 Actual.factorD5Degree Actual.sourceDegree x y) = correction x * source y
  gRelations : ∀ rel ∈ Data.p0.relations, evaluate valuation rel = 0
  correctionRelations : ∀ rel ∈ Data.p1.relations, evaluate valuation rel = 0

variable {S : AdamsSpectralSequence} {P : CertifiedAdamsProduct S}

theorem initial_product (M : Interpretation S P R) (x : (S.element 2 Actual.sourceDegree).carrier)
    (name : M.source x = evaluate M.valuation [[1,7,275]])
    (g : (S.element 2 Actual.factorDegree).carrier) :
    P.product.multiply 2 Actual.factorDegree Actual.sourceDegree g x = 0 := by
  apply M.productFaithful
  rw [M.productFormula,M.productZero,name,M.gValues]
  split
  · exact g_annihilator M.valuation M.gRelations
  · exact zero_mul _

theorem initial_correction (M : Interpretation S P R) (x : (S.element 2 Actual.sourceDegree).carrier)
    (name : M.source x = evaluate M.valuation [[1,7,275]])
    (g : (S.element 2 Actual.factorD5Degree).carrier) :
    P.product.multiply 2 Actual.factorD5Degree Actual.sourceDegree g x = 0 := by
  apply M.correctionFaithful
  rw [M.correctionFormula,M.correctionZero,name,M.correctionValues]
  split
  · exact correction_annihilator M.valuation M.correctionRelations
  · exact zero_mul _

#print axioms g_annihilator
#print axioms correction_annihilator
#print axioms initial_product
#print axioms initial_correction
end Fact762SphereGDetection.Relations
