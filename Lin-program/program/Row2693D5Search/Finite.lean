import Row2693D5Search.Data

namespace Row2693D5Search.Finite
open LinearCertificates PageTransitionCertificates

def tensor3 : PageProductCertificates.Tensor 1 2 4 := fun i _ j => i.val == 2 && j.val == 0
def tensor4 : PageProductCertificates.Tensor 1 1 4 := fun i _ _ => i.val == 2
def tensor5 : PageProductCertificates.Tensor 1 1 2 := fun i _ _ => i.val == 0
def unitTensor : PageProductCertificates.Tensor 1 1 1 := fun _ _ _ => true
def leftName : Vec 1 := fun _ => true
def right2Name : Vec 2 := fun _ => true
def right3Name : Vec 2 := fun i => i.val == 0
def product2Name : Vec 5 := fun i => i.val == 4
def product3Name : Vec 4 := fun i => i.val == 2
def product5Name : Vec 2 := fun i => i.val == 0

theorem descent2 : ∀ (x : Vec 1) (y : Vec 2),
    eval Data.product2.comparison.projection (PageProductCertificates.product Data.mainTensor x y) =
      PageProductCertificates.product tensor3 (eval Data.left2.comparison.projection x)
        (eval Data.right2.comparison.projection y) := by decide
theorem descent3 : ∀ (x : Vec 1) (y : Vec 2),
    eval Data.product3.comparison.projection (PageProductCertificates.product tensor3 x y) =
      PageProductCertificates.product tensor4 (eval Data.left3.comparison.projection x)
        (eval Data.right3.comparison.projection y) := by decide
theorem descent4 : ∀ (x : Vec 1) (y : Vec 1),
    eval Data.product4.comparison.projection (PageProductCertificates.product tensor4 x y) =
      PageProductCertificates.product tensor5 (eval Data.left4.comparison.projection x)
        (eval Data.right4.comparison.projection y) := by decide
theorem main5 : PageProductCertificates.product tensor5 leftName leftName = product5Name := by decide
theorem correction_zero : ∀ (x : Vec 1) (y : Vec 2),
    PageProductCertificates.product Data.correctionTensor x y = zero := by decide
theorem right5_zero : ∀ x : Vec 1,
    eval (matrixOf Data.right5.k Data.right5.m Data.right5.outgoing) x = zero := by decide
theorem path :
    InKernel (matrixOf Data.product2.k Data.product2.m Data.product2.outgoing) product2Name ∧
    eval Data.product2.comparison.projection product2Name = product3Name ∧
    InKernel (matrixOf Data.product3.k Data.product3.m Data.product3.outgoing) product3Name ∧
    eval Data.product3.comparison.projection product3Name = product3Name ∧
    InKernel (matrixOf Data.product4.k Data.product4.m Data.product4.outgoing) product3Name ∧
    eval Data.product4.comparison.projection product3Name = product5Name := by unfold InKernel; decide
theorem right_path :
    InKernel (matrixOf Data.right2.k Data.right2.m Data.right2.outgoing) right2Name ∧
    eval Data.right2.comparison.projection right2Name = right3Name ∧
    InKernel (matrixOf Data.right3.k Data.right3.m Data.right3.outgoing) right3Name ∧
    eval Data.right3.comparison.projection right3Name = leftName ∧
    InKernel (matrixOf Data.right4.k Data.right4.m Data.right4.outgoing) leftName ∧
    eval Data.right4.comparison.projection leftName = leftName := by unfold InKernel; decide
theorem nonzero5 : product5Name ≠ zero := by decide
theorem low3_descent : ∀ (x y : Vec 1),
    eval Data.tower52.comparison.projection (PageProductCertificates.product Data.low3Tensor x y) =
      PageProductCertificates.product unitTensor (eval Data.h02.comparison.projection x)
        (eval Data.tower42.comparison.projection y) := by decide
theorem low4_descent2 : ∀ (x y : Vec 1),
    eval Data.tower62.comparison.projection (PageProductCertificates.product Data.low4Tensor x y) =
      PageProductCertificates.product unitTensor (eval Data.h02.comparison.projection x)
        (eval Data.tower52.comparison.projection y) := by decide
theorem low4_descent3 : ∀ (x y : Vec 1),
    eval Data.tower63.comparison.projection (PageProductCertificates.product unitTensor x y) =
      PageProductCertificates.product unitTensor (eval Data.h03.comparison.projection x)
        (eval Data.tower53.comparison.projection y) := by decide
theorem unit_reflects : ∀ y : Vec 1, PageProductCertificates.product unitTensor leftName y = zero →
    y = zero := by decide

#print axioms descent2
#print axioms descent3
#print axioms descent4
#print axioms main5
#print axioms correction_zero
#print axioms right5_zero
#print axioms path
#print axioms right_path
#print axioms nonzero5
#print axioms low3_descent
#print axioms low4_descent2
#print axioms low4_descent3
#print axioms unit_reflects
end Row2693D5Search.Finite
