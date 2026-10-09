import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row2576Detector.h2
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[2]]
def column2576 : Bundle := named_bundle% "Row2576Detector/products_h2/basis2576.json"
theorem column2576_product : EqualModuloRelations column2576.relations
    (multiply factor [[1,1,69,69]]) column2576.output := by lin_cert using column2576.terms
def matrix4_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def column2706 : Bundle := named_bundle% "Row2576Detector/products_h2/basis2706.json"
theorem column2706_product : EqualModuloRelations column2706.relations
    (multiply factor [[397]]) column2706.output := by lin_cert using column2706.terms
def column2707 : Bundle := named_bundle% "Row2576Detector/products_h2/basis2707.json"
theorem column2707_product : EqualModuloRelations column2707.relations
    (multiply factor [[396]]) column2707.output := by lin_cert using column2707.terms
def column2708 : Bundle := named_bundle% "Row2576Detector/products_h2/basis2708.json"
theorem column2708_product : EqualModuloRelations column2708.relations
    (multiply factor [[1,368]]) column2708.output := by lin_cert using column2708.terms
def column2709 : Bundle := named_bundle% "Row2576Detector/products_h2/basis2709.json"
theorem column2709_product : EqualModuloRelations column2709.relations
    (multiply factor [[0,377]]) column2709.output := by lin_cert using column2709.terms
def column2710 : Bundle := named_bundle% "Row2576Detector/products_h2/basis2710.json"
theorem column2710_product : EqualModuloRelations column2710.relations
    (multiply factor [[0,0,0,0,0,0,324]]) column2710.output := by lin_cert using column2710.terms
def matrix7_134 : Matrix 2 5 := fun i j => ([false,false,false,false,false,false,true,false,false,false] : List Bool)[i.val*5+j.val]!
end Row2576Detector.h2
