import Row3143D0Leibniz.Data

namespace Row3143D0Leibniz
open LinearCertificates PageTransitionCertificates PageProductCertificates Data

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def sourceMul : Q d0 → Q right → Q source :=
  descended _ _ _ _ _ _ sourceProduct.product sourceProduct_valid.2
def rightMul : Q d0 → Q rightTarget → Q target :=
  descended _ _ _ _ _ _ rightProduct.product rightProduct_valid.2

def namedD0 : Q d0 := Quot.mk _ (⟨fun _ => true, by
  exact (show eval (out d0) (fun _ => true) = zero from by decide)⟩ : Cycle _)
def namedRight : Q right := Quot.mk _ (⟨fun _ => true, by
  exact (show eval (out right) (fun _ => true) = zero from by decide)⟩ : Cycle _)
def namedSource : Q source := Quot.mk _ (⟨fun i => i.val == 0, by
  exact (show eval (out source) (fun i => i.val == 0) = zero from by decide)⟩ : Cycle _)

theorem named_product : sourceMul namedD0 namedRight = namedSource := by
  apply Quot.sound
  change InImage (inc source)
    (add (product sourceProduct.product (fun _ => true) (fun _ => true)) (fun i => i.val == 0))
  refine ⟨zero, ?_⟩
  exact (show eval (inc source) zero =
    add (product sourceProduct.product (fun _ => true) (fun _ => true)) (fun i => i.val == 0) from by decide)

def sourceCoordinates := homologyEquivalence _ _ source.comparison source_valid.2
def rightTargetCoordinates := homologyEquivalence _ _ rightTarget.comparison rightTarget_valid.2
def targetCoordinates := homologyEquivalence _ _ target.comparison target_valid.2

theorem named_source_coordinates : sourceCoordinates.toCoordinates namedSource =
    (fun _ : Fin 1 => true) := by decide

theorem named_source_nonzero : namedSource ≠ zeroQ source := by
  intro h
  have coordinates := congrArg sourceCoordinates.toCoordinates h
  have hz : sourceCoordinates.toCoordinates (zeroQ source) = zero := eval_zero _
  exact (show (fun _ : Fin 1 => true) ≠ zero from by decide)
    (named_source_coordinates.symm.trans (coordinates.trans hz))

/-- The nonzero E3 right-target class is E2 column 2, not column 1. -/
def nonzeroRightTarget : Q rightTarget :=
  rightTargetCoordinates.fromCoordinates (fun _ => true)
theorem right_product_nonzero :
    targetCoordinates.toCoordinates (rightMul namedD0 nonzeroRightTarget) =
      (fun _ : Fin 1 => true) := by decide

theorem quotient_zero {w : WireComparison} (valid : w.Valid) (dimension : w.h = 0)
    (x : Q w) : x = zeroQ w := by
  let e := homologyEquivalence _ _ w.comparison valid.2
  have same : e.toCoordinates x = e.toCoordinates (zeroQ w) := by
    funext i
    exact False.elim (by have := i.isLt; omega)
  exact (e.leftInverse x).symm.trans ((congrArg e.fromCoordinates same).trans (e.leftInverse _))

theorem left_d3_target_zero (x : Q leftD3Target) : x = zeroQ leftD3Target :=
  quotient_zero leftD3Target_valid rfl x
theorem right_d3_target_zero (x : Q rightD3Target) : x = zeroQ rightD3Target :=
  quotient_zero rightD3Target_valid rfl x
theorem left_d4_target_zero (x : Q leftTarget) : x = zeroQ leftTarget :=
  quotient_zero leftTarget_valid rfl x

def zeroStep : WireComparison :=
  { version := 1, k := 0, m := 1, n := 0, h := 1,
    outgoing := [], incoming := [], inclusion := [true], projection := [true], up := [], down := [] }
theorem zeroStep_valid : zeroStep.Valid := by lin_cert using ()
theorem zeroStep_accepted : checkWire zeroStep = true := by decide

#print axioms named_product
#print axioms named_source_coordinates
#print axioms named_source_nonzero
#print axioms right_product_nonzero
#print axioms quotient_zero
#print axioms left_d3_target_zero
#print axioms right_d3_target_zero
#print axioms left_d4_target_zero
#print axioms zeroStep_valid
end Row3143D0Leibniz
