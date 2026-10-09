import KIP126.Def.Steenrod.MilnorCobar.Polynomial.Hi.Proofs
import Lean.Elab.Command
import Lean.Util.CollectAxioms

/-! Exploration for issue #152. These are explicit cobar boundary certificates,
not proofs of database differential rows or of their sphere interpretation. -/
namespace KIP126.Issue152Probe
open KIP126.Steenrod.Milnor KIP126.Core.Algebra MvPolynomial
noncomputable section

-- Hand-written: the reduced coproduct of ξ₂ is ξ₁² ⊗ ξ₁.
theorem xi2_boundary :
    differentialPolynomial 1 (X (0, 1) : TensorPower 1) =
      (X (0, 0) : TensorPower 2) ^ 2 * X (1, 0) := by
  simp [differentialPolynomial, insertLeft, insertRight, splitSlot,
    coproductGenerator, xi, Finset.sum_range_succ,
    add_assoc, CharTwo.add_cancel_left]
  rw [add_comm (_ ^ 2 * _) _, CharTwo.add_cancel_left]

-- Hand-written: ξ₁³ + ξ₂ certifies the other order of the product.
theorem h0_h1_boundary :
    differentialPolynomial 1 ((X (0, 0) : TensorPower 1) ^ 3 + X (0, 1)) =
      (X (0, 0) : TensorPower 2) * X (1, 0) ^ 2 := by
  rw [map_add, xi2_boundary]
  simp [differentialPolynomial, insertLeft, insertRight, splitSlot,
    coproductGenerator, xi, Finset.sum_range_succ]
  ring_nf
  have h2 : (2 : TensorPower 2) = 0 := CharTwo.two_eq_zero
  have h3 : (3 : TensorPower 2) = 1 := by
    calc
      3 = (2 : TensorPower 2) + 1 := by ring
      _ = 1 := by rw [h2, zero_add]
  have h4 : (4 : TensorPower 2) = 0 := by
    calc
      4 = (2 : TensorPower 2) + 2 := by ring
      _ = 0 := by rw [h2, zero_add]
  simp only [h2, h3, h4, mul_zero, mul_one, zero_add, add_zero]

#print axioms xi2_boundary
#print axioms h0_h1_boundary
end
end KIP126.Issue152Probe

open Lean Elab Command in
run_cmd do
  for decl in [``KIP126.Issue152Probe.xi2_boundary,
      ``KIP126.Issue152Probe.h0_h1_boundary] do
    let axioms ← Lean.collectAxioms decl
    for ax in axioms do
      unless ax ∈ [``propext, ``Classical.choice, ``Quot.sound] do
        throwError "unexpected axiom in low-cobar probe: {decl}: {ax}"
