import Row3564LeibnizDetector.Products_h1
import Row3564LeibnizDetector.Products_h04
import PageProductCertificates.Import
import PageTransitionCertificates.AdditiveQuotient

namespace Row3564LeibnizDetector.Quotient
open LinearCertificates PageTransitionCertificates PageProductCertificates

def namedProduct : Wire := page_product% "Row3564LeibnizDetector/namedProduct.json"
def leftTerm : Wire := page_product% "Row3564LeibnizDetector/leftTerm.json"
def rightTerm : Wire := page_product% "Row3564LeibnizDetector/rightTerm.json"
theorem namedProduct_checked : namedProduct.Valid := by lin_cert using ()
theorem leftTerm_checked : leftTerm.Valid := by lin_cert using ()
theorem rightTerm_checked : rightTerm.Valid := by lin_cert using ()

theorem named_tensor : ∀ i j, namedProduct.product i ⟨0,by decide⟩ j = h1.matrix17_143 i j := by decide
theorem left_tensor : ∀ i j, leftTerm.product i ⟨0,by decide⟩ j = h04.matrix17_143 i j := by decide
theorem right_tensor : ∀ i j, rightTerm.product i ⟨0,by decide⟩ j = h1.matrix20_145 i j := by decide

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def z (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def mul (w : Wire) (hw : w.Valid) : Q w.left → Q w.right → Q w.target :=
  descended _ _ _ _ _ _ w.product hw.2

def h1Class : Q namedProduct.left := Quot.mk _ (⟨fun _ => true,by
  funext i
  exact (show ∀ i, eval (out namedProduct.left) (fun _ => true) i = false from by decide) i⟩ : Cycle _)
def xClass : Q namedProduct.right := Quot.mk _ (⟨fun i => i.val == 0,by
  funext i
  exact (show ∀ i, eval (out namedProduct.right) (fun j => j.val == 0) i = false from by decide) i⟩ : Cycle _)
def named : Q namedProduct.target := Quot.mk _ (⟨fun i => i.val == 1,by
  funext i
  exact (show ∀ i, eval (out namedProduct.target) (fun j => j.val == 1) i = false from by decide) i⟩ : Cycle _)

theorem named_is_product : mul namedProduct namedProduct_checked h1Class xClass = named := by
  apply Quot.sound
  change InImage (inc namedProduct.target)
    (add (product namedProduct.product (fun _ => true) (fun i => i.val == 0)) (fun i => i.val == 1))
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  decide

/-- Every possible d3(h1) representative is annihilated by this x493. -/
theorem arbitrary_left_term_zero (v : Q leftTerm.left) :
    mul leftTerm leftTerm_checked v xClass = z leftTerm.target := by
  induction v using Quot.inductionOn with
  | h v =>
    apply Quot.sound
    change InImage (inc leftTerm.target)
      (add (product leftTerm.product v.val (fun i => i.val == 0)) zero)
    refine ⟨zero, ?_⟩
    rw [eval_zero]
    exact (show ∀ v : Vec 1,
      zero = add (product leftTerm.product v (fun i => i.val == 0)) zero from by decide) v.val

theorem right_term_zero :
    mul rightTerm rightTerm_checked h1Class (z rightTerm.right) = z rightTerm.target := by
  apply Quot.sound
  change InImage (inc rightTerm.target)
    (add (product rightTerm.product (fun _ => true) zero) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  decide

theorem add_zero_zero : homologyAdd (out rightTerm.target) (inc rightTerm.target)
    (z rightTerm.target) (z rightTerm.target) = z rightTerm.target := rfl

/-- Full Leibniz semantics and the imported x493 d3 prefix suffice.
The differential of h1 is arbitrary, and no later target event is used. -/
theorem named_d3_zero
    (dh : Q namedProduct.left → Q leftTerm.left)
    (dx : Q namedProduct.right → Q rightTerm.right)
    (ds : Q namedProduct.target → Q rightTerm.target)
    (xPrefix : dx xClass = z rightTerm.right)
    (leibniz : ∀ a b, ds (mul namedProduct namedProduct_checked a b) =
      homologyAdd (out rightTerm.target) (inc rightTerm.target)
        (mul leftTerm leftTerm_checked (dh a) b)
        (mul rightTerm rightTerm_checked a (dx b))) :
    ds named = z rightTerm.target := by
  rw [← named_is_product, leibniz, arbitrary_left_term_zero, xPrefix,
    right_term_zero]
  exact add_zero_zero

#print axioms named_d3_zero
#print axioms arbitrary_left_term_zero
end Row3564LeibnizDetector.Quotient
