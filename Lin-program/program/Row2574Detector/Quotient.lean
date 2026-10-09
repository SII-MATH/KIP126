import PageProductCertificates.Import
import Row2574Detector.Products_h2
namespace Row2574Detector.Quotient
open LinearCertificates PageTransitionCertificates PageProductCertificates ResolutionCertificates

def ann : Wire := page_product% "Row2574Detector/ann.json"
def detect : Wire := page_product% "Row2574Detector/detect.json"
theorem ann_checked : ann.Valid := by lin_cert using ()
theorem detect_checked : detect.Valid := by lin_cert using ()

theorem source_tensor_matches (i : Fin 1) (j : Fin 2) :
    ann.product i ⟨0,by decide⟩ j = Row2574Detector.h2.matrix6_132 i j := by
  exact (show ∀ i : Fin 1, ∀ j : Fin 2,
    ann.product i ⟨0,by decide⟩ j = Row2574Detector.h2.matrix6_132 i j from by decide) i j

theorem target_tensor_matches (i : Fin 4) (j : Fin 5) :
    detect.product i ⟨0,by decide⟩ j = Row2574Detector.h2.matrix9_134 i j := by
  exact (show ∀ i : Fin 4, ∀ j : Fin 5,
    detect.product i ⟨0,by decide⟩ j = Row2574Detector.h2.matrix9_134 i j from by decide) i j
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
def named : Q ann.right := Quot.mk _ (⟨fun i => i.val == 0, by
  funext i
  exact (show ∀ i, eval (out ann.right) (fun j => j.val == 0) i = false from by decide) i⟩ : Cycle _)
def productNamed : Q ann.target := Quot.mk _ (⟨fun i => i.val == 0, by
  funext i
  exact (show ∀ i, eval (out ann.target) (fun j => j.val == 0) i = false from by decide) i⟩ : Cycle _)
def knownValue : Q detect.target := Quot.mk _ (⟨fun i => i.val == 3, by
  funext i
  exact (show ∀ i, eval (out detect.target) (fun j => j.val == 3) i = false from by decide) i⟩ : Cycle _)
def rejectedCandidate : Q detect.right := Quot.mk _ (⟨fun i => i.val == 2, by
  funext i
  exact (show ∀ i, eval (out detect.right) (fun j => j.val == 2) i = false from by decide) i⟩ : Cycle _)

theorem named_product : annMap named = productNamed := by
  apply Quot.sound
  change InImage (inc ann.target)
    (add (product ann.product (fun _ => true) (fun i => i.val == 0)) (fun i => i.val == 0))
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product ann.product (fun _ => true) (fun j => j.val == 0))
    (fun j => j.val == 0) i from by decide) i

def targetCoordinates := homologyEquivalence (out detect.target) (inc detect.target)
  detect.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2
def candidateCoordinates := homologyEquivalence (out detect.right) (inc detect.right)
  detect.right.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2

theorem knownValue_nonzero : knownValue ≠ z detect.target := by
  intro h
  have hh := congrFun (congrArg targetCoordinates.toCoordinates h) ⟨1,by decide⟩
  change true = false at hh
  contradiction

theorem detect_zero : detectMap (z detect.right) = z detect.target := by
  apply Quot.sound
  change InImage (inc detect.target) (add (product detect.product (fun _ => true) zero) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (product detect.product (fun _ => true) zero) zero i from by decide) i

theorem rejected_product_zero : detectMap rejectedCandidate = z detect.target := by
  apply Quot.sound
  change InImage (inc detect.target) (add (product detect.product (fun _ => true) (fun i => i.val == 2)) zero)
  refine ⟨fun i => i.val == 1, ?_⟩
  funext i
  exact (show ∀ i, eval (inc detect.target) (fun j => j.val == 1) i =
    add (product detect.product (fun _ => true) (fun j => j.val == 2)) zero i from by decide) i

/-- Exactly four of eight target classes have this prescribed h2 product. -/
theorem affine_fiber (x : Q detect.right) :
    detectMap x = knownValue ↔ candidateCoordinates.toCoordinates x ⟨2,by decide⟩ = true := by
  have hx := candidateCoordinates.leftInverse x
  generalize hv : candidateCoordinates.toCoordinates x = v at *
  rw [← hx]
  constructor
  · intro h
    have hh := congrFun (congrArg targetCoordinates.toCoordinates h) ⟨1,by decide⟩
    change eval detect.target.comparison.projection
      (product detect.product (fun _ => true) (eval detect.right.comparison.inclusion v)) ⟨1,by decide⟩ = true at hh
    have eq : ∀ v : Vec 3, eval detect.target.comparison.projection
      (product detect.product (fun _ => true) (eval detect.right.comparison.inclusion v)) ⟨1,by decide⟩ = v ⟨2,by decide⟩ := by decide
    exact (eq v).symm.trans hh
  · intro h
    have coords : targetCoordinates.toCoordinates
        (detectMap (candidateCoordinates.fromCoordinates v)) = targetCoordinates.toCoordinates knownValue := by
      funext i
      change eval detect.target.comparison.projection
        (product detect.product (fun _ => true) (eval detect.right.comparison.inclusion v)) i =
          eval detect.target.comparison.projection (fun j => j.val == 3) i
      exact (show ∀ v : Vec 3, v ⟨2,by decide⟩ = true → ∀ i,
        eval detect.target.comparison.projection
          (product detect.product (fun _ => true) (eval detect.right.comparison.inclusion v)) i =
        eval detect.target.comparison.projection (fun j => j.val == 3) i from by decide) v h i
    have eq := congrArg targetCoordinates.fromCoordinates coords
    simpa only [targetCoordinates.leftInverse] using eq

/-- The imported row2866 value and a local Leibniz square give an affine,
nonzero restriction. Neither hypothesis asserts the sought row2574 value. -/
theorem differential_restricted (d : Q ann.right → Q detect.right)
    (dp : Q ann.target → Q detect.target)
    (knownDifferential : dp productNamed = knownValue)
    (leibniz : ∀ x, dp (annMap x) = detectMap (d x)) :
    candidateCoordinates.toCoordinates (d named) ⟨2,by decide⟩ = true ∧
    d named ≠ z detect.right ∧ d named ≠ rejectedCandidate := by
  have hd : detectMap (d named) = knownValue := by
    rw [← leibniz, named_product, knownDifferential]
  refine ⟨(affine_fiber _).mp hd, ?_, ?_⟩
  · intro hz
    rw [hz, detect_zero] at hd
    exact knownValue_nonzero hd.symm
  · intro hc
    rw [hc, rejected_product_zero] at hd
    exact knownValue_nonzero hd.symm
#print axioms affine_fiber
#print axioms differential_restricted
end Row2574Detector.Quotient
