import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace NamedPageComparison.Row2858.g
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[13]]
def column2855 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis2855.json"
theorem column2855_product : EqualModuloRelations column2855.relations
    (multiply factor [[419]]) column2855.output := by lin_cert using column2855.terms
def column2856 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis2856.json"
theorem column2856_product : EqualModuloRelations column2856.relations
    (multiply factor [[0,414]]) column2856.output := by lin_cert using column2856.terms
def column2857 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis2857.json"
theorem column2857_product : EqualModuloRelations column2857.relations
    (multiply factor [[0,0,394]]) column2857.output := by lin_cert using column2857.terms
def column2858 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis2858.json"
theorem column2858_product : EqualModuloRelations column2858.relations
    (multiply factor [[0,0,392]]) column2858.output := by lin_cert using column2858.terms
def column2859 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis2859.json"
theorem column2859_product : EqualModuloRelations column2859.relations
    (multiply factor [[0,0,0,0,0,0,0,0,69,69]]) column2859.output := by lin_cert using column2859.terms
def matrix10_136 : Matrix 2 5 := fun i j => ([false,false,false,false,false,true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def column3008 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis3008.json"
theorem column3008_product : EqualModuloRelations column3008.relations
    (multiply factor [[24,190]]) column3008.output := by lin_cert using column3008.terms
def column3009 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis3009.json"
theorem column3009_product : EqualModuloRelations column3009.relations
    (multiply factor [[3,335]]) column3009.output := by lin_cert using column3009.terms
def column3010 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis3010.json"
theorem column3010_product : EqualModuloRelations column3010.relations
    (multiply factor [[0,425]]) column3010.output := by lin_cert using column3010.terms
def column3011 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis3011.json"
theorem column3011_product : EqualModuloRelations column3011.relations
    (multiply factor [[0,0,0,0,391]]) column3011.output := by lin_cert using column3011.terms
def column3012 : Bundle := named_bundle% "NamedPageComparison/Row2858/products_g/basis3012.json"
theorem column3012_product : EqualModuloRelations column3012.relations
    (multiply factor [[0,0,0,0,0,375]]) column3012.output := by lin_cert using column3012.terms
def matrix13_138 : Matrix 3 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
end NamedPageComparison.Row2858.g
