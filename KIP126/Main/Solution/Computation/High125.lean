import KIP126.Main.Solution.Computation.Tmf

/-!
# The weight130 high-filtration argument of Proposition 7.8

LWX `prop:possible_h_6_sq` uses the actual group pi_(125,130) and its
lambda^10-divisible subgroup. It does not claim that all classical E5
components with AF>=15, AF!=25 vanish. The AF15 d5 source and AF18 d5
target in `Computation.Route` are both nonzero on E5.

These are internal Main proof obligations on the same D and I. BHS gives
the synthetic E-infinity formulas, actual lambda maps and filtration
comparison. The finite C basis/differential reconstruction and the
independent vanishing line control the whole range; D.homotopySeparated
removes the infinitely filtered remainder. No selected survival, torsion
or exhaustion statement is added to Model, literature or C.
-/
namespace KIP126.Computation.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context
open KIP126.Synthetic.SpectralSequence KIP126.Kervaire.Route
open KIP126.Literature.Route
open KIP126.LinE2 KIP126.Computation.Near126
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  {D : Model H M Syn} {L : Labels H} {G : TmfLabels H}

attribute [local irreducible] KIP126.LinE2.homogeneousPart

/-- At weight130, finite E5 vanishing at AF26..64 and the classical tail
bound kill the entire actual F26. BHS quotients by the relevant incoming
boundaries (lambda exponent s-5>=21 in this range). The proof must pass
from all associated grades to the actual group using D.homotopySeparated;
neither the finite table cutoff nor graded convergence alone suffices. -/
theorem stem125_weight130_filtration26_zero
    (I : Inputs D L G) (BHS : SyntheticInputs D) (V : SphereVanishingLine H)
    (a : BiHom 125 130 (S_0_0 : Syn))
    (ha : FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 26 a) : a = 0 := by
  sorry

/-- The precise high-filtration elimination in pi_(125,130).
In AF15..24 the finite records and BHS weight130 formula leave no
associated grade. In particular the d5 source at AF15 is not a permanent
cycle, and the AF18 d5 target has lambda exponent13>=4. Boundary-lift
arguments may choose a lambda^4-torsion lift; arbitrary lifts can differ
by higher filtration, which this range calculation must retain and remove.
This is not a claim that every lift of that target is lambda^4-torsion. -/
theorem stem125_weight130_filtration15_eq25
    (I : Inputs D L G) (BHS : SyntheticInputs D) (V : SphereVanishingLine H)
    (a : BiHom 125 130 (S_0_0 : Syn)) :
    FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 15 a ↔
      FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 25 a := by
  sorry

/-- Transport BHS filtration/lambda divisibility from nu(S) along the
specified D.nu.unitIso. The exponent is 125+15-130=10 and the lift has
weight140. The comparison concerns the untruncated sphere only. -/
theorem stem125_weight130_filtration15_iff_lambda10
    (BHS : SyntheticInputs D) (a : BiHom 125 130 (S_0_0 : Syn)) :
    FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 15 a ↔
      ∃ b : BiHom 125 140 (S_0_0 : Syn), lambdaMultiply 10 b = a := by
  sorry

/-- All first-quotient G lifts have the same lambda^20 image in weight130.
Their difference is retained as a higher-filtration error, then killed by
`stem125_weight130_filtration26_zero`. This is representative independence
at weight130, not uniqueness of the lifts in weight150. -/
theorem high125_lift_unique_at_weight130
    (I : Inputs D L G) (BHS : SyntheticInputs D) (V : SphereVanishingLine H)
    (b b' : BiHom 125 150 (S_0_0 : Syn))
    (hb : D.sphereFirstQuotient 25 150 (quotientClass 1 b) =
      I.realization.sphere 25 150 highClass)
    (hb' : D.sphereFirstQuotient 25 150 (quotientClass 1 b') =
      I.realization.sphere 25 150 highClass) :
    lambdaMultiply 20 b = lambdaMultiply 20 b' := by
  sorry

/-- The word lambda-free is expressed by every actual finite power, not
just nonvanishing at weight130. BHS lifetime applies to the permanent G
label and every chosen first-quotient lift; the same sphere/nu unit
comparison transports the result to b. -/
theorem high125_lift_lambda_powers_nonzero
    (I : Inputs D L G) (R : RealizationInput D)
    (hhigh : NonzeroSurvival (sequence D .sphere) (25,150) (G.high125 M))
    (b : BiHom 125 150 (S_0_0 : Syn))
    (hb : D.sphereFirstQuotient 25 150 (quotientClass 1 b) =
      I.realization.sphere 25 150 highClass) :
    ∀ k : ℕ, lambdaMultiply k b ≠ 0 := by
  sorry

/-- The exact two-element high-filtration subgroup used by Proposition7.8.
The G lift is linked to I's actual E2 label by the actual first quotient;
its lambda^20 image, rather than an arbitrary named homotopy class, spans
F15. Nonzero permanence of G is an explicit prior Main deduction, with
the producer `high125_nonzero_survival_of_computation` below. It is not a
new C premise, and is distinct from the desired h6^2 permanence. -/
theorem high125_weight130_exhaustion
    (I : Inputs D L G) (BHS : SyntheticInputs D) (R : RealizationInput D)
    (V : SphereVanishingLine H)
    (hhigh : NonzeroSurvival (sequence D .sphere) (25,150) (G.high125 M)) :
    ∃ b : BiHom 125 150 (S_0_0 : Syn),
      D.sphereFirstQuotient 25 150 (quotientClass 1 b) =
        I.realization.sphere 25 150 highClass ∧
      lambdaMultiply 20 b ≠ 0 ∧
      ∀ a : BiHom 125 130 (S_0_0 : Syn),
        FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 15 a ↔
          a = 0 ∨ a = lambdaMultiply 20 b := by
  sorry

/-- The same exhaustion with every numerical and source premise exposed.
The source tmf product gives one nonzero classical image; the earlier
Main theorem obtains G's nonzero permanence using C, V, classical
separation and multiplicative detection. Thus the hhigh premise above is
produced without the Proposition7.8 exhaustion being assumed in A or C. -/
theorem high125_weight130_exhaustion_of_source
    (I : Inputs D L G) (BHS : SyntheticInputs D) (R : RealizationInput D)
    (V : SphereVanishingLine H) (S : ClassicalSphereSeparated H)
    (source : TmfSourceData H) (hsource : TmfSourceResults source)
    (binding : TmfBinding D G source) (multiplicative : ClassicalProductDetection D) :
    ∃ b : BiHom 125 150 (S_0_0 : Syn),
      D.sphereFirstQuotient 25 150 (quotientClass 1 b) =
        I.realization.sphere 25 150 highClass ∧
      lambdaMultiply 20 b ≠ 0 ∧
      ∀ a : BiHom 125 130 (S_0_0 : Syn),
        FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 15 a ↔
          a = 0 ∨ a = lambdaMultiply 20 b := by
  exact high125_weight130_exhaustion I BHS R V
    (KIP126.Main.Solution.Computation.high125_nonzero_survival_of_computation
      D I V S source hsource binding multiplicative)

/-- Every nonzero high-filtration class has the specified classical G
detector after the SAME realization. This is the input to the tmf
detection argument. The source sphere is transported to nu(S) by the
existing unit iso; no new realization or detected representative is chosen. -/
theorem high125_weight130_nonzero_classical_detection
    (I : Inputs D L G) (BHS : SyntheticInputs D) (R : RealizationInput D)
    (V : SphereVanishingLine H)
    (hhigh : NonzeroSurvival (sequence D .sphere) (25,150) (G.high125 M))
    (a : BiHom 125 130 (S_0_0 : Syn))
    (ha : FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 15 a) (hne : a ≠ 0) :
    TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (G.high125 M) (realizeNu D R.coordinates .sphere (a ≫ D.nu.unitIso.inv)) := by
  sorry

/-- Equivalent lambda-divisibility form of the same full subgroup statement.
The lambda^10 source has weight140; the distinguished lambda^20 generator
has weight150 before multiplication. No ambiguous lambda-free label or
classical E5 vanishing is substituted for these actual maps. -/
theorem high125_weight130_lambda10_exhaustion
    (I : Inputs D L G) (BHS : SyntheticInputs D) (R : RealizationInput D)
    (V : SphereVanishingLine H)
    (hhigh : NonzeroSurvival (sequence D .sphere) (25,150) (G.high125 M)) :
    ∃ b : BiHom 125 150 (S_0_0 : Syn),
      D.sphereFirstQuotient 25 150 (quotientClass 1 b) =
        I.realization.sphere 25 150 highClass ∧
      lambdaMultiply 20 b ≠ 0 ∧
      ∀ a : BiHom 125 130 (S_0_0 : Syn),
        (∃ c : BiHom 125 140 (S_0_0 : Syn), lambdaMultiply 10 c = a) ↔
          a = 0 ∨ a = lambdaMultiply 20 b := by
  obtain ⟨b, hb, hn, hexhaust⟩ := high125_weight130_exhaustion I BHS R V hhigh
  exact ⟨b, hb, hn, fun a =>
    (stem125_weight130_filtration15_iff_lambda10 BHS a).symm.trans (hexhaust a)⟩

end
end KIP126.Computation.Route
