import PageTransitionCertificates.Import
import PageProductCertificates.Import
import NamedElementCertificates.Evaluation
namespace Fact715Source2574.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
def factor : WireComparison := page_comparison% "Fact715Source2574/wire/factor.json"
theorem factor_valid : factor.Valid := by lin_cert using ()
#print axioms factor_valid
def source : WireComparison := page_comparison% "Fact715Source2574/wire/source.json"
theorem source_valid : source.Valid := by lin_cert using ()
#print axioms source_valid
def product : WireComparison := page_comparison% "Fact715Source2574/wire/product.json"
theorem product_valid : product.Valid := by lin_cert using ()
#print axioms product_valid
def target : WireComparison := page_comparison% "Fact715Source2574/wire/target.json"
theorem target_valid : target.Valid := by lin_cert using ()
#print axioms target_valid
def factorTarget : WireComparison := page_comparison% "Fact715Source2574/wire/factorTarget.json"
theorem factorTarget_valid : factorTarget.Valid := by lin_cert using ()
#print axioms factorTarget_valid
def column0 : Bundle := named_bundle% "Fact715Source2574/wire/column0.json"
theorem column0_valid : EqualModuloRelations column0.relations column0.input column0.output := by lin_cert using column0.terms
#print axioms column0_valid
def column1 : Bundle := named_bundle% "Fact715Source2574/wire/column1.json"
theorem column1_valid : EqualModuloRelations column1.relations column1.input column1.output := by lin_cert using column1.terms
#print axioms column1_valid
def tensor : PageProductCertificates.Wire := page_product% "Fact715Source2574/wire/productTensor.json"
theorem tensor_valid : tensor.Valid := by lin_cert using ()
theorem tensor_binding : tensor.left = factor ∧ tensor.right = source ∧ tensor.target = product := ⟨rfl,rfl,rfl⟩
#print axioms tensor_valid
end Fact715Source2574.Data
