import NamedPageComparison.ConditionalHigherData
import PageProductCertificates.Row2858
import NamedPageComparison.Row3080

namespace NamedPageComparison.ConditionalHigher
open LinearCertificates PageTransitionCertificates
open ConditionalHigherData

-- Both coordinate choices represent the same complete quotient, but their
-- bases need not coincide. The override is zero, whose transport is canonical.
theorem override_zero_transport :
    eval b13_138_2.comparison.projection zero = zero := eval_zero _

/-- Mathematical override: a value of an actual quotient-valued differential,
not a trusted row label or a Boolean exported by C++. -/
structure CertifiedOverride (d : PageProductCertificates.Row2858.Initial → PageProductCertificates.Row2858.Source) : Prop where
  quotientZero : d PageProductCertificates.Row2858.named = PageProductCertificates.Row2858.zeroSource

-- The constructed unknown incoming column equals the coordinates of the
-- supplied quotient differential. This clause prevents discarding the premise.
def OverrideMatches (d : PageProductCertificates.Row2858.Initial → PageProductCertificates.Row2858.Source) : Prop :=
  (homologyEquivalence PageProductCertificates.Row2858.sourceOut PageProductCertificates.Row2858.sourceIn
    NamedPageComparison.Row2858.Boundaries.Target.comparison
    NamedPageComparison.Row2858.Boundaries.Target_complete.2).toCoordinates (d PageProductCertificates.Row2858.named) =
    zero ∧
  (fun i => matrixOf 3 1 b13_138_3.incoming i ⟨0,by decide⟩) =
    eval b13_138_2.comparison.projection zero

theorem override_matches (d : PageProductCertificates.Row2858.Initial → PageProductCertificates.Row2858.Source) (h : CertifiedOverride d) :
    OverrideMatches d := by
  constructor
  · rw [h.quotientZero]
    change eval NamedPageComparison.Row2858.Boundaries.Target.comparison.projection zero = zero
    exact eval_zero _
  · rw [eval_zero]
    funext i
    exact (show ∀ i, matrixOf 3 1 b13_138_3.incoming i ⟨0,by decide⟩ = zero i from by decide) i

-- Row3080 remains unknown as raw input; its E3 target is the zero space.
theorem row3080_matches (actual : Vec 0) :
    actual = (fun i => matrixOf 0 1 b17_141_3.incoming i ⟨0,by decide⟩) := by
  funext i
  exact Fin.elim0 i

def ConditionalTrajectoryValid (d : PageProductCertificates.Row2858.Initial → PageProductCertificates.Row2858.Source) : Prop :=
  OverrideMatches d ∧ TrajectoryValid stages

theorem conditional_E6 (d : PageProductCertificates.Row2858.Initial → PageProductCertificates.Row2858.Source) (h : CertifiedOverride d) :
    ConditionalTrajectoryValid d :=
  ⟨override_matches d h, constructed_trajectory_checked⟩

/-- The only row2858 override is obtained by the proved quotient Leibniz rule.
All six local multiplication maps and their zero products are checked upstream. -/
theorem conditional_E6_from_leibniz
    (d : PageProductCertificates.Row2858.Initial → PageProductCertificates.Row2858.Source)
    (dg : Homology (PageProductCertificates.Row2858.targetOut PageProductCertificates.Row2858.anng) (PageProductCertificates.Row2858.targetIn PageProductCertificates.Row2858.anng) → Homology (PageProductCertificates.Row2858.targetOut PageProductCertificates.Row2858.gWire) (PageProductCertificates.Row2858.targetIn PageProductCertificates.Row2858.gWire))
    (d1 : Homology (PageProductCertificates.Row2858.targetOut PageProductCertificates.Row2858.annh1) (PageProductCertificates.Row2858.targetIn PageProductCertificates.Row2858.annh1) → Homology (PageProductCertificates.Row2858.targetOut PageProductCertificates.Row2858.h1Wire) (PageProductCertificates.Row2858.targetIn PageProductCertificates.Row2858.h1Wire))
    (d3 : Homology (PageProductCertificates.Row2858.targetOut PageProductCertificates.Row2858.annh3) (PageProductCertificates.Row2858.targetIn PageProductCertificates.Row2858.annh3) → Homology (PageProductCertificates.Row2858.targetOut PageProductCertificates.Row2858.h3Wire) (PageProductCertificates.Row2858.targetIn PageProductCertificates.Row2858.h3Wire))
    (zg : dg (PageProductCertificates.Row2858.targetZero PageProductCertificates.Row2858.anng) = PageProductCertificates.Row2858.targetZero PageProductCertificates.Row2858.gWire)
    (z1 : d1 (PageProductCertificates.Row2858.targetZero PageProductCertificates.Row2858.annh1) = PageProductCertificates.Row2858.targetZero PageProductCertificates.Row2858.h1Wire)
    (z3 : d3 (PageProductCertificates.Row2858.targetZero PageProductCertificates.Row2858.annh3) = PageProductCertificates.Row2858.targetZero PageProductCertificates.Row2858.h3Wire)
    (lg : ∀ x, dg (PageProductCertificates.Row2858.annMapg x) = PageProductCertificates.Row2858.gMap (d x))
    (l1 : ∀ x, d1 (PageProductCertificates.Row2858.annMaph1 x) = PageProductCertificates.Row2858.h1Map (d x))
    (l3 : ∀ x, d3 (PageProductCertificates.Row2858.annMaph3 x) = PageProductCertificates.Row2858.h3Map (d x)) :
    ConditionalTrajectoryValid d :=
  conditional_E6 d ⟨PageProductCertificates.Row2858.differential_named_zero d dg d1 d3 zg z1 z3 lg l1 l3⟩

end NamedPageComparison.ConditionalHigher
