import PageTransitionCertificates.Import
import PageProductCertificates.Import
import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row3305H0Search.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
def h0 : WireComparison := page_comparison% "Row3305H0Search/h0.json"
theorem h0_valid : h0.Valid := by lin_cert using ()
def right : WireComparison := page_comparison% "Row3305H0Search/right.json"
theorem right_valid : right.Valid := by lin_cert using ()
def leftTarget : WireComparison := page_comparison% "Row3305H0Search/leftTarget.json"
theorem leftTarget_valid : leftTarget.Valid := by lin_cert using ()
def rightTarget : WireComparison := page_comparison% "Row3305H0Search/rightTarget.json"
theorem rightTarget_valid : rightTarget.Valid := by lin_cert using ()
def source : WireComparison := page_comparison% "Row3305H0Search/source.json"
theorem source_valid : source.Valid := by lin_cert using ()
def target : WireComparison := page_comparison% "Row3305H0Search/target.json"
theorem target_valid : target.Valid := by lin_cert using ()
def sourceProduct0 : Bundle := named_bundle% "Row3305H0Search/sourceProduct0.json"
theorem sourceProduct0_valid : EqualModuloRelations sourceProduct0.relations
    (multiply [[0]] [[471]]) sourceProduct0.output := by
  lin_cert using sourceProduct0.terms
#print axioms sourceProduct0_valid
def sourceProduct1 : Bundle := named_bundle% "Row3305H0Search/sourceProduct1.json"
theorem sourceProduct1_valid : EqualModuloRelations sourceProduct1.relations
    (multiply [[0]] [[8,13,13,101]]) sourceProduct1.output := by
  lin_cert using sourceProduct1.terms
#print axioms sourceProduct1_valid
def sourceProduct2 : Bundle := named_bundle% "Row3305H0Search/sourceProduct2.json"
theorem sourceProduct2_valid : EqualModuloRelations sourceProduct2.relations
    (multiply [[0]] [[0,454]]) sourceProduct2.output := by
  lin_cert using sourceProduct2.terms
#print axioms sourceProduct2_valid
def sourceProduct : PageProductCertificates.Wire := page_product% "Row3305H0Search/sourceProduct.json"
theorem sourceProduct_valid : sourceProduct.Valid := by lin_cert using ()
theorem sourceProduct_bindings : sourceProduct.left = h0 ∧ sourceProduct.right = right ∧ sourceProduct.target = source := ⟨rfl,rfl,rfl⟩
theorem sourceProduct0_output_binding : sourceProduct0.output = [[0,471]] := by decide
theorem sourceProduct0_tensor_binding : ∀ i : Fin 2, sourceProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([true,false] : List Bool)[i.val]!) := by decide
theorem sourceProduct1_output_binding : sourceProduct1.output = [] := by decide
theorem sourceProduct1_tensor_binding : ∀ i : Fin 2, sourceProduct.product i ⟨0,by decide⟩ ⟨1,by decide⟩ =
    (([false,false] : List Bool)[i.val]!) := by decide
theorem sourceProduct2_output_binding : sourceProduct2.output = [[0,0,454]] := by decide
theorem sourceProduct2_tensor_binding : ∀ i : Fin 2, sourceProduct.product i ⟨0,by decide⟩ ⟨2,by decide⟩ =
    (([false,true] : List Bool)[i.val]!) := by decide
def rightProduct0 : Bundle := named_bundle% "Row3305H0Search/rightProduct0.json"
theorem rightProduct0_valid : EqualModuloRelations rightProduct0.relations
    (multiply [[0]] [[8,8,208]]) rightProduct0.output := by
  lin_cert using rightProduct0.terms
#print axioms rightProduct0_valid
def rightProduct1 : Bundle := named_bundle% "Row3305H0Search/rightProduct1.json"
theorem rightProduct1_valid : EqualModuloRelations rightProduct1.relations
    (multiply [[0]] [[0,0,64,113]]) rightProduct1.output := by
  lin_cert using rightProduct1.terms
#print axioms rightProduct1_valid
def rightProduct : PageProductCertificates.Wire := page_product% "Row3305H0Search/rightProduct.json"
theorem rightProduct_valid : rightProduct.Valid := by lin_cert using ()
theorem rightProduct_bindings : rightProduct.left = h0 ∧ rightProduct.right = rightTarget ∧ rightProduct.target = target := ⟨rfl,rfl,rfl⟩
theorem rightProduct0_output_binding : rightProduct0.output = [] := by decide
theorem rightProduct0_tensor_binding : ∀ i : Fin 2, rightProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([false,false] : List Bool)[i.val]!) := by decide
theorem rightProduct1_output_binding : rightProduct1.output = [] := by decide
theorem rightProduct1_tensor_binding : ∀ i : Fin 2, rightProduct.product i ⟨0,by decide⟩ ⟨1,by decide⟩ =
    (([false,false] : List Bool)[i.val]!) := by decide
def rawRow : Nat × String × Option String × Nat := ⟨3305,"0",none,9000⟩
theorem raw_unknown : rawRow.2.2.1 = none := rfl
#print axioms sourceProduct_valid
#print axioms rightProduct_valid
end Row3305H0Search.Data
