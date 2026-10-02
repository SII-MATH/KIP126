import KIP126.Challenge2.Route.Literature.Algebra
import KIP126.Challenge2.Route.Literature.TmfSource

/-! Model multiplication comparisons. These are structural realization
obligations, kept separate from the statement that the source quotient
algebras exist. No specified local multiplication value is a field. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (I : AlgebraData D)

structure AlgebraBinding : Prop where
  classical_detection : ClassicalProductDetection D
  first_quotient : letI := I.syntheticSymmetric
    FirstQuotientMultiplicationCompatible D (I.quotients.algebra 1 (by decide))
  finite_detection : letI := I.syntheticSymmetric
    ∀ (q : ℕ) (hq : 0 < q),
      FiniteQuotientMultiplicationCompatible D q hq (I.quotients.algebra q hq)
  finite_action : FiniteQuotientSphereActionCompatible D
  action_filtration : SphereActionFiltrationCompatible D
  finite_filtration : letI := I.syntheticSymmetric
    ∀ (q : ℕ) (hq : 0 < q),
      FiniteQuotientFiltrationCompatible D q (I.quotients.algebra q hq)
end KIP126.Literature.Route
