import Row2907PDeltaDetection.Data
import Row3143D0Leibniz.Basic

namespace Row2907PDeltaDetection
open LinearCertificates PageTransitionCertificates PageProductCertificates Data

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

def sourceMul : Q c12_42_2 → Q c16_137_2 → Q c28_179_2 :=
  descended _ _ _ _ _ _ sourceProduct.product sourceProduct_valid.2
def targetMul : Q c12_42_2 → Q c20_140_2 → Q c32_182_2 :=
  descended _ _ _ _ _ _ targetProduct.product targetProduct_valid.2

def namedFactor : Q c12_42_2 := Quot.mk _ (⟨fun _ => true,by
  exact (show eval (out c12_42_2) (fun _ => true) = zero from by decide)⟩ : Cycle _)
def namedSource : Q c16_137_2 := Quot.mk _ (⟨fun i => i.val == 1,by
  exact (show eval (out c16_137_2) (fun i => i.val == 1) = zero from by decide)⟩ : Cycle _)
def namedProduct : Q c28_179_2 := Quot.mk _ (⟨fun i => i.val == 1,by
  exact (show eval (out c28_179_2) (fun i => i.val == 1) = zero from by decide)⟩ : Cycle _)
def namedTarget : Q c20_140_2 := Quot.mk _ (⟨fun i => i.val == 0,by
  exact (show eval (out c20_140_2) (fun i => i.val == 0) = zero from by decide)⟩ : Cycle _)
def namedKnownTarget : Q c32_182_2 := Quot.mk _ (⟨fun i => i.val == 1,by
  exact (show eval (out c32_182_2) (fun i => i.val == 1) = zero from by decide)⟩ : Cycle _)

theorem named_product : sourceMul namedFactor namedSource = namedProduct := by
  apply Quot.sound
  refine ⟨zero,?_⟩
  exact (show eval (inc c28_179_2) zero =
    add (product sourceProduct.product (fun _ => true) (fun i => i.val == 1))
      (fun i => i.val == 1) from by decide)

theorem named_target_product : targetMul namedFactor namedTarget = namedKnownTarget := by
  apply Quot.sound
  refine ⟨zero,?_⟩
  exact (show eval (inc c32_182_2) zero =
    add (product targetProduct.product (fun _ => true) (fun i => i.val == 0))
      (fun i => i.val == 1) from by decide)

def factorCoordinates := homologyEquivalence _ _ c12_42_2.comparison c12_42_2_valid.2
def sourceCoordinates := homologyEquivalence _ _ c16_137_2.comparison c16_137_2_valid.2
def productCoordinates := homologyEquivalence _ _ c28_179_2.comparison c28_179_2_valid.2
def targetCoordinates := homologyEquivalence _ _ c20_140_2.comparison c20_140_2_valid.2
def knownTargetCoordinates := homologyEquivalence _ _ c32_182_2.comparison c32_182_2_valid.2

theorem named_factor_coordinates : factorCoordinates.toCoordinates namedFactor =
    (fun _ : Fin 1 => true) := by decide
theorem named_source_coordinates : sourceCoordinates.toCoordinates namedSource =
    (fun i : Fin 2 => i.val == 0) := by decide
theorem named_product_coordinates : productCoordinates.toCoordinates namedProduct =
    (fun _ : Fin 1 => true) := by decide
theorem named_target_coordinates : targetCoordinates.toCoordinates namedTarget =
    (fun i : Fin 2 => i.val == 0) := by decide
theorem named_known_target_coordinates : knownTargetCoordinates.toCoordinates namedKnownTarget =
    (fun _ : Fin 1 => true) := by decide

theorem left_d3_target_zero (x : Q c15_44_2) : x = zeroQ c15_44_2 :=
  Row3143D0Leibniz.quotient_zero c15_44_2_valid rfl x
theorem left_d4_target_zero (x : Q c16_45_2) : x = zeroQ c16_45_2 :=
  Row3143D0Leibniz.quotient_zero c16_45_2_valid rfl x

#print axioms named_product
#print axioms named_target_product
#print axioms named_factor_coordinates
#print axioms named_source_coordinates
#print axioms named_product_coordinates
#print axioms named_target_coordinates
#print axioms named_known_target_coordinates
#print axioms left_d3_target_zero
#print axioms left_d4_target_zero
end Row2907PDeltaDetection
