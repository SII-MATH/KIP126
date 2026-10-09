import Row3147H2Product.Data

namespace Row3147H2Product.Finite
open LinearCertificates PageTransitionCertificates

def namedFactor : Vec 1 := fun _ => true
def rawSource : Vec 2 := fun i => i.val == 0
def namedSource : Vec 2 := fun i => i.val == 1
def rawProduct : Vec 5 := fun i => i.val == 4
def namedProduct : Vec 3 := fun i => i.val == 1
def nextTensor : PageProductCertificates.Tensor 1 2 3 :=
  fun k _ j => k.val == 1 && j.val == 1

theorem factor_cycle : InKernel (matrixOf Data.factor.k Data.factor.m Data.factor.outgoing)
    namedFactor := by unfold InKernel; decide
theorem source_cycle : InKernel (matrixOf Data.source.k Data.source.m Data.source.outgoing)
    rawSource := by unfold InKernel; decide
theorem product_cycle : InKernel (matrixOf Data.product.k Data.product.m Data.product.outgoing)
    rawProduct := by unfold InKernel; decide
theorem factor_next : eval Data.factor.comparison.projection namedFactor = namedFactor := by decide
theorem source_next : eval Data.source.comparison.projection rawSource = namedSource := by decide
theorem product_next : eval Data.product.comparison.projection rawProduct = namedProduct := by decide

theorem named_product : PageProductCertificates.product Data.tensor.product namedFactor rawSource =
    rawProduct := by decide
theorem descended_product : ∀ (x : Vec 1) (y : Vec 2),
    eval Data.product.comparison.projection (PageProductCertificates.product Data.tensor.product x y) =
      PageProductCertificates.product nextTensor
        (eval Data.factor.comparison.projection x) (eval Data.source.comparison.projection y) := by decide
theorem next_named_product : PageProductCertificates.product nextTensor namedFactor namedSource =
    namedProduct := by decide
theorem source_d3_zero : ∀ x : Vec 2,
    eval (matrixOf Data.source3.k Data.source3.m Data.source3.outgoing) x = zero := by decide
theorem product_nonzero : namedProduct ≠ zero := by decide
theorem product_nonboundary : ¬ InImage (matrixOf Data.product.m Data.product.n Data.product.incoming)
    rawProduct := by unfold InImage; decide

#print axioms factor_cycle
#print axioms source_cycle
#print axioms product_cycle
#print axioms factor_next
#print axioms source_next
#print axioms product_next
#print axioms named_product
#print axioms descended_product
#print axioms next_named_product
#print axioms source_d3_zero
#print axioms product_nonzero
#print axioms product_nonboundary
end Row3147H2Product.Finite
