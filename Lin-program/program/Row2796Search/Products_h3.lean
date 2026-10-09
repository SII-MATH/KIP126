import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row2796Search.h3
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[3]]
def column2794 : Bundle := named_bundle% "Row2796Search/products_h3/basis2794.json"
theorem column2794_product : EqualModuloRelations column2794.relations
    (multiply factor [[415]]) column2794.output := by lin_cert using column2794.terms
def column2795 : Bundle := named_bundle% "Row2796Search/products_h3/basis2795.json"
theorem column2795_product : EqualModuloRelations column2795.relations
    (multiply factor [[2,353]]) column2795.output := by lin_cert using column2795.terms
def column2796 : Bundle := named_bundle% "Row2796Search/products_h3/basis2796.json"
theorem column2796_product : EqualModuloRelations column2796.relations
    (multiply factor [[2,69,75]]) column2796.output := by lin_cert using column2796.terms
def column2797 : Bundle := named_bundle% "Row2796Search/products_h3/basis2797.json"
theorem column2797_product : EqualModuloRelations column2797.relations
    (multiply factor [[0,397]]) column2797.output := by lin_cert using column2797.terms
def column2798 : Bundle := named_bundle% "Row2796Search/products_h3/basis2798.json"
theorem column2798_product : EqualModuloRelations column2798.relations
    (multiply factor [[0,396]]) column2798.output := by lin_cert using column2798.terms
def column2799 : Bundle := named_bundle% "Row2796Search/products_h3/basis2799.json"
theorem column2799_product : EqualModuloRelations column2799.relations
    (multiply factor [[0,0,377]]) column2799.output := by lin_cert using column2799.terms
def column2800 : Bundle := named_bundle% "Row2796Search/products_h3/basis2800.json"
theorem column2800_product : EqualModuloRelations column2800.relations
    (multiply factor [[0,0,0,0,0,0,0,324]]) column2800.output := by lin_cert using column2800.terms
def matrix8_135 : Matrix 2 7 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,true,false,false] : List Bool)[i.val*7+j.val]!
def column2923 : Bundle := named_bundle% "Row2796Search/products_h3/basis2923.json"
theorem column2923_product : EqualModuloRelations column2923.relations
    (multiply factor [[427]]) column2923.output := by lin_cert using column2923.terms
def column2924 : Bundle := named_bundle% "Row2796Search/products_h3/basis2924.json"
theorem column2924_product : EqualModuloRelations column2924.relations
    (multiply factor [[1,413]]) column2924.output := by lin_cert using column2924.terms
def column2925 : Bundle := named_bundle% "Row2796Search/products_h3/basis2925.json"
theorem column2925_product : EqualModuloRelations column2925.relations
    (multiply factor [[1,412]]) column2925.output := by lin_cert using column2925.terms
def column2926 : Bundle := named_bundle% "Row2796Search/products_h3/basis2926.json"
theorem column2926_product : EqualModuloRelations column2926.relations
    (multiply factor [[0,419]]) column2926.output := by lin_cert using column2926.terms
def column2927 : Bundle := named_bundle% "Row2796Search/products_h3/basis2927.json"
theorem column2927_product : EqualModuloRelations column2927.relations
    (multiply factor [[0,0,414]]) column2927.output := by lin_cert using column2927.terms
def column2928 : Bundle := named_bundle% "Row2796Search/products_h3/basis2928.json"
theorem column2928_product : EqualModuloRelations column2928.relations
    (multiply factor [[0,0,0,0,0,0,0,0,0,69,69]]) column2928.output := by lin_cert using column2928.terms
def matrix11_137 : Matrix 3 6 := fun i j => ([false,false,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
end Row2796Search.h3
