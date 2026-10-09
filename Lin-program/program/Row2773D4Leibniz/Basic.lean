import Row2773D4Leibniz.Data

namespace Row2773D4Leibniz
open LinearCertificates PageTransitionCertificates PageProductCertificates Data

def out (w : WireComparison) := matrixOf w.k w.m w.outgoing
def inc (w : WireComparison) := matrixOf w.m w.n w.incoming
abbrev Q (w : WireComparison) := Homology (out w) (inc w)
def zeroQ (w : WireComparison) : Q w := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

def sourceMul : Q eta → Q right → Q source :=
  descended _ _ _ _ _ _ sourceProduct.product sourceProduct_valid.2
def leftMul : Q leftTarget → Q right → Q target :=
  descended _ _ _ _ _ _ leftProduct.product leftProduct_valid.2

def rightMul : Q eta → Q rightTarget → Q target :=
  descended _ _ _ _ _ _ rightProduct.product rightProduct_valid.2

def namedEta : Q eta := Quot.mk _ (⟨fun _ => true, by
  funext i
  exact (show ∀ i, eval (out eta) (fun _ => true) i = zero i from by decide) i⟩ : Cycle _)
def namedRight : Q right := Quot.mk _ (⟨fun i => i.val == 0, by
  funext i
  exact (show ∀ i, eval (out right) (fun j => j.val == 0) i = zero i from by decide) i⟩ : Cycle _)
def namedSource : Q source := Quot.mk _ (⟨fun i => i.val == 1, by
  funext i
  exact (show ∀ i, eval (out source) (fun j => j.val == 1) i = zero i from by decide) i⟩ : Cycle _)

theorem named_product : sourceMul namedEta namedRight = namedSource := by
  apply Quot.sound
  change InImage (inc source)
    (add (product sourceProduct.product (fun _ => true) (fun i => i.val == 0))
      (fun i => i.val == 1))
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add
    (product sourceProduct.product (fun _ => true) (fun j => j.val == 0))
    (fun j => j.val == 1) i from by decide) i

/-- Every possible left differential value has zero product, not just a
selected value for d3(eta). -/
theorem left_all_zero (a : Q leftTarget) (b : Q right) : leftMul a b = zeroQ target := by
  induction a using Quot.inductionOn with
  | h a =>
    induction b using Quot.inductionOn with
    | h b =>
      apply Quot.sound
      change InImage (inc target) (add (product leftProduct.product a.val b.val) zero)
      refine ⟨zero, ?_⟩
      rw [eval_zero]
      exact (show ∀ (a : Vec 1) (b : Vec 2),
        zero = add (product leftProduct.product a b) zero from by decide) a.val b.val

/-- The right Leibniz product is a checked d2 boundary on every pair of E2
representatives, hence is zero on the entire E3 quotient. -/
theorem right_all_zero (a : Q eta) (b : Q rightTarget) : rightMul a b = zeroQ target := by
  induction a using Quot.inductionOn with
  | h a =>
    induction b using Quot.inductionOn with
    | h b =>
      apply Quot.sound
      change InImage (inc target) (add (product rightProduct.product a.val b.val) zero)
      refine ⟨fun i => if i.val == 0 then a.val ⟨0,by decide⟩ && b.val ⟨0,by decide⟩ else false, ?_⟩
      exact (show ∀ (a : Vec 1) (b : Vec 2), eval (inc target)
        (fun i => if i.val == 0 then a 0 && b 0 else false) =
          add (product rightProduct.product a b) zero from by decide) a.val b.val

def sourceCoordinates := homologyEquivalence _ _ source.comparison source_valid.2
def rightCoordinates := homologyEquivalence _ _ right.comparison right_valid.2

theorem named_source_coordinates : sourceCoordinates.toCoordinates namedSource =
    (fun i : Fin 2 => i.val == 1) := by
  funext i
  exact (show ∀ i, sourceCoordinates.toCoordinates namedSource i = (i.val == 1) from by decide) i
theorem named_right_coordinates : rightCoordinates.toCoordinates namedRight =
    (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, rightCoordinates.toCoordinates namedRight i = true from by decide) i

#print axioms named_product
#print axioms left_all_zero
#print axioms right_all_zero
#print axioms named_source_coordinates
#print axioms named_right_coordinates
end Row2773D4Leibniz
