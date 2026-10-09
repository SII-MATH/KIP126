import Fact762SphereGDetection.Data
namespace Fact762SphereGDetection.H0Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
def h0 : WireComparison := page_comparison% "Fact762SphereGDetection/h0-h0.json"
theorem h0_valid : h0.Valid := by lin_cert using ()
def source : WireComparison := page_comparison% "Fact762SphereGDetection/h0-source.json"
theorem source_valid : source.Valid := by lin_cert using ()
def target : WireComparison := page_comparison% "Fact762SphereGDetection/h0-target.json"
theorem target_valid : target.Valid := by lin_cert using ()
def column0 : Bundle := named_bundle% "Fact762SphereGDetection/h0-column0.json"
theorem column0_valid : EqualModuloRelations column0.relations (multiply [[0]] [[69,185]]) column0.output := by lin_cert using column0.terms
def column1 : Bundle := named_bundle% "Fact762SphereGDetection/h0-column1.json"
theorem column1_valid : EqualModuloRelations column1.relations (multiply [[0]] [[0,702]]) column1.output := by lin_cert using column1.terms
def column2 : Bundle := named_bundle% "Fact762SphereGDetection/h0-column2.json"
theorem column2_valid : EqualModuloRelations column2.relations (multiply [[0]] [[0,64,188]]) column2.output := by lin_cert using column2.terms
def column3 : Bundle := named_bundle% "Fact762SphereGDetection/h0-column3.json"
theorem column3_valid : EqualModuloRelations column3.relations (multiply [[0]] [[0,0,690]]) column3.output := by lin_cert using column3.terms
def wire : PageProductCertificates.Wire := page_product% "Fact762SphereGDetection/h0-product.json"
theorem wire_valid : wire.Valid := by lin_cert using ()
def namedSource : Vec 4 := fun i => i.val == 0
def namedTarget : Vec 5 := fun i => i.val == 2
theorem named_product : PageProductCertificates.product wire.product (fun _ => true) namedSource = namedTarget := by decide
theorem target_next : eval Data.w23_167_2.comparison.projection namedTarget = (fun i => i.val == 2) := by decide
#print axioms column0_valid
#print axioms column1_valid
#print axioms column2_valid
#print axioms column3_valid
#print axioms wire_valid
#print axioms named_product
#print axioms target_next
end Fact762SphereGDetection.H0Data
