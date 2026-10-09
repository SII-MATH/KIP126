import Row2576Detector.Comparison
import Row2576Detector.Products_h2
import PageProductCertificates.Import
import NamedPageComparison.FiniteFaithfulness

namespace Row2576Detector.Quotient
open LinearCertificates PageTransitionCertificates PageProductCertificates ResolutionCertificates

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def z (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def ann : Wire := page_product% "Row2576Detector/ann.json"
def detect : Wire := page_product% "Row2576Detector/detect.json"
theorem ann_checked : ann.Valid := by lin_cert using ()
theorem detect_checked : detect.Valid := by lin_cert using ()
theorem ann_tensor_actual : ∀ i j, ann.product i ⟨0,by decide⟩ j = h2.matrix4_132 i j := by decide
theorem detect_tensor_actual : ∀ i j, detect.product i ⟨0,by decide⟩ j = h2.matrix7_134 i j := by decide

def named : Q Comparison.source := Quot.mk _ (⟨fun _ => true,by
  funext i
  exact (show ∀ i, eval (out Comparison.source) (fun _ => true) i = false from by decide) i⟩ : Cycle _)
def factor : Cycle (out ann.left) := ⟨fun _ => true,by
  funext i
  exact (show ∀ i, eval (out ann.left) (fun _ => true) i = false from by decide) i⟩
def annMap : Q Comparison.source → Q ann.target :=
  descended _ _ _ _ _ _ ann.product ann_checked.2 (Quot.mk _ factor)
def detectMap : Q Comparison.upperSource → Q detect.target :=
  descended _ _ _ _ _ _ detect.product detect_checked.2 (Quot.mk _ factor)
def c2Map : Q Comparison.source → Q Comparison.target := inducedMap Comparison.compatible
def c2Detect : Q Comparison.upperSource → Q Comparison.upperTarget := inducedMap Comparison.uppercompatible

theorem named_h2_zero : annMap named = z ann.target := by
  apply Quot.sound
  change InImage (inc ann.target) (add (product ann.product (fun _ => true) (fun _ => true)) zero)
  refine ⟨zero, ?_⟩
  funext i
  exact Fin.elim0 i

theorem named_c2_zero : c2Map named = z Comparison.target := by
  apply Quot.sound
  change InImage (inc Comparison.target) (add (eval Comparison.middleMap (fun _ => true)) zero)
  refine ⟨fun _ => true, ?_⟩
  funext i
  exact (show ∀ i, eval (inc Comparison.target) (fun _ => true) i =
    add (eval Comparison.middleMap (fun _ => true)) zero i from by decide) i

def targetCoordinates := homologyEquivalence (out Comparison.upperSource) (inc Comparison.upperSource)
  Comparison.upperSource.comparison Comparison.upperSource_complete.2

theorem jointly_reflect_zero (x : Q Comparison.upperSource)
    (hc2 : c2Detect x = z Comparison.upperTarget)
    (hh2 : detectMap x = z detect.target) : x = z Comparison.upperSource := by
  let ec2 := homologyEquivalence (out Comparison.upperTarget) (inc Comparison.upperTarget)
    Comparison.upperTarget.comparison Comparison.upperTarget_complete.2
  let eh2 := homologyEquivalence (out detect.target) (inc detect.target)
    detect.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2
  have hmc := congrArg ec2.toCoordinates hc2
  have hmh := congrArg eh2.toCoordinates hh2
  have hx := targetCoordinates.leftInverse x
  have hz : targetCoordinates.toCoordinates x = zero := by
    generalize hv : targetCoordinates.toCoordinates x = v at *
    rw [← hx] at hmc hmh
    have reflection : ∀ v : Vec 2,
        (∀ i, eval Comparison.upperTarget.comparison.projection
          (eval Comparison.upperMiddleMap (eval Comparison.upperSource.comparison.inclusion v)) i = false) →
        (∀ i, eval detect.target.comparison.projection
          (product detect.product (fun _ => true) (eval Comparison.upperSource.comparison.inclusion v)) i = false) →
        ∀ i, v i = false := by decide
    funext i
    apply reflection v _ _ i
    · intro j
      have hj := congrFun hmc j
      change eval Comparison.upperTarget.comparison.projection
        (eval Comparison.upperMiddleMap (eval Comparison.upperSource.comparison.inclusion v)) j =
        eval Comparison.upperTarget.comparison.projection zero j at hj
      simpa only [eval_zero, zero] using hj
    · intro j
      have hj := congrFun hmh j
      change eval detect.target.comparison.projection
        (product detect.product (fun _ => true) (eval Comparison.upperSource.comparison.inclusion v)) j =
        eval detect.target.comparison.projection zero j at hj
      simpa only [eval_zero, zero] using hj
  have he : targetCoordinates.toCoordinates (z Comparison.upperSource) = zero := eval_zero _
  have hh := congrArg targetCoordinates.fromCoordinates (hz.trans he.symm)
  simpa only [targetCoordinates.leftInverse] using hh

/-- The actual C2 map and h2 product jointly exclude every nonzero d3 target. -/
theorem named_d3_zero (d : Q Comparison.source → Q Comparison.upperSource)
    (dc2 : Q Comparison.target → Q Comparison.upperTarget)
    (dh2 : Q ann.target → Q detect.target)
    (zc2 : dc2 (z Comparison.target) = z Comparison.upperTarget)
    (zh2 : dh2 (z ann.target) = z detect.target)
    (naturality : ∀ x, dc2 (c2Map x) = c2Detect (d x))
    (leibniz : ∀ x, dh2 (annMap x) = detectMap (d x)) :
    d named = z Comparison.upperSource := by
  apply jointly_reflect_zero
  · rw [← naturality, named_c2_zero, zc2]
  · rw [← leibniz, named_h2_zero, zh2]

#print axioms jointly_reflect_zero
#print axioms named_d3_zero
end Row2576Detector.Quotient
