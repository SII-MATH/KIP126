import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row3325Detector.h1
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[1]]
def column3324 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3324.json"
theorem column3324_product : EqualModuloRelations column3324.relations
    (multiply factor [[481]]) column3324.output := by lin_cert using column3324.terms
def column3325 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3325.json"
theorem column3325_product : EqualModuloRelations column3325.relations
    (multiply factor [[69,112]]) column3325.output := by lin_cert using column3325.terms
def column3326 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3326.json"
theorem column3326_product : EqualModuloRelations column3326.relations
    (multiply factor [[2,439]]) column3326.output := by lin_cert using column3326.terms
def column3327 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3327.json"
theorem column3327_product : EqualModuloRelations column3327.relations
    (multiply factor [[1,457]]) column3327.output := by lin_cert using column3327.terms
def column3328 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3328.json"
theorem column3328_product : EqualModuloRelations column3328.relations
    (multiply factor [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,324]]) column3328.output := by lin_cert using column3328.terms
def matrix15_142 : Matrix 4 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def column3489 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3489.json"
theorem column3489_product : EqualModuloRelations column3489.relations
    (multiply factor [[501]]) column3489.output := by lin_cert using column3489.terms
def column3490 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3490.json"
theorem column3490_product : EqualModuloRelations column3490.relations
    (multiply factor [[500]]) column3490.output := by lin_cert using column3490.terms
def column3491 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3491.json"
theorem column3491_product : EqualModuloRelations column3491.relations
    (multiply factor [[13,267]]) column3491.output := by lin_cert using column3491.terms
def column3492 : Bundle := named_bundle% "Row3325Detector/products_h1/basis3492.json"
theorem column3492_product : EqualModuloRelations column3492.relations
    (multiply factor [[9,286]]) column3492.output := by lin_cert using column3492.terms
def matrix18_144 : Matrix 5 4 := fun i j => ([false,false,false,false,true,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
end Row3325Detector.h1
