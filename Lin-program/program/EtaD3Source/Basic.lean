import EtaD3Source.Data

namespace EtaD3Source
open LinearCertificates PageTransitionCertificates PageProductCertificates Data

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)

def zeroMul : Q h0 → Q eta → Q zeroProductTarget :=
  descended _ _ _ _ _ _ zeroProduct.product zeroProduct_valid.2
def detectMul : Q h0 → Q etaTarget → Q detectTarget :=
  descended _ _ _ _ _ _ detectProduct.product detectProduct_valid.2

def namedH0 : Q h0 := Quot.mk _ (⟨fun _ => true, by
  funext i
  exact Fin.elim0 i⟩ : Cycle _)

theorem h0_target_all_zero (x : Q h0Target) : x = zeroQ h0Target := by
  induction x using Quot.inductionOn with
  | h x =>
    apply Quot.sound
    refine ⟨zero, ?_⟩
    funext i
    exact Fin.elim0 i

theorem zero_product_target_all_zero (x : Q zeroProductTarget) :
    x = zeroQ zeroProductTarget := by
  induction x using Quot.inductionOn with
  | h x =>
    apply Quot.sound
    refine ⟨zero, ?_⟩
    funext i
    exact Fin.elim0 i

def sourceCoordinates := homologyEquivalence _ _ etaTarget.comparison etaTarget_valid.2
def targetCoordinates := homologyEquivalence _ _ detectTarget.comparison detectTarget_valid.2

/-- Multiplication by the named h0 is injective on the whole E3 target of
d3(h1), not just on its selected basis vector. -/
theorem detect_coordinates (x : Q etaTarget) :
    targetCoordinates.toCoordinates (detectMul namedH0 x) =
      sourceCoordinates.toCoordinates x := by
  induction x using Quot.inductionOn with
  | h x =>
    change eval detectTarget.comparison.projection
      (product detectProduct.product (fun _ => true) x.val) =
        eval etaTarget.comparison.projection x.val
    exact (show ∀ x : Vec 1, eval detectTarget.comparison.projection
      (product detectProduct.product (fun _ => true) x) =
        eval etaTarget.comparison.projection x from by decide) x.val

theorem detect_injective : Function.Injective (detectMul namedH0) := by
  intro x y h
  have hc := congrArg targetCoordinates.toCoordinates h
  rw [detect_coordinates, detect_coordinates] at hc
  exact (sourceCoordinates.leftInverse x).symm.trans
    ((congrArg sourceCoordinates.fromCoordinates hc).trans (sourceCoordinates.leftInverse y))

theorem detect_reflects_zero (x : Q etaTarget)
    (h : detectMul namedH0 x = zeroQ detectTarget) : x = zeroQ etaTarget := by
  have hc := congrArg targetCoordinates.toCoordinates h
  rw [detect_coordinates] at hc
  have hz : targetCoordinates.toCoordinates (zeroQ detectTarget) = zero := eval_zero _
  have hs : sourceCoordinates.toCoordinates (zeroQ etaTarget) = zero := eval_zero _
  have eq := congrArg sourceCoordinates.fromCoordinates (hc.trans (hz.trans hs.symm))
  exact (sourceCoordinates.leftInverse x).symm.trans
    (eq.trans (sourceCoordinates.leftInverse (zeroQ etaTarget)))

#print axioms h0_target_all_zero
#print axioms zero_product_target_all_zero
#print axioms detect_coordinates
#print axioms detect_injective
#print axioms detect_reflects_zero
end EtaD3Source
