import LinearCertificates.Checker

namespace PageCertificates
open LinearCertificates

/-- A finite portion of a page complex, with all incoming columns explicitly supplied. -/
structure Page where
  sources : Nat
  dimension : Nat
  targets : Nat
  incoming : Matrix dimension sources
  outgoing : Matrix targets dimension

/-- This equation is needed to interpret boundaries as cycles. -/
def IsComplex (p : Page) : Prop :=
  ∀ x, eval p.outgoing (eval p.incoming x) = zero

/-- Nonzero class in the homology quotient: a cycle outside the entire image. -/
def NonzeroHomology (p : Page) (x : Vec p.dimension) : Prop :=
  InKernel p.outgoing x ∧ ¬ InImage p.incoming x

/-- Two cycles represent the same homology class exactly when their sum is a boundary. -/
def SameHomology (p : Page) (x y : Vec p.dimension) : Prop :=
  InKernel p.outgoing x ∧ InKernel p.outgoing y ∧ InImage p.incoming (add x y)

/-- A candidate statement quantifies all allowed alternatives, including optional summands. -/
def AllNonzeroHomology (p : Page) (xs : List (Vec p.dimension)) : Prop :=
  xs ≠ [] ∧ ∀ x ∈ xs, NonzeroHomology p x

/-- This result is about a declared finite candidate list, not all classes of a spectral sequence. -/
def UniqueCandidate (p : Page) (xs : List (Vec p.dimension)) (x : Vec p.dimension) : Prop :=
  x ∈ xs ∧ NonzeroHomology p x ∧
    ∀ y ∈ xs, y ≠ x → InImage p.incoming y

end PageCertificates
