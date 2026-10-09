import Fact715Source2574.Data

namespace Fact715Source2574.Finite
open LinearCertificates PageTransitionCertificates

def namedSource : Vec 2 := fun i => i.val == 0
def namedFactor : Vec 1 := fun _ => true
def namedProduct : Vec 1 := fun _ => true
def rawTarget : Vec 4 := fun i => i.val == 3
def namedTarget : Vec 2 := fun i => i.val == 1
def nextTensor : PageProductCertificates.Tensor 1 1 1 := fun _ _ _ => true

theorem source_cycle : InKernel (matrixOf Data.source.k Data.source.m Data.source.outgoing)
    namedSource := by unfold InKernel; decide
theorem factor_cycle : InKernel (matrixOf Data.factor.k Data.factor.m Data.factor.outgoing)
    namedFactor := by unfold InKernel; decide
theorem product_cycle : InKernel (matrixOf Data.product.k Data.product.m Data.product.outgoing)
    namedProduct := by unfold InKernel; decide
theorem target_cycle : InKernel (matrixOf Data.target.k Data.target.m Data.target.outgoing)
    rawTarget := by unfold InKernel; decide

theorem source_next : eval Data.source.comparison.projection namedSource = (fun _ => true) := by decide
theorem factor_next : eval Data.factor.comparison.projection namedFactor = (fun _ => true) := by decide
theorem product_next : eval Data.product.comparison.projection namedProduct = (fun _ => true) := by decide
theorem target_next : eval Data.target.comparison.projection rawTarget = namedTarget := by decide

theorem named_product : PageProductCertificates.product Data.tensor.product namedFactor namedSource =
    namedProduct := by decide

theorem descended_product : ∀ (x : Vec 1) (y : Vec 2),
    eval Data.product.comparison.projection (PageProductCertificates.product Data.tensor.product x y) =
      PageProductCertificates.product nextTensor
        (eval Data.factor.comparison.projection x) (eval Data.source.comparison.projection y) := by decide

theorem next_named_product : PageProductCertificates.product nextTensor
    (fun _ => true) (fun _ => true) = (fun _ => true) := by decide

theorem target_nonzero : namedTarget ≠ zero := by decide
theorem target_nonboundary : ¬ InImage (matrixOf Data.target.m Data.target.n Data.target.incoming)
    rawTarget := by unfold InImage; decide

/-- E2 basis 2574 is the old d2 boundary. The new source is basis 2573,
despite the staircase ID 2574 used for its surviving representative. -/
theorem other_source_boundary : InImage (matrixOf Data.source.m Data.source.n Data.source.incoming)
    (fun i => i.val == 1) := ⟨(fun _ => true), by decide⟩

#print axioms source_cycle
#print axioms factor_cycle
#print axioms product_cycle
#print axioms target_cycle
#print axioms source_next
#print axioms factor_next
#print axioms product_next
#print axioms target_next
#print axioms named_product
#print axioms descended_product
#print axioms next_named_product
#print axioms target_nonzero
#print axioms target_nonboundary
#print axioms other_source_boundary
end Fact715Source2574.Finite
