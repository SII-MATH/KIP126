import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace NamedPageComparison.Row2858.h0
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[0]]
def column3 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_h0/basis3.json"
theorem column3_product : EqualModuloRelations column3.relations
    (multiply factor [[1]]) column3.output := by lin_cert using column3.terms
def matrix1_2 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def column5 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_h0/basis5.json"
theorem column5_product : EqualModuloRelations column5.relations
    (multiply factor [[0,0,0,0]]) column5.output := by lin_cert using column5.terms
def matrix4_4 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
end NamedPageComparison.Row2858.h0
