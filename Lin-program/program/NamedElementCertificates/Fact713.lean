import NamedElementCertificates.Generated
import LinearCertificates.Checker
namespace NamedElementCertificates.Fact713
open LinearCertificates
def differential : Matrix 5 2 := fun i j => ([false, false, false, false, false, true, false, false, false, true] : List Bool)[i.val * 2 + j.val]!
def source : Vec 2 := fun i => ([false, true] : List Bool)[i.val]!
def target : Vec 5 := fun i => ([false, false, true, false, true] : List Bool)[i.val]!
theorem differential_value : eval differential source = target := by
  funext i
  have h : ∀ i, eval differential source i = target i := by decide
  exact h i

/-- Decode a coordinate vector using the exact ordered monomial basis. -/
def decodeCoordinates (basis : List Polynomial) (x : Vec basis.length) : Polynomial :=
  (List.finRange basis.length).flatMap fun i => if x i then basis[i] else []

abbrev sourceBasis : List Polynomial := [[[376]], [[375]]]
abbrev targetBasis : List Polynomial := [[[389]], [[388]], [[1, 366]], [[0, 373]], [[0, 0, 367]]]

theorem source_expression_coordinates :
    decodeCoordinates sourceBasis source = namedCase6.output := by decide

theorem target_expression_coordinates :
    EqualModuloRelations [] (decodeCoordinates targetBasis target) namedCase7.output := by
  lin_cert using ([] : List Term)

/-- The displayed target expression and decoded differential agree modulo the
    explicitly supplied relations. No Ext comparison is hidden here. -/
theorem named_differential_value :
    EqualModuloRelations namedCase7.relations namedCase7.input
      (decodeCoordinates targetBasis (eval differential source)) := by
  have h : (eval differential source : Vec 5) = target := differential_value
  simp only [h]
  lin_cert using namedCase7.terms

end NamedElementCertificates.Fact713
