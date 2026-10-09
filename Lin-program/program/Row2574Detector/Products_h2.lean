import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row2574Detector.h2
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[2]]
def column2573 : Bundle := named_bundle% "Row2574Detector/products_h2/basis2573.json"
theorem column2573_product : EqualModuloRelations column2573.relations
    (multiply factor [[368]]) column2573.output := by lin_cert using column2573.terms
def column2574 : Bundle := named_bundle% "Row2574Detector/products_h2/basis2574.json"
theorem column2574_product : EqualModuloRelations column2574.relations
    (multiply factor [[0,0,0,0,69,69]]) column2574.output := by lin_cert using column2574.terms
def matrix6_132 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def column2695 : Bundle := named_bundle% "Row2574Detector/products_h2/basis2695.json"
theorem column2695_product : EqualModuloRelations column2695.relations
    (multiply factor [[391]]) column2695.output := by lin_cert using column2695.terms
def column2696 : Bundle := named_bundle% "Row2574Detector/products_h2/basis2696.json"
theorem column2696_product : EqualModuloRelations column2696.relations
    (multiply factor [[390]]) column2696.output := by lin_cert using column2696.terms
def column2697 : Bundle := named_bundle% "Row2574Detector/products_h2/basis2697.json"
theorem column2697_product : EqualModuloRelations column2697.relations
    (multiply factor [[69,82]]) column2697.output := by lin_cert using column2697.terms
def column2698 : Bundle := named_bundle% "Row2574Detector/products_h2/basis2698.json"
theorem column2698_product : EqualModuloRelations column2698.relations
    (multiply factor [[18,190]]) column2698.output := by lin_cert using column2698.terms
def column2699 : Bundle := named_bundle% "Row2574Detector/products_h2/basis2699.json"
theorem column2699_product : EqualModuloRelations column2699.relations
    (multiply factor [[0,375]]) column2699.output := by lin_cert using column2699.terms
def matrix9_134 : Matrix 4 5 := fun i j => ([false,false,false,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false,true,false] : List Bool)[i.val*5+j.val]!
end Row2574Detector.h2
