import Fact762Source7Certificates.Propagation

namespace Fact762Source7Certificates
open LinearCertificates PageTransitionCertificates Fact762IncomingCertificates

abbrev FiniteSourceE3 := Homology (matrixOf 5 2 sourceE2.outgoing) (matrixOf 2 1 sourceE2.incoming)

theorem span_of_full_E3_realization (p : PageTower) (named : (q : Nat) → p.Carrier q)
    (meaning : FiniteSourceE3 → p.Carrier 3) (covers : Function.Surjective meaning)
    (zeroMeaning : meaning sourceZero = p.zero 3)
    (namedMeaning : meaning sourceNamed = named 3) : Spanned p named 3 := by
  intro y
  obtain ⟨x,rfl⟩ := covers y
  rcases source_all_classes x with h | h
  · left; rw [h,zeroMeaning]
  · right; rw [h,namedMeaning]

/-- This supplies the all-source page7 obligation in Incoming.only_six_or_twelve.
Every row2632 prefix and named-page compatibility is an explicit mathematical
hypothesis. No SQL level is interpreted as one of these hypotheses. -/
theorem page7_incoming_vanishes (sys : IncomingSystem) (p : PageTower)
    (named : (q : Nat) → p.Carrier q)
    (meaning3 : FiniteSourceE3 → p.Carrier 3) (covers3 : Function.Surjective meaning3)
    (zero3 : meaning3 sourceZero = p.zero 3)
    (named3 : meaning3 sourceNamed = named 3)
    (row2632_cycles : ∀ q, 3 ≤ q → q < 7 → p.isCycle q (named q))
    (namedStep : ∀ q (lo : 3 ≤ q) (hi : q < 7),
      p.next q ⟨named q,row2632_cycles q lo hi⟩ = named (q+1))
    (meaning7 : p.Carrier 7 → sys.Source 7) (covers7 : Function.Surjective meaning7)
    (zero7 : meaning7 (p.zero 7) = sys.zeroSource 7)
    (row2632_d7_prefix : sys.differential 7 (meaning7 (named 7)) = sys.zeroTarget 7) :
    VanishesAt (sys.differential 7) (sys.zeroTarget 7) := by
  have span := span_of_full_E3_realization p named meaning3 covers3 zero3 named3
  have all := page7_all_values_from_named_prefix p named span row2632_cycles namedStep
    (sys.zeroTarget 7) (fun x => sys.differential 7 (meaning7 x))
    (by rw [zero7]; exact sys.preservesZero 7) row2632_d7_prefix
  intro x
  obtain ⟨y,rfl⟩ := covers7 x
  exact all y

theorem incoming5_source_zero_at_five (p : PageTower)
    (coordinates : p.Carrier 3 → Homology (matrixOf 2 1 incoming5.outgoing)
      (matrixOf 1 0 incoming5.incoming))
    (faithful : Function.Injective coordinates)
    (zeroMeaning : coordinates (p.zero 3) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)) :
    p.ZeroAt 5 := by
  apply p.zero_later (q := 3) ?_ (by omega)
  exact zero_from_coordinates coordinates faithful _ _ zeroMeaning incoming5_zero

theorem incoming6_source_zero_at_six (p : PageTower)
    (coordinates : p.Carrier 3 → Homology (matrixOf 1 1 incoming6.outgoing)
      (matrixOf 1 0 incoming6.incoming))
    (faithful : Function.Injective coordinates)
    (zeroMeaning : coordinates (p.zero 3) = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)) :
    p.ZeroAt 6 := by
  apply p.zero_later (q := 3) ?_ (by omega)
  exact zero_from_coordinates coordinates faithful _ _ zeroMeaning incoming6_zero

/-- Full E6 and E7 quotient equivalences, with arbitrary complete target
dimensions. Input coordinate models and prefix values remain explicit. -/
def E6_equivalence (outgoing : Matrix k5 1) (incoming : Matrix 1 0)
    (row2632_d5_prefix : eval outgoing (fun _ => true) = zero) :
    HomologyEquivalence outgoing incoming 1 :=
  homologyEquivalence outgoing incoming (identityComparison k5)
    (comparison_from_named_prefix outgoing incoming row2632_d5_prefix)

def E7_equivalence (outgoing : Matrix k6 1) (incoming : Matrix 1 0)
    (row2632_d6_prefix : eval outgoing (fun _ => true) = zero) :
    HomologyEquivalence outgoing incoming 1 :=
  homologyEquivalence outgoing incoming (identityComparison k6)
    (comparison_from_named_prefix outgoing incoming row2632_d6_prefix)

#print axioms page7_incoming_vanishes
#print axioms incoming5_source_zero_at_five
#print axioms incoming6_source_zero_at_six
#print axioms E6_equivalence
#print axioms E7_equivalence
end Fact762Source7Certificates
