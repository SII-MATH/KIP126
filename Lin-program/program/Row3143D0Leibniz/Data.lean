import PageTransitionCertificates.Import
import PageProductCertificates.Import
import NamedElementCertificates.Evaluation
import LinearCertificates.Checker
namespace Row3143D0Leibniz.Data
open LinearCertificates PageTransitionCertificates NamedElementCertificates
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000
def d0 : WireComparison := page_comparison% "Row3143D0Leibniz/d0.json"
theorem d0_valid : d0.Valid := by lin_cert using ()
#print axioms d0_valid
def right : WireComparison := page_comparison% "Row3143D0Leibniz/right.json"
theorem right_valid : right.Valid := by lin_cert using ()
#print axioms right_valid
def leftTarget : WireComparison := page_comparison% "Row3143D0Leibniz/leftTarget.json"
theorem leftTarget_valid : leftTarget.Valid := by lin_cert using ()
#print axioms leftTarget_valid
def rightTarget : WireComparison := page_comparison% "Row3143D0Leibniz/rightTarget.json"
theorem rightTarget_valid : rightTarget.Valid := by lin_cert using ()
#print axioms rightTarget_valid
def source : WireComparison := page_comparison% "Row3143D0Leibniz/source.json"
theorem source_valid : source.Valid := by lin_cert using ()
#print axioms source_valid
def target : WireComparison := page_comparison% "Row3143D0Leibniz/target.json"
theorem target_valid : target.Valid := by lin_cert using ()
#print axioms target_valid
def leftD3Target : WireComparison := page_comparison% "Row3143D0Leibniz/leftD3Target.json"
theorem leftD3Target_valid : leftD3Target.Valid := by lin_cert using ()
#print axioms leftD3Target_valid
def rightD3Target : WireComparison := page_comparison% "Row3143D0Leibniz/rightD3Target.json"
theorem rightD3Target_valid : rightD3Target.Valid := by lin_cert using ()
#print axioms rightD3Target_valid
def detectorTarget : WireComparison := page_comparison% "Row3143D0Leibniz/detectorTarget.json"
theorem detectorTarget_valid : detectorTarget.Valid := by lin_cert using ()
#print axioms detectorTarget_valid
def detectorIncoming : WireComparison := page_comparison% "Row3143D0Leibniz/detectorIncoming.json"
theorem detectorIncoming_valid : detectorIncoming.Valid := by lin_cert using ()
#print axioms detectorIncoming_valid
def detectorOutgoing : WireComparison := page_comparison% "Row3143D0Leibniz/detectorOutgoing.json"
theorem detectorOutgoing_valid : detectorOutgoing.Valid := by lin_cert using ()
#print axioms detectorOutgoing_valid
def detectorTargetIncoming : WireComparison := page_comparison% "Row3143D0Leibniz/detectorTargetIncoming.json"
theorem detectorTargetIncoming_valid : detectorTargetIncoming.Valid := by lin_cert using ()
#print axioms detectorTargetIncoming_valid
def detectorTargetOutgoing : WireComparison := page_comparison% "Row3143D0Leibniz/detectorTargetOutgoing.json"
theorem detectorTargetOutgoing_valid : detectorTargetOutgoing.Valid := by lin_cert using ()
#print axioms detectorTargetOutgoing_valid
def sourceProduct0 : Bundle := named_bundle% "Row3143D0Leibniz/sourceProduct0.json"
theorem sourceProduct0_valid : EqualModuloRelations sourceProduct0.relations
    (multiply [[8]] [[280]]) sourceProduct0.output := by
  lin_cert using sourceProduct0.terms
#print axioms sourceProduct0_valid
def sourceProduct : PageProductCertificates.Wire := page_product% "Row3143D0Leibniz/sourceProduct.json"
theorem sourceProduct_valid : sourceProduct.Valid := by lin_cert using ()
theorem sourceProduct_bindings : sourceProduct.left = d0 ∧ sourceProduct.right = right ∧ sourceProduct.target = source := ⟨rfl,rfl,rfl⟩
theorem sourceProduct0_output_binding : sourceProduct0.output = [[8,280]] := by decide
theorem sourceProduct0_tensor_binding : ∀ i : Fin 4, sourceProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([true,false,false,false] : List Bool)[i.val]!) := by decide
def rightProduct0 : Bundle := named_bundle% "Row3143D0Leibniz/rightProduct0.json"
theorem rightProduct0_valid : EqualModuloRelations rightProduct0.relations
    (multiply [[8]] [[292]]) rightProduct0.output := by
  lin_cert using rightProduct0.terms
#print axioms rightProduct0_valid
def rightProduct1 : Bundle := named_bundle% "Row3143D0Leibniz/rightProduct1.json"
theorem rightProduct1_valid : EqualModuloRelations rightProduct1.relations
    (multiply [[8]] [[0,0,284]]) rightProduct1.output := by
  lin_cert using rightProduct1.terms
#print axioms rightProduct1_valid
def rightProduct2 : Bundle := named_bundle% "Row3143D0Leibniz/rightProduct2.json"
theorem rightProduct2_valid : EqualModuloRelations rightProduct2.relations
    (multiply [[8]] [[0,0,9,188]]) rightProduct2.output := by
  lin_cert using rightProduct2.terms
#print axioms rightProduct2_valid
def rightProduct : PageProductCertificates.Wire := page_product% "Row3143D0Leibniz/rightProduct.json"
theorem rightProduct_valid : rightProduct.Valid := by lin_cert using ()
theorem rightProduct_bindings : rightProduct.left = d0 ∧ rightProduct.right = rightTarget ∧ rightProduct.target = target := ⟨rfl,rfl,rfl⟩
theorem rightProduct0_output_binding : rightProduct0.output = [[8,292]] := by decide
theorem rightProduct0_tensor_binding : ∀ i : Fin 2, rightProduct.product i ⟨0,by decide⟩ ⟨0,by decide⟩ =
    (([true,false] : List Bool)[i.val]!) := by decide
theorem rightProduct1_output_binding : rightProduct1.output = [] := by decide
theorem rightProduct1_tensor_binding : ∀ i : Fin 2, rightProduct.product i ⟨0,by decide⟩ ⟨1,by decide⟩ =
    (([false,false] : List Bool)[i.val]!) := by decide
theorem rightProduct2_output_binding : rightProduct2.output = [[0,0,8,9,188]] := by decide
theorem rightProduct2_tensor_binding : ∀ i : Fin 2, rightProduct.product i ⟨0,by decide⟩ ⟨2,by decide⟩ =
    (([false,true] : List Bool)[i.val]!) := by decide
def rawRow : Nat × String × Option String × Nat := ⟨3143,"0",none,9000⟩
theorem raw_unknown : rawRow.2.2.1 = none := rfl
#print axioms sourceProduct_valid
#print axioms rightProduct_valid
end Row3143D0Leibniz.Data
