import Row3135H0Leibniz.Data

namespace Row3135H0Leibniz
open LinearCertificates PageTransitionCertificates PageProductCertificates Data

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)
def coordinates (w : WireComparison) (valid : w.Valid) :=
  homologyEquivalence _ _ w.comparison valid.2

def sourceMul : Q h0 → Q right → Q source :=
  descended _ _ _ _ _ _ sourceProduct.product sourceProduct_valid.2
def rightMul : Q h0 → Q rightTarget → Q target :=
  descended _ _ _ _ _ _ rightProduct.product rightProduct_valid.2

def namedH0 : Q h0 := (coordinates _ h0_valid).fromCoordinates (fun _ => true)
def namedRight : Q right := (coordinates _ right_valid).fromCoordinates (fun _ => true)
def namedSource : Q source :=
  (coordinates _ source_valid).fromCoordinates (fun i => i.val == 1)
def knownDifferential : Q rightTarget :=
  (coordinates _ rightTarget_valid).fromCoordinates (fun i => i.val == 1)

theorem named_product : sourceMul namedH0 namedRight = namedSource := by
  let E := coordinates source source_valid
  have h : E.toCoordinates (sourceMul namedH0 namedRight) =
      E.toCoordinates namedSource := by decide
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse _))

theorem known_product_zero : rightMul namedH0 knownDifferential = zeroQ target := by
  let E := coordinates target target_valid
  have h : E.toCoordinates (rightMul namedH0 knownDifferential) =
      E.toCoordinates (zeroQ target) := by decide
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse _))

theorem left_target_all_zero (x : Q leftTarget) : x = zeroQ leftTarget := by
  let E := coordinates leftTarget leftTarget_valid
  have h : E.toCoordinates x = E.toCoordinates (zeroQ leftTarget) :=
    funext fun i => Fin.elim0 i
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse _))

theorem named_source_coordinate : (coordinates source source_valid).toCoordinates namedSource =
    (fun i => i.val == 1) := by decide

theorem known_differential_nonzero : knownDifferential ≠ zeroQ rightTarget := by
  intro h
  have hc := congrArg (coordinates rightTarget rightTarget_valid).toCoordinates h
  exact (show (coordinates rightTarget rightTarget_valid).toCoordinates knownDifferential ≠
    (coordinates rightTarget rightTarget_valid).toCoordinates (zeroQ rightTarget) from by decide) hc

#print axioms named_product
#print axioms known_product_zero
#print axioms left_target_all_zero
#print axioms named_source_coordinate
#print axioms known_differential_nonzero
end Row3135H0Leibniz
