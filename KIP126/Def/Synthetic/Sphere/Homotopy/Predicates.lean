import KIP126.Def.Synthetic.Sphere.Homotopy.Data

namespace KIP126.Synthetic.Context
open KIP126.StableHomotopy
universe u v
variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- A precise local no-λ-torsion condition: injectivity of the existing action
out of this bidegree. This is a predicate, not a fact about the chosen model. -/
def LambdaInjectiveAt (m n : ℤ) (X : Syn) : Prop :=
  Function.Injective (lambdaAction m n X)

variable [HasFunctorialCofiber (C := Syn)]

/-- Vanishing after the specified quotient map, allowing zero classes. -/
def VanishesModLambda {m n : ℤ} {X : Syn} (r : ℕ) (x : BiHom m n X) : Prop :=
  quotientClass r x = 0

end KIP126.Synthetic.Context
