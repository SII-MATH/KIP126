import KIP126.Main.Solution.Computation.Comparisons.Tower

/-! Statement track for the preserved consumer API; every goal remains open. -/

namespace KIP126.Classical.Adams

variable [KIP126.Classical.Adams.LinE2Presentation]

noncomputable section
open CategoryTheory MonoidalCategory KIP126.StableHomotopy
  KIP126.StableHomotopy.Cohomology KIP126.Steenrod.Milnor KIP126.Core.SpectralSequence

local notation "H₀" => standardFoundation.hf2

variable [MonoidalPreadditive standardFoundation.Spectrum]
  (R : Mod2RingStructure H₀) (K : Mod2CooperationKunneth H₀ R)
  (B : Mod2ReducedMilnorBasis H₀ R)
  [(tensorLeft (H₀).HF2).CommShift ℤ] [(tensorLeft (H₀).HF2).IsTriangulated]
  [(mod2UnitNatTrans H₀).CommShift ℤ]
  (hK : Mod2KunnethSuspensionCompatible H₀ R K)
  (hD : Mod2KunnethDiagonalCompatible H₀ R K)
  (hU : Mod2KunnethUnitCompatible H₀ R K)
  (hM : Mod2MilnorCoproductCompatible H₀ R K B)
  (a : Mod2Cooperations H₀ 64) (ha : cooperationMilnorPolynomial H₀ R B 64 a = h6Polynomial)

include hK hD hU hM ha

/-- Under the explicit lower structures, the actual internal double class
is the existing computed square, by nonvanishing and the unique nonzero element. -/
theorem Challenge.sphereH6DoubleInternalE2_eq_computedH6Square :
    sphereH6DoubleInternalE2 H₀ R K B hK hD hU hM a ha (sphereMilnorUnitCoefficient H₀ R) =
      computedH6Square := by
  sorry

/-- The fixed computational class has the actual double tensor-boundary
representative, with the derived polynomial coordinate retained. -/
theorem Challenge.computedH6Square_double_representative :
    ∃ u : adamsCycleAmbient (H₀).unit SphereSpectrum 2 128,
      adamsNextCycleToPage (H₀).unit SphereSpectrum 1 le_rfl 2 128 u =
        (adamsPageOneHomologyEquiv (H₀).unit SphereSpectrum 2 128).symm
          (sphereH6DoubleTensorRepresentative H₀ R K a (sphereMilnorUnitCoefficient H₀ R)) ∧
      sphereFirstPageMilnorEquiv H₀ R K B 2 128
        (adamsNextCycleToPage (H₀).unit SphereSpectrum 1 le_rfl 2 128 u) = h6SquareCochain ∧
      (adamsCycleBoundaries (H₀).unit SphereSpectrum 2 (by decide) 2 128).mkQ u =
        (adamsTowerSSDataPageIso (H₀).unit SphereSpectrum 2 128 0).hom computedH6Square := by
  sorry

/-- Every actual Z₂ lift of the specified double first-page cycle represents
the fixed computational class, not just the lift chosen in its construction. -/
theorem Challenge.computedH6Square_of_double_representative
    (u : adamsCycleAmbient (H₀).unit SphereSpectrum 2 128)
    (hu : adamsNextCycleToPage (H₀).unit SphereSpectrum 1 le_rfl 2 128 u =
      (adamsPageOneHomologyEquiv (H₀).unit SphereSpectrum 2 128).symm
        (sphereH6DoubleTensorRepresentative H₀ R K a (sphereMilnorUnitCoefficient H₀ R))) :
    (adamsCycleBoundaries (H₀).unit SphereSpectrum 2 (by decide) 2 128).mkQ u =
      (adamsTowerSSDataPageIso (H₀).unit SphereSpectrum 2 128 0).hom computedH6Square := by
  sorry

/-- For any actual Z₂ lift of the double tensor-boundary representative,
the remaining computational target is exactly liftability of that same
representative through every finite stage. This does not prove those lifts. -/
theorem Challenge.computedH6Square_nonzeroSurvival_iff_double_lifts
    (u : adamsCycleAmbient (H₀).unit SphereSpectrum 2 128)
    (hu : adamsNextCycleToPage (H₀).unit SphereSpectrum 1 le_rfl 2 128 u =
      (adamsPageOneHomologyEquiv (H₀).unit SphereSpectrum 2 128).symm
        (sphereH6DoubleTensorRepresentative H₀ R K a (sphereMilnorUnitCoefficient H₀ R))) :
    NonzeroSurvival sphereAdamsData (2, 128) computedH6Square ↔
      ∀ n : ℕ, u.val ∈ adamsCycles (H₀).unit SphereSpectrum (n + 2) (by omega) 2 128 := by
  sorry

/-- The remaining lifts can be stated entirely using actual homotopy groups
and tower maps: the fixed connecting image in π₁₂₅(T₃S) must come from
π₁₂₅(Tₙ₊₄S) for every n. No compatible family of chosen lifts is assumed. -/
theorem Challenge.computedH6Square_nonzeroSurvival_iff_double_connecting_lifts
    (u : adamsCycleAmbient (H₀).unit SphereSpectrum 2 128)
    (hu : adamsNextCycleToPage (H₀).unit SphereSpectrum 1 le_rfl 2 128 u =
      (adamsPageOneHomologyEquiv (H₀).unit SphereSpectrum 2 128).symm
        (sphereH6DoubleTensorRepresentative H₀ R K a (sphereMilnorUnitCoefficient H₀ R))) :
    NonzeroSurvival sphereAdamsData (2, 128) computedH6Square ↔
      ∀ n : ℕ, ∃ y : HomotopyGroup 125 (adamsTowerAt (H₀).unit SphereSpectrum ((n : ℤ) + 4)),
        adamsI (H₀).unit SphereSpectrum 125 3 ((n : ℤ) + 4) (by omega) y =
          adamsK (H₀).unit SphereSpectrum 2 128 u.val := by
  sorry

end
end KIP126.Classical.Adams
