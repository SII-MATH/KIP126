import Row2796Detector.Combined
namespace Row2796Detector.Restriction
open LinearCertificates PageTransitionCertificates PageProductCertificates
open Row2796Detector.Quotient Row2796Detector.Combined

theorem h3_kernel_restriction (x : Q detect.right)
    (h : detectMap x = z detect.target) : ce.toCoordinates x ⟨1,by decide⟩ = false := by
  have hh := congrArg targetCoordinates.toCoordinates h
  have hx := ce.leftInverse x
  generalize hv : ce.toCoordinates x = v at *
  rw [← hx] at hh
  have hj := congrFun hh ⟨0,by decide⟩
  change eval detect.target.comparison.projection
    (product detect.product (fun _ => true) (eval detect.right.comparison.inclusion v)) ⟨0,by decide⟩ =
    eval detect.target.comparison.projection zero ⟨0,by decide⟩ at hj
  simpa [detect, Wire.product, PageTransitionCertificates.WireComparison.comparison,
    matrixOf, tensorOf, eval, dot, product, zero] using hj

theorem h3_differential_restriction (d : Q ann.right → Q detect.right)
    (dp : Q ann.target → Q detect.target)
    (hz : dp (z ann.target) = z detect.target)
    (hl : ∀ x, dp (annMap x) = detectMap (d x)) :
    ce.toCoordinates (d named) ⟨1,by decide⟩ = false := by
  apply h3_kernel_restriction
  rw [← hl,named_annihilated,hz]
end Row2796Detector.Restriction
