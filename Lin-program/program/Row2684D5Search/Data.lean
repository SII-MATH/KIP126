import PageTransitionCertificates.Import
import PageProductCertificates.Basic
import NamedElementCertificates.Evaluation
namespace Row2684D5Search.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
def factor2 : WireComparison := page_comparison% "Row2684D5Search/wire/factor2.json"
theorem factor2_valid : factor2.Valid := by lin_cert using ()
#print axioms factor2_valid
def factor3 : WireComparison := page_comparison% "Row2684D5Search/wire/factor3.json"
theorem factor3_valid : factor3.Valid := by lin_cert using ()
#print axioms factor3_valid
def emptyTarget2 : WireComparison := page_comparison% "Row2684D5Search/wire/emptyTarget2.json"
theorem emptyTarget2_valid : emptyTarget2.Valid := by lin_cert using ()
#print axioms emptyTarget2_valid
def source2 : WireComparison := page_comparison% "Row2684D5Search/wire/source2.json"
theorem source2_valid : source2.Valid := by lin_cert using ()
#print axioms source2_valid
def source3 : WireComparison := page_comparison% "Row2684D5Search/wire/source3.json"
theorem source3_valid : source3.Valid := by lin_cert using ()
#print axioms source3_valid
def source4 : WireComparison := page_comparison% "Row2684D5Search/wire/source4.json"
theorem source4_valid : source4.Valid := by lin_cert using ()
#print axioms source4_valid
def product00 : Bundle := named_bundle% "Row2684D5Search/wire/product00.json"
theorem product00_valid : EqualModuloRelations product00.relations product00.input product00.output := by
  lin_cert using product00.terms
#print axioms product00_valid
def product01 : Bundle := named_bundle% "Row2684D5Search/wire/product01.json"
theorem product01_valid : EqualModuloRelations product01.relations product01.input product01.output := by
  lin_cert using product01.terms
#print axioms product01_valid
def product10 : Bundle := named_bundle% "Row2684D5Search/wire/product10.json"
theorem product10_valid : EqualModuloRelations product10.relations product10.input product10.output := by
  lin_cert using product10.terms
#print axioms product10_valid
def product11 : Bundle := named_bundle% "Row2684D5Search/wire/product11.json"
theorem product11_valid : EqualModuloRelations product11.relations product11.input product11.output := by
  lin_cert using product11.terms
#print axioms product11_valid
def tensor : PageProductCertificates.Tensor 2 2 3 := fun i j k =>
  ([true,false,false,false,true,true,true,true,false,true,true,true] : List Bool)[i.val*4+j.val*2+k.val]!
def factorVector : Vec 2 := fun _ => true
def sourceVector : Vec 3 := fun i => i.val == 0
def squareVector : Vec 3 := fun i => i.val != 1
def middleVector : Vec 2 := fun i => i.val == 1
def finalVector : Vec 1 := fun _ => true
theorem square_coordinates : PageProductCertificates.product tensor factorVector factorVector = squareVector := by decide
theorem source_path :
  eval (matrixOf source2.k source2.m source2.outgoing) sourceVector = zero /\
  eval source2.comparison.projection sourceVector = middleVector /\
  eval source2.comparison.projection squareVector = middleVector /\
  eval (matrixOf source3.k source3.m source3.outgoing) middleVector = zero /\
  eval source3.comparison.projection middleVector = finalVector /\
  eval (matrixOf source4.k source4.m source4.outgoing) finalVector = zero /\
  eval source4.comparison.projection finalVector = finalVector := by decide
theorem factor_path :
  eval (matrixOf factor2.k factor2.m factor2.outgoing) factorVector = zero /\
  eval factor2.comparison.projection factorVector = finalVector := by decide
#print axioms square_coordinates
#print axioms source_path
#print axioms factor_path
end Row2684D5Search.Data
