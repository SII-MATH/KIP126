import Row2693Detector.Quotient
import Row2693Detector.Products_h0
import NamedPageComparison.FiniteFaithfulness
namespace Row2693Detector.Combined
open LinearCertificates PageTransitionCertificates PageProductCertificates ResolutionCertificates
open Row2693Detector.Quotient

def ann0 : Wire := page_product% "Row2693Detector/ann0.json"
def detect0 : Wire := page_product% "Row2693Detector/detect0.json"
theorem ann0_checked : ann0.Valid := by lin_cert using ()
theorem detect0_checked : detect0.Valid := by lin_cert using ()
def factor0 : Cycle (out ann0.left) := ⟨fun _ => true, by
  funext i
  exact (show ∀ i, eval (out ann0.left) (fun _ => true) i = false from by decide) i⟩
def annMap0 : Q ann.right → Q ann0.target :=
  descended _ _ _ _ _ _ ann0.product ann0_checked.2 (Quot.mk _ factor0)
def detectMap0 : Q detect.right → Q detect0.target :=
  descended _ _ _ _ _ _ detect0.product detect0_checked.2 (Quot.mk _ factor0)

theorem named_annihilated0 : annMap0 named = z ann0.target := by
  apply Quot.sound
  change InImage (inc ann0.target) (add (product ann0.product (fun _ => true) (fun i => i.val == 4)) zero)
  refine ⟨fun i => i.val == 4, ?_⟩
  funext i
  exact (show ∀ i, eval (inc ann0.target) (fun j => j.val == 4) i =
    add (product ann0.product (fun _ => true) (fun j => j.val == 4)) zero i from by decide) i

def ce := homologyEquivalence (out detect.right) (inc detect.right)
  detect.right.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2

theorem jointly_reflect_zero (x : Q detect.right)
    (h0 : detectMap0 x = z detect0.target) (h2 : detectMap x = z detect.target) :
    x = z detect.right := by
  let e0 := homologyEquivalence (out detect0.target) (inc detect0.target)
    detect0.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2
  let e2 := targetCoordinates
  have hh0 := congrArg e0.toCoordinates h0
  have hh2 := congrArg e2.toCoordinates h2
  have hx := ce.leftInverse x
  have hc : ce.toCoordinates x = zero := by
    generalize hv : ce.toCoordinates x = v at *
    rw [← hx] at hh0 hh2
    have reflect : ∀ v : Vec 2,
      (∀ i, eval detect0.target.comparison.projection
        (product detect0.product (fun _ => true) (eval detect.right.comparison.inclusion v)) i = false) →
      (∀ i, eval detect.target.comparison.projection
        (product detect.product (fun _ => true) (eval detect.right.comparison.inclusion v)) i = false) →
      ∀ i, v i = false := by decide
    funext i
    apply reflect v _ _ i
    · intro j
      have hj := congrFun hh0 j
      change eval detect0.target.comparison.projection
        (product detect0.product (fun _ => true) (eval detect.right.comparison.inclusion v)) j =
        eval detect0.target.comparison.projection zero j at hj
      simpa only [eval_zero, zero] using hj
    · intro j
      have hj := congrFun hh2 j
      change eval detect.target.comparison.projection
        (product detect.product (fun _ => true) (eval detect.right.comparison.inclusion v)) j =
        eval detect.target.comparison.projection zero j at hj
      simpa only [eval_zero, zero] using hj
  have hz : ce.toCoordinates (z detect.right) = zero := eval_zero _
  have hh := congrArg ce.fromCoordinates (hc.trans hz.symm)
  simpa only [ce.leftInverse] using hh

/-- Both local Leibniz squares use checked products; no source-cycle prefix is assumed. -/
theorem differential_zero (d : Q ann.right → Q detect.right)
    (d0 : Q ann0.target → Q detect0.target) (d2 : Q ann.target → Q detect.target)
    (z0 : d0 (z ann0.target) = z detect0.target)
    (z2 : d2 (z ann.target) = z detect.target)
    (l0 : ∀ x, d0 (annMap0 x) = detectMap0 (d x))
    (l2 : ∀ x, d2 (annMap x) = detectMap (d x)) : d named = z detect.right := by
  apply jointly_reflect_zero
  · rw [← l0, named_annihilated0, z0]
  · rw [← l2, named_annihilated, z2]
#print axioms differential_zero
end Row2693Detector.Combined
