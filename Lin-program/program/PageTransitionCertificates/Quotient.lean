import PageTransitionCertificates.Basic

namespace PageTransitionCertificates
open LinearCertificates ResolutionCertificates

abbrev Cycle (outgoing : Matrix k m) := {x : Vec m // InKernel outgoing x}

def BoundaryRelated {outgoing : Matrix k m} (incoming : Matrix m n) (x y : Cycle outgoing) : Prop :=
  InImage incoming (add x.val y.val)

/-- The quotient relation is boundary difference, not coordinate equality.
The comparison theorem proves the latter characterizes this relation. -/
def Homology (outgoing : Matrix k m) (incoming : Matrix m n) :=
  Quot (BoundaryRelated (outgoing := outgoing) incoming)

structure HomologyEquivalence (outgoing : Matrix k m) (incoming : Matrix m n) (h : Nat) where
  toCoordinates : Homology outgoing incoming → Vec h
  fromCoordinates : Vec h → Homology outgoing incoming
  leftInverse : ∀ x, fromCoordinates (toCoordinates x) = x
  rightInverse : ∀ z, toCoordinates (fromCoordinates z) = z

def homologyEquivalence (outgoing : Matrix k m) (incoming : Matrix m n)
    (c : Comparison k m n h) (hc : HomologyComparison outgoing incoming c) :
    HomologyEquivalence outgoing incoming h := by
  let forward : Homology outgoing incoming → Vec h :=
    Quot.lift (fun x : Cycle outgoing => eval c.projection x.val) (by
      intro x y hxy
      exact (hc.2.2.2.2 x.val y.val x.property y.property).mpr hxy)
  let backward : Vec h → Homology outgoing incoming := fun z =>
    Quot.mk _ ⟨eval c.inclusion z, hc.2.1 z⟩
  refine ⟨forward, backward, ?_, ?_⟩
  · intro x
    refine Quot.inductionOn x ?_
    intro x
    apply Quot.sound
    change InImage incoming (add (eval c.inclusion (eval c.projection x.val)) x.val)
    rw [add_comm]
    exact hc.2.2.2.1 x.val x.property
  · intro z
    exact hc.2.2.1 z

end PageTransitionCertificates
