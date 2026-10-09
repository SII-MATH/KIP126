import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace BranchReplayCertificates.Products
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[31]]
def column3748 : Bundle := named_bundle% "BranchReplayCertificates/products/basis3748.json"
theorem column3748_product : EqualModuloRelations column3748.relations
    (multiply factor [[530]]) column3748.output := by lin_cert using column3748.terms
def column3749 : Bundle := named_bundle% "BranchReplayCertificates/products/basis3749.json"
theorem column3749_product : EqualModuloRelations column3749.relations
    (multiply factor [[1,510]]) column3749.output := by lin_cert using column3749.terms
def column3750 : Bundle := named_bundle% "BranchReplayCertificates/products/basis3750.json"
theorem column3750_product : EqualModuloRelations column3750.relations
    (multiply factor [[0,0,0,500]]) column3750.output := by lin_cert using column3750.terms
def matrix21_147 : Matrix 5 3 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def column3992 : Bundle := named_bundle% "BranchReplayCertificates/products/basis3992.json"
theorem column3992_product : EqualModuloRelations column3992.relations
    (multiply factor [[559]]) column3992.output := by lin_cert using column3992.terms
def column3993 : Bundle := named_bundle% "BranchReplayCertificates/products/basis3993.json"
theorem column3993_product : EqualModuloRelations column3993.relations
    (multiply factor [[558]]) column3993.output := by lin_cert using column3993.terms
def column3994 : Bundle := named_bundle% "BranchReplayCertificates/products/basis3994.json"
theorem column3994_product : EqualModuloRelations column3994.relations
    (multiply factor [[13,13,13,13,51]]) column3994.output := by lin_cert using column3994.terms
def column3995 : Bundle := named_bundle% "BranchReplayCertificates/products/basis3995.json"
theorem column3995_product : EqualModuloRelations column3995.relations
    (multiply factor [[8,8,9,13,80]]) column3995.output := by lin_cert using column3995.terms
def matrix25_150 : Matrix 3 4 := fun i j => ([true,false,false,false,false,false,true,false,false,false,false,true] : List Bool)[i.val*4+j.val]!
end BranchReplayCertificates.Products
