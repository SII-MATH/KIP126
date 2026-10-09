import ExtComplexCertificates.ActualModuleComplex
import MilnorCertificates.FinitePolynomialAlgebra

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates
open scoped BigOperators

abbrev ActualFiniteRing := FiniteGradedDual 3
abbrev ActualFiniteFreeModule := ActualIndex →₀ ActualFiniteRing

def finiteEdgeCoefficient (i j : ActualIndex) : ActualFiniteRing :=
  ((edgeTerms i j).map fun a => finitePolynomial 3 [a]).sum

theorem finiteEdge_coe (i j : ActualIndex) :
    (finiteEdgeCoefficient i j : ActualRing) = edgeCoefficient i j := by
  unfold finiteEdgeCoefficient edgeCoefficient
  have h (l : List Monomial) : ((l.map fun a => finitePolynomial 3 [a]).sum : ActualRing) =
      (l.map fun a => polynomialRankFunctional 3 [a]).sum := by
    induction l with
    | nil => rfl
    | cons a l ih => simp only [List.map_cons,List.sum_cons,Subring.coe_add,ih]; rfl
  exact h _

noncomputable def finiteBasisBoundary (i : ActualIndex) : ActualFiniteFreeModule :=
  ∑ j : ActualIndex, Finsupp.single j (finiteEdgeCoefficient i j)

noncomputable def finiteDifferential : ActualFiniteFreeModule →ₗ[ActualFiniteRing] ActualFiniteFreeModule :=
  Finsupp.linearCombination ActualFiniteRing finiteBasisBoundary

/-- Coefficientwise inclusion of the finite-support ring into the full dual.
It is an additive map; the two modules have different scalar rings. -/
noncomputable def finiteModuleInclusion : ActualFiniteFreeModule →+ ActualFreeModule :=
  Finsupp.mapRange.addMonoidHom (finiteGradedSubring 3).subtype.toAddMonoidHom

theorem finiteModuleInclusion_apply (x : ActualFiniteFreeModule) (i : ActualIndex) :
    finiteModuleInclusion x i = (x i : ActualRing) := rfl

theorem finiteModuleInclusion_injective : Function.Injective finiteModuleInclusion := by
  intro x y h
  apply Finsupp.ext
  intro i
  apply Subtype.ext
  exact congrArg (fun z : ActualFreeModule => z i) h

theorem finiteModuleInclusion_smul (a : ActualFiniteRing) (x : ActualFiniteFreeModule) :
    finiteModuleInclusion (a • x) = (a : ActualRing) • finiteModuleInclusion x := by
  ext i
  rfl

theorem finiteBoundary_inclusion (i : ActualIndex) :
    finiteModuleInclusion (finiteBasisBoundary i) = basisBoundary i := by
  classical
  rw [finiteBasisBoundary,map_sum]
  unfold basisBoundary
  apply Finset.sum_congr rfl
  intro j hj
  ext k
  simp [finiteModuleInclusion,finiteEdge_coe]

theorem finiteDifferential_single (i : ActualIndex) (a : ActualFiniteRing) :
    finiteDifferential (Finsupp.single i a) = a • finiteBasisBoundary i := by
  simp [finiteDifferential]

/-- The actual finite-support module boundary maps to the previously proved
full-dual boundary, with exactly the same raw terms and product order. -/
theorem finiteDifferential_inclusion (x : ActualFiniteFreeModule) :
    finiteModuleInclusion (finiteDifferential x) = actualDifferential (finiteModuleInclusion x) := by
  classical
  induction x using Finsupp.induction with
  | zero => simp
  | @single_add i a x hi ha ih =>
    rw [map_add,map_add,finiteDifferential_single,finiteModuleInclusion_smul,finiteBoundary_inclusion,
      map_add,map_add,← ih]
    congr 1
    have hs : finiteModuleInclusion (Finsupp.single i a) = Finsupp.single i (a : ActualRing) := by
      ext j
      simp [finiteModuleInclusion]
    rw [hs,actualDifferential_single]

/-- Square-zero for the actual free module over the finite-support subring. -/
theorem finiteDifferential_square_zero : finiteDifferential.comp finiteDifferential = 0 := by
  apply LinearMap.ext
  intro x
  apply finiteModuleInclusion_injective
  rw [LinearMap.comp_apply,finiteDifferential_inclusion,finiteDifferential_inclusion]
  have hz := congrArg (fun f : ActualFreeModule →ₗ[ActualRing] ActualFreeModule =>
    f (finiteModuleInclusion x)) actualDifferential_square_zero
  exact hz

#print axioms finiteDifferential_inclusion
#print axioms finiteDifferential_square_zero
end ExtComplexCertificates.ActualResolution
