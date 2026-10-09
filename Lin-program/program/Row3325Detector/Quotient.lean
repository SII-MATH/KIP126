import PageProductCertificates.Import
import Row3325Detector.Products_h1
import Row3325Detector.Products_g8
import Row3325Detector.Products_g13
import NamedPageComparison.FiniteFaithfulness
namespace Row3325Detector.Quotient
open LinearCertificates PageTransitionCertificates PageProductCertificates ResolutionCertificates

def ann1 : Wire := page_product% "Row3325Detector/annh1.json"
def detect1 : Wire := page_product% "Row3325Detector/detecth1.json"
def ann8 : Wire := page_product% "Row3325Detector/anng8.json"
def detect8 : Wire := page_product% "Row3325Detector/detectg8.json"
def ann13 : Wire := page_product% "Row3325Detector/anng13.json"
def detect13 : Wire := page_product% "Row3325Detector/detectg13.json"
theorem ann1_checked : ann1.Valid := by lin_cert using ()
theorem detect1_checked : detect1.Valid := by lin_cert using ()
theorem ann8_checked : ann8.Valid := by lin_cert using ()
theorem detect8_checked : detect8.Valid := by lin_cert using ()
theorem ann13_checked : ann13.Valid := by lin_cert using ()
theorem detect13_checked : detect13.Valid := by lin_cert using ()
def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def z (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def named : Q ann1.right := Quot.mk _ (⟨fun i => i.val == 2,by
  funext i
  exact (show ∀ i, eval (out ann1.right) (fun j => j.val == 2) i = false from by decide) i⟩ : Cycle _)

def factor1 : Cycle (out ann1.left) := ⟨fun _ => true,by
  funext i
  exact (show ∀ i, eval (out ann1.left) (fun _ => true) i = false from by decide) i⟩
def annMap1 : Q ann1.right → Q ann1.target :=
  descended _ _ _ _ _ _ ann1.product ann1_checked.2 (Quot.mk _ factor1)
def detectMap1 : Q detect1.right → Q detect1.target :=
  descended _ _ _ _ _ _ detect1.product detect1_checked.2 (Quot.mk _ factor1)
theorem named_annihilated1 : annMap1 named = z ann1.target := by
  apply Quot.sound
  change InImage (inc ann1.target) (add (product ann1.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product ann1.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i

def factor8 : Cycle (out ann8.left) := ⟨fun _ => true,by
  funext i
  exact (show ∀ i, eval (out ann8.left) (fun _ => true) i = false from by decide) i⟩
def annMap8 : Q ann1.right → Q ann8.target :=
  descended _ _ _ _ _ _ ann8.product ann8_checked.2 (Quot.mk _ factor8)
def detectMap8 : Q detect1.right → Q detect8.target :=
  descended _ _ _ _ _ _ detect8.product detect8_checked.2 (Quot.mk _ factor8)
theorem named_annihilated8 : annMap8 named = z ann8.target := by
  apply Quot.sound
  change InImage (inc ann8.target) (add (product ann8.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product ann8.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i

def factor13 : Cycle (out ann13.left) := ⟨fun _ => true,by
  funext i
  exact (show ∀ i, eval (out ann13.left) (fun _ => true) i = false from by decide) i⟩
def annMap13 : Q ann1.right → Q ann13.target :=
  descended _ _ _ _ _ _ ann13.product ann13_checked.2 (Quot.mk _ factor13)
def detectMap13 : Q detect1.right → Q detect13.target :=
  descended _ _ _ _ _ _ detect13.product detect13_checked.2 (Quot.mk _ factor13)
theorem named_annihilated13 : annMap13 named = z ann13.target := by
  apply Quot.sound
  change InImage (inc ann13.target) (add (product ann13.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product ann13.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i

end Row3325Detector.Quotient
