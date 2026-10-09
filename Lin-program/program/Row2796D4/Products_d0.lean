import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row2796D4.d0
open NamedElementCertificates LinearCertificates LinProgramCertificates
def factor : Polynomial := [[8]]
def column2794 : Bundle := named_bundle% "Row2796D4/products_d0/basis2794.json"
theorem column2794_product : EqualModuloRelations column2794.relations
    (multiply factor [[415]]) column2794.output := by lin_cert using column2794.terms
def column2795 : Bundle := named_bundle% "Row2796D4/products_d0/basis2795.json"
theorem column2795_product : EqualModuloRelations column2795.relations
    (multiply factor [[2,353]]) column2795.output := by lin_cert using column2795.terms
def column2796 : Bundle := named_bundle% "Row2796D4/products_d0/basis2796.json"
theorem column2796_product : EqualModuloRelations column2796.relations
    (multiply factor [[2,69,75]]) column2796.output := by lin_cert using column2796.terms
def column2797 : Bundle := named_bundle% "Row2796D4/products_d0/basis2797.json"
theorem column2797_product : EqualModuloRelations column2797.relations
    (multiply factor [[0,397]]) column2797.output := by lin_cert using column2797.terms
def column2798 : Bundle := named_bundle% "Row2796D4/products_d0/basis2798.json"
theorem column2798_product : EqualModuloRelations column2798.relations
    (multiply factor [[0,396]]) column2798.output := by lin_cert using column2798.terms
def column2799 : Bundle := named_bundle% "Row2796D4/products_d0/basis2799.json"
theorem column2799_product : EqualModuloRelations column2799.relations
    (multiply factor [[0,0,377]]) column2799.output := by lin_cert using column2799.terms
def column2800 : Bundle := named_bundle% "Row2796D4/products_d0/basis2800.json"
theorem column2800_product : EqualModuloRelations column2800.relations
    (multiply factor [[0,0,0,0,0,0,0,324]]) column2800.output := by lin_cert using column2800.terms
def matrix8_135 : Matrix 4 7 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,true,false,false] : List Bool)[i.val*7+j.val]!
def column3013 : Bundle := named_bundle% "Row2796D4/products_d0/basis3013.json"
theorem column3013_product : EqualModuloRelations column3013.relations
    (multiply factor [[25,190]]) column3013.output := by lin_cert using column3013.terms
def column3014 : Bundle := named_bundle% "Row2796D4/products_d0/basis3014.json"
theorem column3014_product : EqualModuloRelations column3014.relations
    (multiply factor [[3,336]]) column3014.output := by lin_cert using column3014.terms
def column3015 : Bundle := named_bundle% "Row2796D4/products_d0/basis3015.json"
theorem column3015_product : EqualModuloRelations column3015.relations
    (multiply factor [[0,427]]) column3015.output := by lin_cert using column3015.terms
def column3016 : Bundle := named_bundle% "Row2796D4/products_d0/basis3016.json"
theorem column3016_product : EqualModuloRelations column3016.relations
    (multiply factor [[0,0,419]]) column3016.output := by lin_cert using column3016.terms
def column3017 : Bundle := named_bundle% "Row2796D4/products_d0/basis3017.json"
theorem column3017_product : EqualModuloRelations column3017.relations
    (multiply factor [[0,0,0,0,0,0,0,0,0,0,69,69]]) column3017.output := by lin_cert using column3017.terms
def matrix12_138 : Matrix 3 5 := fun i j => ([false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
end Row2796D4.d0
