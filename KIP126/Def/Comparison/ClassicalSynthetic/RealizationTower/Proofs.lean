import KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Data
/-! A realization map on Adams pages, induced by the ACTUAL exact strong
monoidal functor. The layer map is a formula in F.map, F's monoidal maps,
the coefficient identification and the tower identification. There is no
freely supplied map of E1/E2 groups. This is the direction of tau inversion
in BHS, SynRevAdams.tex (before Theorem `thm:synth-ASS`).

The comparisons are structural model data; existence and compatibility
proofs are separate obligations. No BHS differential or survivor is assumed.
-/
namespace KIP126.Comparison.ClassicalSynthetic.RealizationTower
open CategoryTheory CategoryTheory.MonoidalCategory
open KIP126.StableHomotopy KIP126.Classical.Adams
universe u v w
noncomputable section
variable {S : Type u} [StableHomotopyCategory.{u, v} S]
  [HasFunctorialCofiber (C := S)]
  {C : Type w} [StableHomotopyCategory.{w, v} C]
  [HasFunctorialCofiber (C := C)]
  (F : S ⥤ C) [F.Monoidal] [F.CommShift ℤ] [F.Additive]
  {HS : S} {HC : C} (unitS : 𝟙_ S ⟶ HS) (unitC : 𝟙_ C ⟶ HC)
  (coefficient : F.obj HS ≅ HC)

/-- Existence for an exact strong monoidal functor, with its coefficient
unit compatibility visible. This is a construction/comparison theorem,
not an assertion of a selected differential. -/
theorem exists_comparison [F.IsTriangulated]
    (hunit : CoefficientUnitCompatible F unitS unitC coefficient)
    (base : F.obj Y ≅ X) :
    Nonempty (Comparison F unitS unitC coefficient Y X base) := by sorry

variable {F unitS unitC coefficient Y X}
  {base : F.obj Y ≅ X} (P : Comparison F unitS unitC coefficient Y X base)

/-- The three triangle equations imply preservation of the ACTUAL
cycle and boundary submodules, at every finite page. -/
theorem e1Map_mem_cycles (r : ℕ) (hr : 1 ≤ r) (s t : ℤ)
    (a : adamsE1 unitS Y s t) (ha : a ∈ adamsCycles unitS Y r hr s t) :
    e1Map P s t a ∈ adamsCycles unitC X r hr s t := by sorry

theorem e1Map_mem_boundaries (r : ℕ) (hr : 1 ≤ r) (s t : ℤ)
    (a : adamsE1 unitS Y s t) (ha : a ∈ adamsBoundaries unitS Y r hr s t) :
    e1Map P s t a ∈ adamsBoundaries unitC X r hr s t := by sorry


end
end KIP126.Comparison.ClassicalSynthetic.RealizationTower
