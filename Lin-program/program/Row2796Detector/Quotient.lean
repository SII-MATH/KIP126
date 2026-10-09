import PageProductCertificates.Import
import Row2796Detector.Products_h3
namespace Row2796Detector.Quotient
open LinearCertificates PageTransitionCertificates PageProductCertificates ResolutionCertificates

def ann : Wire := page_product% "Row2796Detector/annh3.json"
def detect : Wire := page_product% "Row2796Detector/detecth3.json"
theorem ann_checked : ann.Valid := by lin_cert using ()
theorem detect_checked : detect.Valid := by lin_cert using ()
def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def z (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def factor : Cycle (out ann.left) := ⟨fun _ => true, by
  funext i
  exact (show ∀ i, eval (out ann.left) (fun _ => true) i = false from by decide) i⟩
def annMap : Q ann.right → Q ann.target :=
  descended _ _ _ _ _ _ ann.product ann_checked.2 (Quot.mk _ factor)
def detectMap : Q detect.right → Q detect.target :=
  descended _ _ _ _ _ _ detect.product detect_checked.2 (Quot.mk _ factor)
def named : Q ann.right := Quot.mk _ (⟨fun i => i.val == 2, by
  funext i
  exact (show ∀ i, eval (out ann.right) (fun j => j.val == 2) i = false from by decide) i⟩ : Cycle _)
def candidate : Q detect.right := Quot.mk _ (⟨fun i => i.val == 2, by
  funext i
  exact (show ∀ i, eval (out detect.right) (fun j => j.val == 2) i = false from by decide) i⟩ : Cycle _)

theorem named_annihilated : annMap named = z ann.target := by
  apply Quot.sound
  change InImage (inc ann.target) (add (product ann.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product ann.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i

def targetCoordinates := homologyEquivalence (out detect.target) (inc detect.target)
  detect.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2

theorem candidate_detected : detectMap candidate ≠ z detect.target := by
  intro h
  have hc := congrArg targetCoordinates.toCoordinates h
  change eval detect.target.comparison.projection
    (product detect.product (fun _ => true) (fun j => j.val == 2)) =
      eval detect.target.comparison.projection zero at hc
  have ne : eval detect.target.comparison.projection
    (product detect.product (fun _ => true) (fun j => j.val == 2)) ≠
      eval detect.target.comparison.projection zero := by
    intro hh
    have hi := congrFun hh ⟨0,by decide⟩
    contradiction
  exact ne hc

/-- The full quotient Leibniz square excludes this concrete nonzero candidate. -/
theorem candidate_excluded (d : Q ann.right → Q detect.right)
    (dp : Q ann.target → Q detect.target)
    (zeroPreserving : dp (z ann.target) = z detect.target)
    (leibniz : ∀ x, dp (annMap x) = detectMap (d x)) : d named ≠ candidate := by
  intro h
  apply candidate_detected
  rw [← h, ← leibniz, named_annihilated, zeroPreserving]
#print axioms candidate_excluded
end Row2796Detector.Quotient
