import KIP126.Def.ClassicalAdams.SphereClasses.Products.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Product.Proofs
import KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Proofs
import KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Proofs

/-! The named Milnor products agree with the internal E₂ multiplication.
These statements use the specified cobar product; comparison with the geometric
Adams tower pairing remains a separate obligation. -/
namespace KIP126.Classical.Adams.Sphere.Internal
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
universe u v
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H)

/-- A product of named generators is the general internal product. -/
theorem hiProduct_eq_product (i j : ℕ) :
    hiProduct H M i j = product H M (hi H M i) (hi H M j) := by
  rw [← MilnorCohomology.comparison_hi H M i,
    ← MilnorCohomology.comparison_hi H M j, product_comparison]
  rfl

/-- The named square is the product of the named class with itself.
Only the equality of the displayed degrees requires transport. -/
theorem hiSquare_eq_product (i : ℕ) :
    hiSquare H M i = reindex H rfl (KIP126.Steenrod.Milnor.hiSquare_internalDegree i)
      (product H M (hi H M i) (hi H M i)) := by
  rw [← MilnorCohomology.comparison_hi H M i, product_comparison,
    reindex_comparison, ← MilnorCohomology.hiSquare_eq_cup,
    MilnorCohomology.comparison_hiSquare]

end
end KIP126.Classical.Adams.Sphere.Internal
