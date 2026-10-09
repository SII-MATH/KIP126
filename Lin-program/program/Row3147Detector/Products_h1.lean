import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row3147Detector.h1
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[1]]
def column3145 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3145.json"
theorem column3145_product : EqualModuloRelations column3145.relations
    (multiply factor [[9,261]]) column3145.output := by lin_cert using column3145.terms
def column3146 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3146.json"
theorem column3146_product : EqualModuloRelations column3146.relations
    (multiply factor [[1,438]]) column3146.output := by lin_cert using column3146.terms
def column3147 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3147.json"
theorem column3147_product : EqualModuloRelations column3147.relations
    (multiply factor [[0,448]]) column3147.output := by lin_cert using column3147.terms
def column3148 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3148.json"
theorem column3148_product : EqualModuloRelations column3148.relations
    (multiply factor [[0,0,440]]) column3148.output := by lin_cert using column3148.terms
def column3149 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3149.json"
theorem column3149_product : EqualModuloRelations column3149.relations
    (multiply factor [[0,0,439]]) column3149.output := by lin_cert using column3149.terms
def matrix16_140 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def column3313 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3313.json"
theorem column3313_product : EqualModuloRelations column3313.relations
    (multiply factor [[9,13,13,95]]) column3313.output := by lin_cert using column3313.terms
def column3314 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3314.json"
theorem column3314_product : EqualModuloRelations column3314.relations
    (multiply factor [[0,9,267]]) column3314.output := by lin_cert using column3314.terms
def column3315 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3315.json"
theorem column3315_product : EqualModuloRelations column3315.relations
    (multiply factor [[0,0,3,359]]) column3315.output := by lin_cert using column3315.terms
def column3316 : Bundle := named_bundle% "Row3147Detector/products_h1/basis3316.json"
theorem column3316_product : EqualModuloRelations column3316.relations
    (multiply factor [[0,0,0,0,0,0,418]]) column3316.output := by lin_cert using column3316.terms
def matrix19_142 : Matrix 2 4 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
end Row3147Detector.h1
