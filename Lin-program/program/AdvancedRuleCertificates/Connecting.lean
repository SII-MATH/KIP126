import Mathlib.Algebra.Group.Hom.Basic

namespace AdvancedRuleCertificates

/-- A differential on an additive group (a fixed parity or total complex). -/
structure Differential (A : Type) [AddCommGroup A] where
  d : A →+ A
  square_zero : ∀ a, d (d a) = 0

def Cycle {A : Type} [AddCommGroup A] (D : Differential A) (a : A) : Prop := D.d a = 0
def BoundaryEquivalent {A : Type} [AddCommGroup A] (D : Differential A) (a b : A) : Prop :=
  ∃ w, a - b = D.d w

/-- The hypotheses are algebraic exactness, not an assumed connecting-map rule. -/
structure ExactSequence (A B C : Type) [AddCommGroup A] [AddCommGroup B] [AddCommGroup C]
    (DA : Differential A) (DB : Differential B) (DC : Differential C) where
  inclusion : A →+ B
  projection : B →+ C
  inclusion_injective : Function.Injective inclusion
  projection_surjective : Function.Surjective projection
  composite_zero : ∀ a, projection (inclusion a) = 0
  exact_middle : ∀ b, projection b = 0 → ∃ a, inclusion a = b
  inclusion_chain : ∀ a, DB.d (inclusion a) = inclusion (DA.d a)
  projection_chain : ∀ b, DC.d (projection b) = projection (DB.d b)

variable {A B C : Type} [AddCommGroup A] [AddCommGroup B] [AddCommGroup C]
variable {DA : Differential A} {DB : Differential B} {DC : Differential C}

structure ConnectingCertificate (B A : Type) where
  lift : B
  value : A

def ConnectingWitness (S : ExactSequence A B C DA DB DC) (c : C)
    (w : ConnectingCertificate B A) : Prop :=
  Cycle DC c ∧ S.projection w.lift = c ∧ S.inclusion w.value = DB.d w.lift

def checkConnecting [DecidableEq A] [DecidableEq B] [DecidableEq C]
    (S : ExactSequence A B C DA DB DC) (c : C) (w : ConnectingCertificate B A) : Bool :=
  decide (DC.d c = 0 ∧ S.projection w.lift = c ∧ S.inclusion w.value = DB.d w.lift)

theorem connecting_exists (S : ExactSequence A B C DA DB DC) (c : C)
    (hc : Cycle DC c) : ∃ w, ConnectingWitness S c w := by
  obtain ⟨b, hb⟩ := S.projection_surjective c
  have hz : S.projection (DB.d b) = 0 := by
    rw [← S.projection_chain, hb]
    exact hc
  obtain ⟨a, ha⟩ := S.exact_middle (DB.d b) hz
  exact ⟨⟨b, a⟩, hc, hb, ha⟩

theorem connecting_cycle (S : ExactSequence A B C DA DB DC) (c : C)
    (w : ConnectingCertificate B A) (h : ConnectingWitness S c w) : Cycle DA w.value := by
  apply S.inclusion_injective
  rw [map_zero, ← S.inclusion_chain, h.2.2, DB.square_zero]

theorem connecting_independent (S : ExactSequence A B C DA DB DC) (c : C)
    (w v : ConnectingCertificate B A)
    (hw : ConnectingWitness S c w) (hv : ConnectingWitness S c v) :
    BoundaryEquivalent DA w.value v.value := by
  have hz : S.projection (w.lift - v.lift) = 0 := by
    rw [map_sub, hw.2.1, hv.2.1, sub_self]
  obtain ⟨a, ha⟩ := S.exact_middle (w.lift - v.lift) hz
  refine ⟨a, S.inclusion_injective ?_⟩
  rw [map_sub, hw.2.2, hv.2.2, ← S.inclusion_chain, ha, map_sub]

theorem checkConnecting_sound [DecidableEq A] [DecidableEq B] [DecidableEq C]
    (S : ExactSequence A B C DA DB DC) (c : C) (w : ConnectingCertificate B A)
    (h : checkConnecting S c w = true) :
    ConnectingWitness S c w ∧ Cycle DA w.value := by
  have hw : ConnectingWitness S c w := by
    exact of_decide_eq_true (p := DC.d c = 0 ∧ S.projection w.lift = c ∧
      S.inclusion w.value = DB.d w.lift) h
  exact ⟨hw, connecting_cycle S c w hw⟩

/-- Changing the source by a boundary changes the output only by a boundary. -/
theorem connecting_boundary_independent (S : ExactSequence A B C DA DB DC)
    (c c' : C) (w v : ConnectingCertificate B A)
    (hw : ConnectingWitness S c w) (hv : ConnectingWitness S c' v)
    (hcc : BoundaryEquivalent DC c c') : BoundaryEquivalent DA w.value v.value := by
  obtain ⟨z, hz⟩ := hcc
  obtain ⟨b, hb⟩ := S.projection_surjective z
  have hproj : S.projection (w.lift - v.lift - DB.d b) = 0 := by
    rw [map_sub, map_sub, hw.2.1, hv.2.1, ← S.projection_chain, hb, hz, sub_self]
  obtain ⟨a, ha⟩ := S.exact_middle _ hproj
  refine ⟨a, S.inclusion_injective ?_⟩
  rw [map_sub, hw.2.2, hv.2.2, ← S.inclusion_chain, ha,
    map_sub, map_sub, DB.square_zero, sub_zero]

/-- An actual commuting map of short exact differential sequences. -/
structure SequenceMap {A' B' C' : Type}
    [AddCommGroup A'] [AddCommGroup B'] [AddCommGroup C']
    {DA' : Differential A'} {DB' : Differential B'} {DC' : Differential C'}
    (S : ExactSequence A B C DA DB DC) (T : ExactSequence A' B' C' DA' DB' DC') where
  left : A →+ A'
  middle : B →+ B'
  right : C →+ C'
  left_square : ∀ a, middle (S.inclusion a) = T.inclusion (left a)
  right_square : ∀ b, right (S.projection b) = T.projection (middle b)
  middle_chain : ∀ b, DB'.d (middle b) = middle (DB.d b)
  right_chain : ∀ c, DC'.d (right c) = right (DC.d c)

theorem connecting_natural {A' B' C' : Type}
    [AddCommGroup A'] [AddCommGroup B'] [AddCommGroup C']
    {DA' : Differential A'} {DB' : Differential B'} {DC' : Differential C'}
    (S : ExactSequence A B C DA DB DC) (T : ExactSequence A' B' C' DA' DB' DC')
    (F : SequenceMap S T) (c : C) (w : ConnectingCertificate B A)
    (h : ConnectingWitness S c w) :
    ConnectingWitness T (F.right c) ⟨F.middle w.lift, F.left w.value⟩ := by
  refine ⟨?_, ?_, ?_⟩
  · change DC'.d (F.right c) = 0
    rw [F.right_chain, h.1, map_zero]
  · change T.projection (F.middle w.lift) = F.right c
    rw [← F.right_square, h.2.1]
  · change T.inclusion (F.left w.value) = DB'.d (F.middle w.lift)
    rw [← F.left_square, h.2.2, F.middle_chain]

end AdvancedRuleCertificates
