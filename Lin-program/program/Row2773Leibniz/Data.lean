import PageTransitionCertificates.Import
import PageProductCertificates.Import
import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row2773Leibniz.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
def eta : WireComparison := page_comparison% "Row2773Leibniz/eta.json"
theorem eta_valid : eta.Valid := by lin_cert using ()
def right : WireComparison := page_comparison% "Row2773Leibniz/right.json"
theorem right_valid : right.Valid := by lin_cert using ()
def leftTarget : WireComparison := page_comparison% "Row2773Leibniz/leftTarget.json"
theorem leftTarget_valid : leftTarget.Valid := by lin_cert using ()
def rightTarget : WireComparison := page_comparison% "Row2773Leibniz/rightTarget.json"
theorem rightTarget_valid : rightTarget.Valid := by lin_cert using ()
def source : WireComparison := page_comparison% "Row2773Leibniz/source.json"
theorem source_valid : source.Valid := by lin_cert using ()
def target : WireComparison := page_comparison% "Row2773Leibniz/target.json"
theorem target_valid : target.Valid := by lin_cert using ()
def sourceProduct0 : Bundle := named_bundle% "Row2773Leibniz/sourceProduct0.json"
theorem sourceProduct0_valid : EqualModuloRelations sourceProduct0.relations
    (multiply [[1]] [[1,351]]) sourceProduct0.output := by
  lin_cert using sourceProduct0.terms
#print axioms sourceProduct0_valid
def sourceProduct1 : Bundle := named_bundle% "Row2773Leibniz/sourceProduct1.json"
theorem sourceProduct1_valid : EqualModuloRelations sourceProduct1.relations
    (multiply [[1]] [[0,365]]) sourceProduct1.output := by
  lin_cert using sourceProduct1.terms
#print axioms sourceProduct1_valid
def sourceProduct : PageProductCertificates.Wire := page_product% "Row2773Leibniz/sourceProduct.json"
theorem sourceProduct_valid : sourceProduct.Valid := by lin_cert using ()
theorem sourceProduct_bindings : sourceProduct.left = eta ∧ sourceProduct.right = right ∧ sourceProduct.target = source := ⟨rfl,rfl,rfl⟩
theorem sourceProduct0_output_binding : sourceProduct0.output = [[1,1,351]] := by decide
theorem sourceProduct0_tensor_binding : ∀ i : Fin 3, sourceProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([false,true,false] : List Bool)[i.val]!) := by decide
theorem sourceProduct1_output_binding : sourceProduct1.output = [] := by decide
theorem sourceProduct1_tensor_binding : ∀ i : Fin 3, sourceProduct.product i ⟨0,by decide⟩ ⟨1,by decide⟩ =
    (([false,false,false] : List Bool)[i.val]!) := by decide
def leftProduct0 : Bundle := named_bundle% "Row2773Leibniz/leftProduct0.json"
theorem leftProduct0_valid : EqualModuloRelations leftProduct0.relations
    (multiply [[0,0,0,0]] [[1,351]]) leftProduct0.output := by
  lin_cert using leftProduct0.terms
#print axioms leftProduct0_valid
def leftProduct1 : Bundle := named_bundle% "Row2773Leibniz/leftProduct1.json"
theorem leftProduct1_valid : EqualModuloRelations leftProduct1.relations
    (multiply [[0,0,0,0]] [[0,365]]) leftProduct1.output := by
  lin_cert using leftProduct1.terms
#print axioms leftProduct1_valid
def leftProduct : PageProductCertificates.Wire := page_product% "Row2773Leibniz/leftProduct.json"
theorem leftProduct_valid : leftProduct.Valid := by lin_cert using ()
theorem leftProduct_bindings : leftProduct.left = leftTarget ∧ leftProduct.right = right ∧ leftProduct.target = target := ⟨rfl,rfl,rfl⟩
theorem leftProduct0_output_binding : leftProduct0.output = [] := by decide
theorem leftProduct0_tensor_binding : ∀ i : Fin 3, leftProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([false,false,false] : List Bool)[i.val]!) := by decide
theorem leftProduct1_output_binding : leftProduct1.output = [] := by decide
theorem leftProduct1_tensor_binding : ∀ i : Fin 3, leftProduct.product i ⟨0,by decide⟩ ⟨1,by decide⟩ =
    (([false,false,false] : List Bool)[i.val]!) := by decide
def rawRow : Nat × String × Option String × Nat := ⟨2773,"1",none,9000⟩
theorem raw_unknown : rawRow.2.2.1 = none := rfl
theorem source_product_raw : sourceProduct0.output = [[1,1,351]] := by decide
#print axioms sourceProduct_valid
#print axioms leftProduct_valid
end Row2773Leibniz.Data
