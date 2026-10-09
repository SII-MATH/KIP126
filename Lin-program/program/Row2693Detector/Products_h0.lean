import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row2693Detector.h0
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[0]]
def column2690 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2690.json"
theorem column2690_product : EqualModuloRelations column2690.relations
    (multiply factor [[389]]) column2690.output := by lin_cert using column2690.terms
def column2691 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2691.json"
theorem column2691_product : EqualModuloRelations column2691.relations
    (multiply factor [[388]]) column2691.output := by lin_cert using column2691.terms
def column2692 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2692.json"
theorem column2692_product : EqualModuloRelations column2692.relations
    (multiply factor [[1,366]]) column2692.output := by lin_cert using column2692.terms
def column2693 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2693.json"
theorem column2693_product : EqualModuloRelations column2693.relations
    (multiply factor [[0,373]]) column2693.output := by lin_cert using column2693.terms
def column2694 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2694.json"
theorem column2694_product : EqualModuloRelations column2694.relations
    (multiply factor [[0,0,367]]) column2694.output := by lin_cert using column2694.terms
def matrix10_134 : Matrix 5 5 := fun i j => ([false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,true] : List Bool)[i.val*5+j.val]!
def column2842 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2842.json"
theorem column2842_product : EqualModuloRelations column2842.relations
    (multiply factor [[418]]) column2842.output := by lin_cert using column2842.terms
def column2843 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2843.json"
theorem column2843_product : EqualModuloRelations column2843.relations
    (multiply factor [[417]]) column2843.output := by lin_cert using column2843.terms
def column2844 : Bundle := named_bundle% "Row2693Detector/products_h0/basis2844.json"
theorem column2844_product : EqualModuloRelations column2844.relations
    (multiply factor [[0,0,386]]) column2844.output := by lin_cert using column2844.terms
def matrix13_136 : Matrix 3 3 := fun i j => ([false,false,false,true,false,false,false,false,true] : List Bool)[i.val*3+j.val]!
end Row2693Detector.h0
