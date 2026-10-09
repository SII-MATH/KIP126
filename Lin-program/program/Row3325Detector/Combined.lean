import Row3325Detector.Quotient
namespace Row3325Detector.Combined
open LinearCertificates PageTransitionCertificates PageProductCertificates ResolutionCertificates Quotient

def ce := homologyEquivalence (out detect1.right) (inc detect1.right)
  detect1.right.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2

theorem jointly_reflect_zero (x : Q detect1.right)
    (h1 : detectMap1 x = z detect1.target)
    (h8 : detectMap8 x = z detect8.target)
    (h13 : detectMap13 x = z detect13.target) : x = z detect1.right := by
  let e1 := homologyEquivalence (out detect1.target) (inc detect1.target)
    detect1.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2
  let e8 := homologyEquivalence (out detect8.target) (inc detect8.target)
    detect8.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2
  let e13 := homologyEquivalence (out detect13.target) (inc detect13.target)
    detect13.target.comparison (PageTransitionCertificates.checkWire_sound _ (by decide)).2
  have hh1 := congrArg e1.toCoordinates h1
  have hh8 := congrArg e8.toCoordinates h8
  have hh13 := congrArg e13.toCoordinates h13
  have hx := ce.leftInverse x
  have hc : ce.toCoordinates x = zero := by
    generalize hv : ce.toCoordinates x = v at *
    rw [← hx] at hh1 hh8 hh13
    have reflect : ∀ v : Vec 3,
      (∀ i, eval detect1.target.comparison.projection
        (product detect1.product (fun _ => true) (eval detect1.right.comparison.inclusion v)) i = false) →
      (∀ i, eval detect8.target.comparison.projection
        (product detect8.product (fun _ => true) (eval detect1.right.comparison.inclusion v)) i = false) →
      (∀ i, eval detect13.target.comparison.projection
        (product detect13.product (fun _ => true) (eval detect1.right.comparison.inclusion v)) i = false) →
      ∀ i, v i = false := by decide
    funext i
    apply reflect v _ _ _ i
    · intro j
      have hj := congrFun hh1 j
      change eval detect1.target.comparison.projection
        (product detect1.product (fun _ => true) (eval detect1.right.comparison.inclusion v)) j =
        eval detect1.target.comparison.projection zero j at hj
      simpa only [eval_zero,zero] using hj
    · intro j
      have hj := congrFun hh8 j
      change eval detect8.target.comparison.projection
        (product detect8.product (fun _ => true) (eval detect1.right.comparison.inclusion v)) j =
        eval detect8.target.comparison.projection zero j at hj
      simpa only [eval_zero,zero] using hj
    · intro j
      have hj := congrFun hh13 j
      change eval detect13.target.comparison.projection
        (product detect13.product (fun _ => true) (eval detect1.right.comparison.inclusion v)) j =
        eval detect13.target.comparison.projection zero j at hj
      simpa only [eval_zero,zero] using hj
  have hz : ce.toCoordinates (z detect1.right) = zero := eval_zero _
  have hh := congrArg ce.fromCoordinates (hc.trans hz.symm)
  simpa only [ce.leftInverse] using hh

theorem differential_zero (d : Q ann1.right → Q detect1.right)
    (d1 : Q ann1.target → Q detect1.target)
    (d8 : Q ann8.target → Q detect8.target)
    (d13 : Q ann13.target → Q detect13.target)
    (z1 : d1 (z ann1.target) = z detect1.target)
    (z8 : d8 (z ann8.target) = z detect8.target)
    (z13 : d13 (z ann13.target) = z detect13.target)
    (l1 : ∀ x, d1 (annMap1 x) = detectMap1 (d x))
    (l8 : ∀ x, d8 (annMap8 x) = detectMap8 (d x))
    (l13 : ∀ x, d13 (annMap13 x) = detectMap13 (d x)) :
    d named = z detect1.right := by
  apply jointly_reflect_zero
  · rw [← l1, named_annihilated1, z1]
  · rw [← l8, named_annihilated8, z8]
  · rw [← l13, named_annihilated13, z13]
#print axioms differential_zero
end Row3325Detector.Combined
