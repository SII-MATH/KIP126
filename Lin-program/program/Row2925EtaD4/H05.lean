import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row2925EtaD4.H05
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[0,0,0,0,0]]
def column2923 : Bundle := named_bundle% "Row2925EtaD4/products_h05/basis2923.json"
theorem column2923_product : EqualModuloRelations column2923.relations
    (multiply factor [[427]]) column2923.output := by lin_cert using column2923.terms
def column2924 : Bundle := named_bundle% "Row2925EtaD4/products_h05/basis2924.json"
theorem column2924_product : EqualModuloRelations column2924.relations
    (multiply factor [[1,413]]) column2924.output := by lin_cert using column2924.terms
def column2925 : Bundle := named_bundle% "Row2925EtaD4/products_h05/basis2925.json"
theorem column2925_product : EqualModuloRelations column2925.relations
    (multiply factor [[1,412]]) column2925.output := by lin_cert using column2925.terms
def column2926 : Bundle := named_bundle% "Row2925EtaD4/products_h05/basis2926.json"
theorem column2926_product : EqualModuloRelations column2926.relations
    (multiply factor [[0,419]]) column2926.output := by lin_cert using column2926.terms
def column2927 : Bundle := named_bundle% "Row2925EtaD4/products_h05/basis2927.json"
theorem column2927_product : EqualModuloRelations column2927.relations
    (multiply factor [[0,0,414]]) column2927.output := by lin_cert using column2927.terms
def column2928 : Bundle := named_bundle% "Row2925EtaD4/products_h05/basis2928.json"
theorem column2928_product : EqualModuloRelations column2928.relations
    (multiply factor [[0,0,0,0,0,0,0,0,0,69,69]]) column2928.output := by lin_cert using column2928.terms
def matrix11_137 : Matrix 3 6 := fun i j => ([false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true] : List Bool)[i.val*6+j.val]!
#print axioms column2924_product
end Row2925EtaD4.H05
