import ActualAdamsSystemBridge.Trace
import UniqueHomologyCertificates.Import

namespace ActualAdamsUniqueBridge
open ManualInputObligations.Reference ActualAdamsSystemBridge
open LinearCertificates PageTransitionCertificates

/-- Coordinates cover every actual incoming source; both differential
equations are quantified over their entire domains. -/
structure Coordinates (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    {n m k : Nat} (A : Matrix k m) (B : Matrix m n) where
  current : (S.element r d).carrier → Vec m
  incoming : Incoming S r d → Vec n
  outgoing : (S.element r (AdamsTarget r d)).carrier → Vec k
  faithful : Function.Injective current
  incoming_surjective : Function.Surjective incoming
  current_zero : current 0 = zero
  current_add : ∀ x y, current (x+y) = add (current x) (current y)
  outgoing_zero : outgoing 0 = zero
  outgoing_faithful : Function.Injective outgoing
  incoming_all : ∀ x, current (ActualAdamsSystemBridge.incoming S r d x) = eval B (incoming x)
  outgoing_all : ∀ x, outgoing (S.differential r d x) = eval A (current x)

theorem boundary_iff {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    {n m k : Nat} {A : Matrix k m} {B : Matrix m n}
    (c : Coordinates S r d A B) (x : (S.element r d).carrier) :
    PageBoundary S r d x ↔ InImage B (c.current x) := by
  rw [← incoming_image S r d x]
  constructor
  · rintro ⟨y,hy⟩
    exact ⟨c.incoming y,(c.incoming_all y).symm.trans (congrArg c.current hy)⟩
  · rintro ⟨v,hv⟩
    obtain ⟨y,hy⟩ := c.incoming_surjective v
    refine ⟨y,c.faithful ?_⟩
    rw [c.incoming_all,hy,hv]

def IsUnique (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) : Prop :=
  S.differential r d x = S.zero r (AdamsTarget r d) ∧
  ¬ PageBoundary S r d x ∧
  ∀ y, S.differential r d y = S.zero r (AdamsTarget r d) →
    PageBoundary S r d y ∨ PageBoundary S r d (y+x)

theorem transport {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    {n m k : Nat} {A : Matrix k m} {B : Matrix m n}
    (c : Coordinates S r d A B) (x : (S.element r d).carrier)
    (checked : UniqueHomologyCertificates.IsUniqueNonzeroClass A B (c.current x)) :
    IsUnique S r d x := by
  refine ⟨c.outgoing_faithful ?_,fun hb => checked.2.2.1 ((boundary_iff c x).mp hb),?_⟩
  · rw [c.outgoing_all,S.zero_is_zero,c.outgoing_zero]
    exact checked.2.1
  · intro y hy
    have hc : InKernel A (c.current y) := by
      rw [InKernel,← c.outgoing_all,hy,S.zero_is_zero,c.outgoing_zero]
    rcases checked.2.2.2 (c.current y) hc with hb | hb
    · exact Or.inl ((boundary_iff c y).mpr hb)
    · apply Or.inr
      apply (boundary_iff c (y+x)).mpr
      rw [c.current_add]
      exact hb

structure Certificate (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) where
  wire : UniqueHomologyCertificates.Wire
  coordinates : Coordinates S r d
    (matrixOf wire.comparison.k wire.comparison.m wire.comparison.outgoing)
    (matrixOf wire.comparison.m wire.comparison.n wire.comparison.incoming)
  named : coordinates.current x = (Stage.mk wire.comparison wire.named).vector

theorem check_sound (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (x : (S.element r d).carrier) (c : Certificate S r d x)
    (checked : UniqueHomologyCertificates.check c.wire.comparison c.wire.named = true) :
    IsUnique S r d x := by
  apply transport c.coordinates x
  rw [c.named]
  exact UniqueHomologyCertificates.sound _ _ checked

syntax "adams_unique_cert" " using " term : tactic
macro_rules
  | `(tactic| adams_unique_cert using $c:term) => `(tactic|
      exact ActualAdamsUniqueBridge.check_sound _ _ _ _ $c (by first | rfl | decide))

#print axioms boundary_iff
#print axioms transport
#print axioms check_sound
end ActualAdamsUniqueBridge
