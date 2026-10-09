import PageTransitionCertificates.Import
import PageProductCertificates.Import
import NamedElementCertificates.Evaluation
namespace Row2907PDeltaDetection.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
def c12_42_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c12_42_2.json"
theorem c12_42_2_valid : c12_42_2.Valid := by lin_cert using ()
#print axioms c12_42_2_valid
def c12_42_3 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c12_42_3.json"
theorem c12_42_3_valid : c12_42_3.Valid := by lin_cert using ()
#print axioms c12_42_3_valid
def c13_43_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c13_43_2.json"
theorem c13_43_2_valid : c13_43_2.Valid := by lin_cert using ()
#print axioms c13_43_2_valid
def c15_44_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c15_44_2.json"
theorem c15_44_2_valid : c15_44_2.Valid := by lin_cert using ()
#print axioms c15_44_2_valid
def c16_137_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c16_137_2.json"
theorem c16_137_2_valid : c16_137_2.Valid := by lin_cert using ()
#print axioms c16_137_2_valid
def c16_45_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c16_45_2.json"
theorem c16_45_2_valid : c16_45_2.Valid := by lin_cert using ()
#print axioms c16_45_2_valid
def c16_45_3 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c16_45_3.json"
theorem c16_45_3_valid : c16_45_3.Valid := by lin_cert using ()
#print axioms c16_45_3_valid
def c19_47_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c19_47_2.json"
theorem c19_47_2_valid : c19_47_2.Valid := by lin_cert using ()
#print axioms c19_47_2_valid
def c20_140_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c20_140_2.json"
theorem c20_140_2_valid : c20_140_2.Valid := by lin_cert using ()
#print axioms c20_140_2_valid
def c25_177_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c25_177_2.json"
theorem c25_177_2_valid : c25_177_2.Valid := by lin_cert using ()
#print axioms c25_177_2_valid
def c28_179_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c28_179_2.json"
theorem c28_179_2_valid : c28_179_2.Valid := by lin_cert using ()
#print axioms c28_179_2_valid
def c28_179_3 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c28_179_3.json"
theorem c28_179_3_valid : c28_179_3.Valid := by lin_cert using ()
#print axioms c28_179_3_valid
def c29_180_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c29_180_2.json"
theorem c29_180_2_valid : c29_180_2.Valid := by lin_cert using ()
#print axioms c29_180_2_valid
def c31_181_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c31_181_2.json"
theorem c31_181_2_valid : c31_181_2.Valid := by lin_cert using ()
#print axioms c31_181_2_valid
def c32_182_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c32_182_2.json"
theorem c32_182_2_valid : c32_182_2.Valid := by lin_cert using ()
#print axioms c32_182_2_valid
def c32_182_3 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c32_182_3.json"
theorem c32_182_3_valid : c32_182_3.Valid := by lin_cert using ()
#print axioms c32_182_3_valid
def c35_184_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c35_184_2.json"
theorem c35_184_2_valid : c35_184_2.Valid := by lin_cert using ()
#print axioms c35_184_2_valid
def c9_40_2 : WireComparison := page_comparison% "Row2907PDeltaDetection/wire/c9_40_2.json"
theorem c9_40_2_valid : c9_40_2.Valid := by lin_cert using ()
#print axioms c9_40_2_valid
def source0 : Bundle := named_bundle% "Row2907PDeltaDetection/wire/source0.json"
theorem source0_valid : EqualModuloRelations source0.relations source0.input source0.output := by
  lin_cert using source0.terms
#print axioms source0_valid
def source1 : Bundle := named_bundle% "Row2907PDeltaDetection/wire/source1.json"
theorem source1_valid : EqualModuloRelations source1.relations source1.input source1.output := by
  lin_cert using source1.terms
#print axioms source1_valid
def source2 : Bundle := named_bundle% "Row2907PDeltaDetection/wire/source2.json"
theorem source2_valid : EqualModuloRelations source2.relations source2.input source2.output := by
  lin_cert using source2.terms
#print axioms source2_valid
def sourceProduct : PageProductCertificates.Wire := page_product% "Row2907PDeltaDetection/wire/sourceProduct.json"
theorem sourceProduct_valid : sourceProduct.Valid := by lin_cert using ()
theorem sourceProduct_bindings : sourceProduct.left = c12_42_2 ∧ sourceProduct.right = c16_137_2 ∧ sourceProduct.target = c28_179_2 := ⟨rfl,rfl,rfl⟩
#print axioms sourceProduct_valid
def target0 : Bundle := named_bundle% "Row2907PDeltaDetection/wire/target0.json"
theorem target0_valid : EqualModuloRelations target0.relations target0.input target0.output := by
  lin_cert using target0.terms
#print axioms target0_valid
def target1 : Bundle := named_bundle% "Row2907PDeltaDetection/wire/target1.json"
theorem target1_valid : EqualModuloRelations target1.relations target1.input target1.output := by
  lin_cert using target1.terms
#print axioms target1_valid
def target2 : Bundle := named_bundle% "Row2907PDeltaDetection/wire/target2.json"
theorem target2_valid : EqualModuloRelations target2.relations target2.input target2.output := by
  lin_cert using target2.terms
#print axioms target2_valid
def targetProduct : PageProductCertificates.Wire := page_product% "Row2907PDeltaDetection/wire/targetProduct.json"
theorem targetProduct_valid : targetProduct.Valid := by lin_cert using ()
theorem targetProduct_bindings : targetProduct.left = c12_42_2 ∧ targetProduct.right = c20_140_2 ∧ targetProduct.target = c32_182_2 := ⟨rfl,rfl,rfl⟩
#print axioms targetProduct_valid
end Row2907PDeltaDetection.Data
