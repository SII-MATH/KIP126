import KIP126.Main.Solution.StageInput
import KIP126.Main.Solution.Computation.Lambda
import KIP126.Def.Kervaire.Route.Section7.AlphaOne

/-! Main deductions in Proposition 7.8 and Lemma `lem:x_123_9`.
All source results, complete bases, products and staircase data are the
ones delivered by the sole correlated Challenge2 witness. These are proof
obligations, not added fields of M, A or C. -/
namespace KIP126.Main.Solution.Route.Section7
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Kervaire.Route KIP126.Kervaire.Route.Section7
open KIP126.Literature.Route KIP126.Main.StageInput
noncomputable section
-- Keep type unification from expanding the full CSV relation ideal.
attribute [local irreducible] KIP126.LinE2.homogeneousPart
local notation "D" => routeModel
local notation "M" => standardMilnorCooperations
local notation "L" => routeLabels
local notation "I" => routeComputation
local notation "η" => routeEta
local notation "h₀" => routeLiterature.toda.h0

abbrev eV := (I).realization.sphere 9 132 KIP126.Computation.Near126.V
abbrev eCorrection := (I).realization.sphere 13 137 KIP126.Computation.Near126.correction

open KIP126.LinE2 KIP126.Computation.Near126 in
/-- The Q9 d3 actually used to eliminate the other AF13 error direction.
The weight131 target is nonzero on E3, not just an E2 label with exponent8. -/
theorem ninth_quotient_error_d3 :
    FiniteNonzeroDifferential D 9 3 13 137 16 139 6 8
      ((I).realization.sphere 13 137 (mulAt (atom .h4) (atom .x_109_12)))
      ((I).realization.sphere 16 139 (mulAt dataH1 (atom .x_122_15_2))) := by
  sorry

open KIP126.LinE2 KIP126.Computation.Near126 in
/-- Q11, weight130: both common E7 representatives and target nonzero
are required. BHS lifting of the classical equation alone is insufficient. -/
theorem eleventh_quotient_candidate_d7 :
    FiniteNonzeroDifferential D 11 7 11 134 18 140 4 10
      ((I).realization.sphere 11 134 d7Source)
      ((I).realization.sphere 18 140 (mulAt dataH1 (atom .x_121_17))) := by
  sorry

open KIP126.LinE2 KIP126.Computation.Near126 in
/-- The other Q11 weight130 candidate supports a nonzero E3 differential.
Its target has the same degree as the d7 target but a different E2 label. -/
theorem eleventh_quotient_candidate_d3 :
    FiniteNonzeroDifferential D 11 3 15 138 18 140 8 10
      ((I).realization.sphere 15 138 (mulAt h0Sq (atom .x_123_13_2)))
      ((I).realization.sphere 18 140 (mulAt h0Sq (atom .x_122_16))) := by
  sorry

/-- In Q9 both preceding targets have exponent10, so this WHOLE component
vanishes on every finite page. Transport of the BHS nu(S) statement uses
the same unit isomorphism and actual quotient functor. -/
theorem ninth_quotient_candidate_target_zero (r : ℤ) (hr : 2 ≤ r) :
    Subsingleton (((D).family.quotient (S_0_0 : KIP126.Def.standardRouteInput.Syn) 9).Page
      r (18,140,130)) := by
  sorry

/-- The actual rho page map kills these Q11 targets in Q9. This records
the map used in Lemma x1239, rather than only comparing two dimensions. -/
theorem rho_to_ninth_kills_candidate_target (r : ℤ) (hr : 2 ≤ r)
    (y : ((D).family.quotient (S_0_0 : KIP126.Def.standardRouteInput.Syn) 11).Page
      r (18,140,130)) :
    familyPageMap (D).family ((D).quotientTower S_0_0 |>.rho 9 11 (by decide))
      r (18,140,130) y = 0 := by
  exact (ninth_quotient_candidate_target_zero r hr).elim _ _

/-- `prop:possible_h_6_sq`: complete stem124 staircase reconstruction,
including the negative-filtration half-plane, before passing to homotopy.
This is E-infinity vanishing, not a false E2 vanishing assertion. -/
theorem classical_stem124_einfty_below_ten (s : ℤ) (hs : s < 10) :
    Subsingleton ((adamsTowerInternalSpectralSequence standardFoundation.hf2.unit
      SphereSpectrum).ssData (s,s+124)).eInfty := by
  sorry

/-- Full AF10 exhaustion in `prop:possible_h_6_sq`: incoming d2/d4,
the remaining outgoing d5, and U's nonzero permanence are all needed. -/
theorem classical_stem124_af10_generated :
    ClassicalInfinityGenerated 10 134 ((L).U M) := by
  sorry

/-- Full AF13 exhaustion. The E2 group has four basis vectors; only the
permanent correction remains at infinity. Finite Reaches1000 uses V's
independent tail before it may supply the infinite representative. -/
theorem classical_stem124_af13_generated :
    ClassicalInfinityGenerated 13 137 eCorrection := by
  sorry

/-- The filtration bound in Proposition 7.8 additionally uses injectivity
of realization at (124,128); a classical bound alone does not exclude
synthetic lambda-torsion at lower filtration. -/
theorem theta5_square_filtration_ten
    (theta : BiHom 62 64 (S_0_0 : KIP126.Def.standardRouteInput.Syn))
    (htheta : ThetaChoice M (D).toModelData theta) :
    FiltrationAtLeast (nuCoefficientUnit standardFoundation.hf2.unit (D).nu) 10
      (sphereProduct theta theta) := by
  sorry

/-- The three exhaustive branches in Proposition 7.8, retaining a real
lambda preimage in the third branch and nonzero leading detection in the
first two. This does not assume which branch actually occurs. -/
theorem theta5_square_three_cases
    (theta : BiHom 62 64 (S_0_0 : KIP126.Def.standardRouteInput.Syn))
    (htheta : ThetaChoice M (D).toModelData theta) :
    C4At M (D).toModelData L theta ∨
      SphereDetected D 13 137 9 eCorrection (sphereProduct theta theta) ∨
      ∃ a : BiHom 124 138 (S_0_0 : KIP126.Def.standardRouteInput.Syn),
        lambdaMultiply 10 a = sphereProduct theta theta := by
  sorry

/-- At weight130 and stem123 the BHS finite-quotient window for Q9 is
7<=s<=15. Every graded piece at s>=16 vanishes. Actual separatedness
then kills the filtration, without asserting lambda^9 acts as zero on Q9. -/
theorem ninth_quotient_stem123_weight130_filtration16_zero
    (a : BiHom 123 130 (XModLambdaN (S_0_0 : KIP126.Def.standardRouteInput.Syn) 9))
    (ha : FiltrationAtLeast (nuCoefficientUnit standardFoundation.hf2.unit (D).nu) 16 a) :
    a = 0 := by
  sorry

/-- The calculation is performed in Q11: its two weight130 candidates
support the nonzero d7(lambda^4 d7Source) and d3(lambda^8 h0^2 x123,13,2).
Those targets disappear in Q9, so doing the calculation there first would
lose the needed exclusion. All representatives with this detector qualify. -/
theorem alpha_one_h0_filtration_seventeen
    (a : BiHom 123 132 (XModLambdaN (S_0_0 : KIP126.Def.standardRouteInput.Syn) 11))
    (ha : FiniteDetected D 11 (by decide) 9 132 0 eV a) :
    FiltrationAtLeast (nuCoefficientUnit standardFoundation.hf2.unit (D).nu) 17
      (lambdaMultiply 3 (sphereAction h₀ a)) := by
  sorry

/-- `lem:x_123_9`: this includes the nonzero Q9 d3 on lambda^6 h4x109,12,
all error-space exhaustion, and rho's actual preservation of filtration.
The three exact homotopy equations are not inferred from leading Ext
relations alone. They remain internal proof obligations here. -/
theorem alpha_one_exists :
    ∃ a11 : BiHom 123 132 (XModLambdaN (S_0_0 : KIP126.Def.standardRouteInput.Syn) 11),
      AlphaOneProperties D η h₀ ((L).U M) eV a11 := by
  sorry

end
end KIP126.Main.Solution.Route.Section7
