import KIP126.Def.Synthetic.Completion.Predicates

namespace KIP126.Synthetic.Context

open CategoryTheory

universe u v

variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- The residual sequence uses the same actual λ powers as the quotient
objects, including their specified suspension comparisons. -/
theorem lambdaResidualSequence_step_comp_lambdaPow (A : Syn) (n : ℕ) :
    (lambdaResidualSequence A).step n ≫ lambdaPow n A = lambdaPow (n + 1) A := by
  sorry

end KIP126.Synthetic.Context
