import KIP126.Def.Synthetic.Sphere.Homotopy.Predicates
import KIP126.Def.ClassicalAdams.SphereVanishing.Proofs
import KIP126.Interface.Challenge.Challenge2
import KIP126.Main.Solution.Computation.Route
import KIP126.Main.Solution.Computation.High125

/-! Precise finite/weight-window derivations. The relevant raw degrees are
already selected, including empty bases. No new permanent-cycle claim is
added to C. All unfinished mathematical proofs remain explicit here. -/
namespace KIP126.Computation.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Synthetic.SpectralSequence
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  {D : Model H M Syn} {L : Labels H} {G : KIP126.Literature.Route.TmfLabels H}
  {η : BiHom 1 2 (S_0_0 : Syn)}

/-- Filtration zero vanishes by the existing Eilenberg--Mac Lane sphere
calculation, and negative filtration vanishes in the actual tower. This
half-plane does not require a computation input. -/
theorem no_outgoing_stem63_nonpositive
    (q : ℤ) (hq : q ≤ 0) : NoOutgoingAt (sequence D .sphere) q (q+63) := by
  intro r _ x
  have hzero : Subsingleton ((sequence D .sphere).Page r (q, q+63)) := by
    by_cases hq0 : q = 0
    · subst q
      exact sphereAdamsInternal_filtration_zero_subsingleton H r 63 (by decide)
    · exact adamsTowerInternal_page_subsingleton_of_negative H.unit SphereSpectrum
        r q (q+63) (by omega)
  rw [hzero.elim x 0, map_zero]

/-- E2 is empty at stem125, AF0..4; negative AF is zero. This covers
weights <=130 in synthetic stem124, hence all iterates starting at 128. -/
theorem no_outgoing_stem125_low (I : Inputs D L G)
    (q : ℤ) (hq : q ≤ 4) : NoOutgoingAt (sequence D .sphere) q (q+125) := by
  sorry

/-- The whole (3,129) component is the d2 target h0*h6^2 (S0_ss 2380).
Square-zero gives zero outgoing d2; later pages vanish. No assertion about
the unresolved class h6^2 at (2,128) is used. -/
theorem no_outgoing_stem126_af3 (I : Inputs D L G) : NoOutgoingAt (sequence D .sphere) 3 129 := by
  sorry

/-- BHS A.9/A.11 map compatibility and separated synthetic filtration.
In homotopy degree (m,wgt), the associated-graded kernel of lambda is
B_(2+t-wgt)/B_(1+t-wgt); its incoming source has
(s-r,t-r+1)=(wgt-m-2,wgt-1). Hence exactly this one classical source
component controls injectivity. The proof must also pass from associated
graded injectivity to actual homotopy, using D's Hausdorffness. -/
theorem lambda_injective_of_source
    (A : KIP126.Literature.Route.Inputs D η G) (m wgt : ℤ)
    (hsource : NoOutgoingAt (sequence D .sphere) (wgt-m-2) (wgt-1)) :
    LambdaInjectiveAt m wgt (S_0_0 : Syn) := by
  sorry

/-- Each iteration lowers the weight. Requiring the entire lower source
half-plane makes the all-power statement explicit and prevents silently
iterating a one-step result only known at a single weight. -/
theorem lambda_powers_injective_of_source_halfplane
    (A : KIP126.Literature.Route.Inputs D η G) (m wgt : ℤ)
    (hsource : ∀ q : ℤ, q ≤ wgt-m-2 → NoOutgoingAt (sequence D .sphere) q (q+m+1)) :
    LambdaPowersInjectiveAt m wgt (S_0_0 : Syn) := by
  sorry

/-- The exact all-power torsion exclusion used for arbitrary theta5 choices. -/
theorem lambda_powers_injective_62_64
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G) :
    LambdaPowersInjectiveAt 62 64 (S_0_0 : Syn) := by
  apply lambda_powers_injective_of_source_halfplane A
  intro q hq
  simpa [add_assoc] using no_outgoing_stem63_nonpositive (D := D) q (by omega)

/-- The torsion exclusion used when estimating theta5 squared in Prop.7.8.
This statement concerns (124,128), not the distinct (125,130) normalization. -/
theorem lambda_powers_injective_124_128
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G) :
    LambdaPowersInjectiveAt 124 128 (S_0_0 : Syn) := by
  apply lambda_powers_injective_of_source_halfplane A
  intro q hq
  simpa [add_assoc] using no_outgoing_stem125_low I q (by omega)

/-- Only one multiplication by lambda is needed for the finite BX shift.
No all-power assertion or localization injectivity in (125,130) is made. -/
theorem lambda_injective_125_130
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G) :
    LambdaInjectiveAt 125 130 (S_0_0 : Syn) := by
  exact lambda_injective_of_source A 125 130 (no_outgoing_stem126_af3 I)

/-- Actual localization-map injectivity at the theta degree, obtained from
all-power lambda injectivity plus the sourced realization-kernel theorem.
The map is D's existing functor on these exact sphere hom groups. -/
theorem realization_injective_62_64
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G) :
    Function.Injective (fun a : BiHom 62 64 (S_0_0 : Syn) => D.recovery.realization.map a) := by
  sorry

/-- Same actual localization conclusion for theta5 squared. -/
theorem realization_injective_124_128
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G) :
    Function.Injective (fun a : BiHom 124 128 (S_0_0 : Syn) => D.recovery.realization.map a) := by
  sorry

/-- The exact quotient-zero equivalence sufficient to normalize BX.
The proof uses the actual lambda cofiber triangles and one-step injectivity
at (125,130). It does not strengthen the source finite criterion to an
untruncated theorem or assume all choices have zero indeterminacy. -/
theorem bx_finite_lambda_normalization
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G)
    (r : ℕ) (hr : 1 ≤ r) (a : BiHom 125 130 (S_0_0 : Syn)) :
    (quotientClass r a = 0 ↔ quotientClass (r+1) (lambdaMultiply 1 a) = 0) := by
  sorry

/-- The genuine synthetic order-two assertion is a derived theorem. It
uses IWX's classical exponent-two result, the realization comparison and
62/64 injectivity; it is not identified with Xu's distinguished existence. -/
theorem theta5_choice_order_two
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G)
    (theta : BiHom 62 64 (S_0_0 : Syn))
    (htheta : ThetaChoice M D.toModelData theta) : theta + theta = 0 := by
  sorry
/-- The distinct window needed for the B lift in Lemma 7.16. This is
NOT injectivity at weight70 or weight71. The selected stem63 sources
q<=7 include d4 at q7 (row512), d2 at q6 (row494), and the finite
permanent-cycle bounds at q3,6,7. Their incoming torsion in weight71
has zero lambda image in weight70. The proof must use both finite
staircases and the tail vanishing/actual separated filtration. -/
theorem lambda_kills_realization_kernel_62_71
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G)
    (V : SphereVanishingLine H) (a : BiHom 62 71 (S_0_0 : Syn))
    (ha : D.recovery.realization.map a = 0) : lambdaMultiply 1 a = 0 := by
  sorry

/-- The precise synthetic exponent-two consequence used for B at weight70.
Classical IWX exponent two first kills realization(h0*b); the preceding
window kills lambda*(h0*b)=2*b. This does not assume lambda-injectivity
at (62,70), which the selected d2 data would contradict. -/
theorem two_torsion_62_70
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G)
    (V : SphereVanishingLine H) (b : BiHom 62 70 (S_0_0 : Syn)) : b + b = 0 := by
  sorry
/-- BMQ supplies one class with nonzero tmf image. Replacing it by an arbitrary
class with the same leading term uses the Main higher-filtration argument. -/
theorem high125_detector_nonzero
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G)
    (V : SphereVanishingLine H) (S : ClassicalSphereSeparated H)
    (a : HomotopyGroup (C := C) 125 SphereSpectrum)
    (ha : TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (G.high125 M) a) : a ≫ D.auxiliary.detectorUnit ≠ 0 := by
  obtain ⟨_, b, hb, hnonzero⟩ := A.tmf.high125_detected
  have heq : a = b := high125_detected_choice_unique I V S a b
    (by simpa only [high125_label I] using ha)
    (by simpa only [high125_label I] using hb)
  simpa only [heq] using hnonzero

/-- The BHS lambda-kernel argument on any object in the selected classical
closure.  The object is the actual `nu X`, not a renamed synthetic sphere.
All decreasing weights are included, and the passage from graded kernels
to homotopy uses `D.homotopySeparated` on `.nu X`. -/
theorem nu_lambda_powers_injective_of_source_halfplane
    (A : KIP126.Literature.Route.SyntheticInputs D)
    (X : ClassicalObject) (m wgt : ℤ)
    (hsource : ∀ q : ℤ, q ≤ wgt-m-2 →
      NoOutgoingAt (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
        q (q+m+1)) :
    LambdaPowersInjectiveAt m wgt (D.nu.functor.obj (X.obj D.auxiliary)) := by
  sorry

/-- BMQ/change-of-rings gives E2=0 in this entire nonpositive-filtration
half-plane of the same completed tmf. It is not a sphere computation. -/
theorem detector_no_outgoing_stem63_nonpositive
    (low : KIP126.Literature.Route.TmfLowFiltration63 D)
    (q : ℤ) (hq : q ≤ 0) :
    NoOutgoingAt (adamsTowerInternalSpectralSequence H.unit D.auxiliary.detector)
      q (q+63) := by
  intro r hr x
  have hz : Subsingleton
      ((adamsTowerInternalSpectralSequence H.unit D.auxiliary.detector).Page r
        (q, q+63)) :=
    adamsTowerInternal_page_subsingleton_of_le H.unit D.auxiliary.detector
      2 r q (q+63) (by omega) hr (by simpa [add_comm] using low q hq)
  rw [hz.elim x 0, map_zero]

/-- All finite lambda powers are injective at (62,64) for synthetic tmf.
This is a Main deduction from the sourced low-filtration tmf calculation
and the BHS comparisons, rather than an added tmf vanishing assumption. -/
theorem detector_lambda_powers_injective_62_64
    (A : KIP126.Literature.Route.SyntheticInputs D)
    (low : KIP126.Literature.Route.TmfLowFiltration63 D) :
    LambdaPowersInjectiveAt 62 64 (D.nu.functor.obj D.auxiliary.detector) := by
  apply nu_lambda_powers_injective_of_source_halfplane A .detector
  intro q hq
  simpa [ClassicalObject.obj, add_assoc] using
    detector_no_outgoing_stem63_nonpositive low q (by omega)

/-- Injectivity of the actual realization functor at the required tmf
degree. It additionally uses `A.realization_kernel` on `.nu .detector`;
an associated-graded comparison by itself does not imply this conclusion. -/
theorem detector_realization_injective_62_64
    (A : KIP126.Literature.Route.SyntheticInputs D)
    (low : KIP126.Literature.Route.TmfLowFiltration63 D) :
    Function.Injective (fun a : BiHom 62 64 (D.nu.functor.obj D.auxiliary.detector) =>
      D.recovery.realization.map a) := by
  sorry

/-- The precise synthetic Hurewicz vanishing consumed in Proposition 7.8.
Classical theta5 vanishing is transported through the SAME actual unit and
realization comparisons; the preceding tmf injectivity removes its possible
lambda-torsion lift. `A` is the assembled consumer package, not a new A axiom. -/
theorem synthetic_theta5_detector_zero
    (A : KIP126.Literature.Route.Inputs D η G)
    (theta : BiHom 62 64 (S_0_0 : Syn))
    (htheta : ThetaChoice M D.toModelData theta) :
    theta ≫ KIP126.Literature.Route.detectorMap D = 0 := by
  sorry

/-- The synthetic tmf image used in the high-filtration contradiction.
The product and unit are the ones bound by `A.algebra.detector`, on D's
chosen completed tmf; no separate homotopy-ring model is selected. -/
theorem synthetic_eta_theta5_square_detector_zero
    (A : KIP126.Literature.Route.Inputs D η G)
    (theta : BiHom 62 64 (S_0_0 : Syn))
    (htheta : ThetaChoice M D.toModelData theta) :
    sphereProduct η (sphereProduct theta theta) ≫
      KIP126.Literature.Route.detectorMap D = 0 := by
  sorry

/-- The complete synthetic detector argument of Proposition 7.8. The
weight130 exhaustion first gives a classical G detector for every nonzero
F15 element; the same actual realization/unit comparison and tmf source
then contradict zero detector image. No all-power injectivity at weight130
or unqualified classical E5 vanishing is assumed. -/
theorem detector_injective_125_130_filtration15
    (A : KIP126.Literature.Route.Inputs D η G) (I : Inputs D L G)
    (V : SphereVanishingLine H) (S : ClassicalSphereSeparated H)
    (a : BiHom 125 130 (S_0_0 : Syn))
    (ha : KIP126.Synthetic.SpectralSequence.FiltrationAtLeast
      (nuCoefficientUnit H.unit D.nu) 15 a)
    (hz : a ≫ KIP126.Literature.Route.detectorMap D = 0) : a = 0 := by
  sorry

end
end KIP126.Computation.Route
