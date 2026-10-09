import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row3564LeibnizDetector.h1
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[1]]
def column3393 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h1/basis3393.json"
theorem column3393_product : EqualModuloRelations column3393.relations
    (multiply factor [[493]]) column3393.output := by lin_cert using column3393.terms
def column3394 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h1/basis3394.json"
theorem column3394_product : EqualModuloRelations column3394.relations
    (multiply factor [[8,294]]) column3394.output := by lin_cert using column3394.terms
def column3395 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h1/basis3395.json"
theorem column3395_product : EqualModuloRelations column3395.relations
    (multiply factor [[1,1,448]]) column3395.output := by lin_cert using column3395.terms
def column3396 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h1/basis3396.json"
theorem column3396_product : EqualModuloRelations column3396.relations
    (multiply factor [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]) column3396.output := by lin_cert using column3396.terms
def matrix17_143 : Matrix 5 4 := fun i j => ([false,false,false,false,true,false,false,false,false,false,false,false,false,true,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def column3556 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h1/basis3556.json"
theorem column3556_product : EqualModuloRelations column3556.relations
    (multiply factor [[510]]) column3556.output := by lin_cert using column3556.terms
def column3557 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h1/basis3557.json"
theorem column3557_product : EqualModuloRelations column3557.relations
    (multiply factor [[0,8,13,188]]) column3557.output := by lin_cert using column3557.terms
def column3558 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h1/basis3558.json"
theorem column3558_product : EqualModuloRelations column3558.relations
    (multiply factor [[0,0,0,0,0,0,449]]) column3558.output := by lin_cert using column3558.terms
def matrix20_145 : Matrix 3 3 := fun i j => ([false,false,false,true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
end Row3564LeibnizDetector.h1
