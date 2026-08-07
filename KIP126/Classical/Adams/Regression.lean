import KIP126.Classical.Adams.Basic
import KIP126.External.Claims

/-!
# Regression checks for the first classical Adams slice

The h₄ calculation is an explicit external input.  The regression therefore
checks its degree, Mathlib page passage, and catalogue provenance for every
chosen sphere presentation carrying that input; it does not manufacture the
literature calculation as a project axiom.
-/

namespace KIP126.Classical.Adams.Regression

open CategoryTheory KIP126.External

variable {stable : StableHomotopyContext}
  {A : ClassicalAdamsSS stable stable.sphere}

example (P : SphereAdamsPresentation A)
    (input : CataloguedExternalResult (KIP126.Classical.adamsOneLineDifferentials P)) :
    input.value.InventoryValid :=
  CataloguedExternalResult.inventoryValid input

example :
    classicalAdamsTarget 2 (1, 16) = (3, 17) := by
  norm_num [classicalAdamsTarget, classicalAdamsShift]

example (P : SphereAdamsPresentation A)
    (proof : adamsOneLineDifferentials P) :
    (cataloguedAdamsOneLine P proof).value.ref.locator.artifact =
      some "aimpaper/main.tex" := by
  let input := cataloguedAdamsOneLine P proof
  change input.value.ref.locator.artifact = some "aimpaper/main.tex"
  rw [input.ref_eq]
  rfl

example (b : Bidegree) :
    (classicalAdamsShape 2).Rel b (classicalAdamsTarget 2 b) :=
  classicalAdamsShape_two_rel b

example (b : Bidegree) :
    (A.E₂).homology b ≅ (A.E₃).X b :=
  A.e₂ToE₃ b

example (P : SphereAdamsPresentation A)
    (proof : KIP126.Classical.adamsOneLineDifferentials P) :
    ∃ statement : AdamsD₂Statement A,
      statement.source = P.h 4 ∧
        statement.target = sphereProduct P (P.h 0)
          (sphereProduct P (P.h 3) (P.h 3)) ∧
        statement.source.degree = (1, 16) ∧
        statement.target.degree = (3, 17) :=
  KIP126.Classical.adamsOneLineDifferentials_h₄_degrees P proof

example :
    (externalClaimLedger.lookup .adamsOneLine).owner =
      `KIP126.Classical.adamsOneLineDifferentials := rfl

example :
    (externalClaimLedger.lookup .adamsOneLine).classification =
      .compositeResult := rfl

example (P : SphereAdamsPresentation A)
    (proof : KIP126.Classical.adamsOneLineDifferentials P) :
    (cataloguedAdamsOneLine P proof).root = .adamsOneLine := rfl

end KIP126.Classical.Adams.Regression

#print axioms KIP126.Classical.Adams.classicalAdamsShift_two
#print axioms KIP126.Classical.Adams.classicalAdamsShape_two_rel
#print axioms KIP126.Classical.Adams.cataloguedAdamsOneLine
#print axioms KIP126.Classical.adamsOneLineDifferentials_h₄_degrees
