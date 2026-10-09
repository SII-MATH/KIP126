import Row2925EtaD4.H05Semantics
import Row2925EtaD4.Naturality
import PageProductCertificates.Import

namespace Row2925EtaD4.LeftTerm
open LinearCertificates PageTransitionCertificates PageProductCertificates

def d2 : Wire := page_product% "Row2925EtaD4/leftTermD2.json"
def d3 : Wire := page_product% "Row2925EtaD4/leftTermD3.json"
theorem d2_valid : d2.Valid := by lin_cert using ()
theorem d3_valid : d3.Valid := by lin_cert using ()

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
abbrev D := Q d3.left

def mul : D → Naturality.S → Naturality.V := descended _ _ _ _ _ _ d3.product d3_valid.2

theorem raw_tensor : ∀ i j, d2.product i (0 : Fin 1) j = H05.matrix11_137 i j := by decide

theorem quotient_tensor : ∀ i j,
    d3.product i (0 : Fin 1) j =
    ResolutionCertificates.compose Comparison.targetT.comparison.projection
      (ResolutionCertificates.compose H05.matrix11_137 Comparison.sourceS.comparison.inclusion) i j := by decide

/-- The whole left Leibniz term vanishes, even with arbitrary d4(eta). -/
theorem all_zero (a : D) (b : Naturality.S) : mul a b = Naturality.zv := by
  induction a using Quot.inductionOn with
  | h a =>
    induction b using Quot.inductionOn with
    | h b =>
      apply Quot.sound
      change InImage (inc d3.target) (add (product d3.product a.val b.val) zero)
      refine ⟨zero, ?_⟩
      rw [eval_zero]
      exact (show ∀ (a : Vec 1) (b : Vec 2),
        zero = add (product d3.product a b) zero from by decide) a.val b.val

#print axioms d2_valid
#print axioms d3_valid
#print axioms raw_tensor
#print axioms quotient_tensor
#print axioms all_zero
end Row2925EtaD4.LeftTerm
