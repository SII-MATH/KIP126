import Row3305H0Search.Data

namespace Row3305H0Search
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
def namedRight : Q right := (coordinates _ right_valid).fromCoordinates (fun i => i.val == 0)
def namedSource : Q source :=
  (coordinates _ source_valid).fromCoordinates (fun i => i.val == 0)

theorem named_product : sourceMul namedH0 namedRight = namedSource := by
  let E := coordinates source source_valid
  have h : E.toCoordinates (sourceMul namedH0 namedRight) =
      E.toCoordinates namedSource := by decide
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse _))

theorem right_all_zero (a : Q h0) (b : Q rightTarget) : rightMul a b = zeroQ target := by
  induction a using Quot.inductionOn with
  | h a =>
    induction b using Quot.inductionOn with
    | h b =>
      apply Quot.sound
      change InImage (inc target) (add (product rightProduct.product a.val b.val) zero)
      refine ⟨zero, ?_⟩
      rw [eval_zero]
      exact (show ∀ (a : Vec 1) (b : Vec 2),
        zero = add (product rightProduct.product a b) zero from by decide) a.val b.val

theorem left_target_all_zero (x : Q leftTarget) : x = zeroQ leftTarget := by
  let E := coordinates leftTarget leftTarget_valid
  have h : E.toCoordinates x = E.toCoordinates (zeroQ leftTarget) :=
    funext fun i => Fin.elim0 i
  exact (E.leftInverse _).symm.trans ((congrArg E.fromCoordinates h).trans (E.leftInverse _))

theorem named_source_coordinate : (coordinates source source_valid).toCoordinates namedSource =
    (fun i => i.val == 0) := by decide

#print axioms named_product
#print axioms right_all_zero
#print axioms left_target_all_zero
#print axioms named_source_coordinate
end Row3305H0Search
