import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row3564LeibnizDetector.h04
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[0,0,0,0]]
def column3393 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h04/basis3393.json"
theorem column3393_product : EqualModuloRelations column3393.relations
    (multiply factor [[493]]) column3393.output := by lin_cert using column3393.terms
def column3394 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h04/basis3394.json"
theorem column3394_product : EqualModuloRelations column3394.relations
    (multiply factor [[8,294]]) column3394.output := by lin_cert using column3394.terms
def column3395 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h04/basis3395.json"
theorem column3395_product : EqualModuloRelations column3395.relations
    (multiply factor [[1,1,448]]) column3395.output := by lin_cert using column3395.terms
def column3396 : Bundle := named_bundle% "Row3564LeibnizDetector/products_h04/basis3396.json"
theorem column3396_product : EqualModuloRelations column3396.relations
    (multiply factor [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]) column3396.output := by lin_cert using column3396.terms
def matrix17_143 : Matrix 3 4 := fun i j => ([false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
end Row3564LeibnizDetector.h04
