import PageTransitionCertificates.Import
import PageProductCertificates.Import
import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace EtaD3Source.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
def h0 : WireComparison := page_comparison% "EtaD3Source/h0.json"
theorem h0_valid : h0.Valid := by lin_cert using ()
def eta : WireComparison := page_comparison% "EtaD3Source/eta.json"
theorem eta_valid : eta.Valid := by lin_cert using ()
def h0Target : WireComparison := page_comparison% "EtaD3Source/h0Target.json"
theorem h0Target_valid : h0Target.Valid := by lin_cert using ()
def etaTarget : WireComparison := page_comparison% "EtaD3Source/etaTarget.json"
theorem etaTarget_valid : etaTarget.Valid := by lin_cert using ()
def zeroProductTarget : WireComparison := page_comparison% "EtaD3Source/zeroProductTarget.json"
theorem zeroProductTarget_valid : zeroProductTarget.Valid := by lin_cert using ()
def detectTarget : WireComparison := page_comparison% "EtaD3Source/detectTarget.json"
theorem detectTarget_valid : detectTarget.Valid := by lin_cert using ()
def zeroProduct0 : Bundle := named_bundle% "EtaD3Source/zeroProduct0.json"
theorem zeroProduct0_valid : EqualModuloRelations zeroProduct0.relations
    (multiply [[0]] [[1]]) zeroProduct0.output := by
  lin_cert using zeroProduct0.terms
#print axioms zeroProduct0_valid
def zeroProduct : PageProductCertificates.Wire := page_product% "EtaD3Source/zeroProduct.json"
theorem zeroProduct_valid : zeroProduct.Valid := by lin_cert using ()
theorem zeroProduct_bindings : zeroProduct.left = h0 ∧ zeroProduct.right = eta ∧ zeroProduct.target = zeroProductTarget := ⟨rfl,rfl,rfl⟩
theorem zeroProduct0_output_binding : zeroProduct0.output = [] := by decide
theorem zeroProduct0_tensor_binding : ∀ i : Fin 0, zeroProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([] : List Bool)[i.val]!) := by decide
def detectProduct0 : Bundle := named_bundle% "EtaD3Source/detectProduct0.json"
theorem detectProduct0_valid : EqualModuloRelations detectProduct0.relations
    (multiply [[0]] [[0,0,0,0]]) detectProduct0.output := by
  lin_cert using detectProduct0.terms
#print axioms detectProduct0_valid
def detectProduct : PageProductCertificates.Wire := page_product% "EtaD3Source/detectProduct.json"
theorem detectProduct_valid : detectProduct.Valid := by lin_cert using ()
theorem detectProduct_bindings : detectProduct.left = h0 ∧ detectProduct.right = etaTarget ∧ detectProduct.target = detectTarget := ⟨rfl,rfl,rfl⟩
theorem detectProduct0_output_binding : detectProduct0.output = [[0,0,0,0,0]] := by decide
theorem detectProduct0_tensor_binding : ∀ i : Fin 1, detectProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([true] : List Bool)[i.val]!) := by decide
#print axioms zeroProduct_valid
#print axioms detectProduct_valid
end EtaD3Source.Data
