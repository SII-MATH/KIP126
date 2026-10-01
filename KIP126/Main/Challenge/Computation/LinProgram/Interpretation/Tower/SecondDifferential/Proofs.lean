import KIP126.Main.Solution.Computation.Comparisons.SecondDifferential

/-! Statement track for the preserved consumer API; every goal remains open. -/

namespace KIP126.Classical.Adams

variable [KIP126.Classical.Adams.LinE2Presentation]

noncomputable section
open CategoryTheory MonoidalCategory KIP126.StableHomotopy
  KIP126.StableHomotopy.Cohomology KIP126.Steenrod.Milnor

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
  (u : adamsCycleAmbient (H₀).unit SphereSpectrum 2 128)
  (hu : adamsNextCycleToPage (H₀).unit SphereSpectrum 1 le_rfl 2 128 u =
    (adamsPageOneHomologyEquiv (H₀).unit SphereSpectrum 2 128).symm
      (sphereH6DoubleTensorRepresentative H₀ R K a (sphereMilnorUnitCoefficient H₀ R)))

include hK hD hU hM ha hu

/-- Any lift of the actual connecting image to T₄ computes d₂ of the
fixed data class. The target quotient has bidegree `(4,129)`. -/
theorem Challenge.computedH6Square_d_two_value_of_double_lift
    (y : HomotopyGroup 125 (adamsTowerAt (H₀).unit SphereSpectrum 4))
    (hy : adamsI (H₀).unit SphereSpectrum 125 3 4 (by decide) y =
      adamsK (H₀).unit SphereSpectrum 2 128 u.val) :
    (adamsTowerSSDataPageIso (H₀).unit SphereSpectrum 4 129 0).hom
      ((sphereAdamsData.d 2 (2, 128)).hom computedH6Square) =
        adamsJToPage (H₀).unit SphereSpectrum 2 (by decide) 4 129 y := by
  sorry

/-- Every actual double representative supplies a T₄ lift computing the
existing internal differential of the data square. -/
theorem Challenge.computedH6Square_d_two_double_value_exists :
    ∃ y : HomotopyGroup 125 (adamsTowerAt (H₀).unit SphereSpectrum 4),
      adamsI (H₀).unit SphereSpectrum 125 3 4 (by decide) y =
        adamsK (H₀).unit SphereSpectrum 2 128 u.val ∧
      (adamsTowerSSDataPageIso (H₀).unit SphereSpectrum 4 129 0).hom
        ((sphereAdamsData.d 2 (2, 128)).hom computedH6Square) =
          adamsJToPage (H₀).unit SphereSpectrum 2 (by decide) 4 129 y := by
  sorry

/-- The actual obstruction d₂ vanishes precisely when k(u) lifts to T₅.
This equivalence supplies no such lift by itself. -/
theorem Challenge.computedH6Square_d_two_eq_zero_iff_double_lift :
    (sphereAdamsData.d 2 (2, 128)).hom computedH6Square = 0 ↔
      ∃ y : HomotopyGroup 125 (adamsTowerAt (H₀).unit SphereSpectrum 5),
        adamsI (H₀).unit SphereSpectrum 125 3 5 (by decide) y =
          adamsK (H₀).unit SphereSpectrum 2 128 u.val := by
  sorry

/-- Leibniz compatibility for the actual d₂ supplies the next tower lift of
the specified double representative. The compatibility remains an explicit
unproved premise, not a new axiom or a permanence assertion. -/
theorem Challenge.computedH6Square_double_lift_five_of_leibniz
    (hL : linE2Presentation.SecondDifferentialLeibniz) :
    ∃ y : HomotopyGroup 125 (adamsTowerAt (H₀).unit SphereSpectrum 5),
      adamsI (H₀).unit SphereSpectrum 125 3 5 (by decide) y =
        adamsK (H₀).unit SphereSpectrum 2 128 u.val := by
  sorry

end
end KIP126.Classical.Adams
