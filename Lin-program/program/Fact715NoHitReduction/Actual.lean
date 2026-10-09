import Fact715NoHitReduction.Basic
import Fact715IncomingTail.Basic
import Fact715Source2574.Tactic
import Fact715ConstructedActual.Trace

namespace Fact715NoHitReduction
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration
open OutgoingCycleFiltrationCertificates

abbrev degree : Bidegree := ⟨11,136⟩

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {product : CertifiedAdamsProduct S}

/-- All later actual incoming values vanish except the genuine d9 source.
The independent d5 elimination is converted to the full incoming sum. -/
theorem incoming_except_nine (zeros : ZeroMeaning S pages)
    (earlier : Fact715IncomingTail.EarlierSources S pages)
    (five : Fact715Source2574.Certificate S pages product)
    (n : Nat) (lower : 3 ≤ n) (notSeven : n ≠ 7)
    (y : Incoming S (n+2) degree) : incoming S (n+2) degree y = S.zero (n+2) degree := by
  by_cases first : n = 3
  · subst n
    cases y with
    | inl u => cases u; exact (S.zero_is_zero _ _).symm
    | inr y =>
      obtain ⟨e,h,x⟩ := y
      have hs := congrArg Bidegree.filtration h.val
      have ht := congrArg Bidegree.internal h.val
      have same : e = (⟨6,132⟩ : Bidegree) := by
        apply Bidegree.ext <;> dsimp [AdamsTarget,degree] at * <;> omega
      subst e
      have hx := five.source_empty x
      subst x
      change pageCast S 5 h.val (S.differential 5 ⟨6,132⟩ 0) = S.zero 5 degree
      rw [(S.differential 5 ⟨6,132⟩).map_zero',ActualAdamsIncomingBridge.cast_zero,S.zero_is_zero]
  · exact earlier.incoming_zero zeros (n+2) (by omega) (by omega) (by omega) y

noncomputable abbrev actualFiltration (zeros : ZeroMeaning S pages) :=
  filtration (system S pages zeros degree) (differentialLaws S pages zeros degree)

def NotHit (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) : Prop :=
  ¬ (actualFiltration zeros).BInfinity input

def D9Hit (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) : Prop :=
  ExceptionalHit (actualRealization S pages zeros degree) 7 input

def D9Exclusion (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) : Prop :=
  ∀ cycle : (actualFiltration zeros).Z 7 input,
    ¬ ∃ y : Incoming S 9 degree, incoming S 9 degree y =
      (actualRealization S pages zeros degree).image 7 input cycle

theorem d9_exclusion_iff (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) :
    D9Exclusion zeros input ↔ ¬ D9Hit zeros input := by
  constructor
  · intro excluded ⟨cycle,y,hy⟩
    exact excluded cycle ⟨y,hy⟩
  · intro excluded cycle hit
    exact excluded ⟨cycle,hit⟩

theorem sole_remaining_obligation (zeros : ZeroMeaning S pages)
    (earlier : Fact715IncomingTail.EarlierSources S pages)
    (five : Fact715Source2574.Certificate S pages product)
    (input : (S.element 2 degree).carrier) :
    NotHit zeros input ↔ D9Exclusion zeros input := by
  rw [d9_exclusion_iff]
  exact no_boundary_iff_exceptional_exclusion (actualRealization S pages zeros degree)
    (differentialLaws S pages zeros degree) 3 7 (by decide)
    (incoming_except_nine zeros earlier five) input

theorem exact_hit_reduction (zeros : ZeroMeaning S pages)
    (earlier : Fact715IncomingTail.EarlierSources S pages)
    (five : Fact715Source2574.Certificate S pages product)
    (input : (S.element 2 degree).carrier) :
    (actualFiltration zeros).BInfinity input ↔ D9Hit zeros input :=
  boundary_iff_exceptional_hit (actualRealization S pages zeros degree)
    (differentialLaws S pages zeros degree) 3 7 (by decide)
    (incoming_except_nine zeros earlier five) input

theorem outgoing_death_not_hit (zeros : ZeroMeaning S pages)
    (input : (S.element 2 degree).carrier) (n : Nat)
    (cycle : (actualFiltration zeros).Z n input)
    (death : S.differential (n+2) degree
      ((actualRealization S pages zeros degree).image n input cycle) ≠
        S.zero (n+2) (AdamsTarget (n+2) degree)) : NotHit zeros input :=
  outgoing_death_excludes_boundaries (actualRealization S pages zeros degree)
    (differentialLaws S pages zeros degree) input n cycle death

#print axioms incoming_except_nine
#print axioms d9_exclusion_iff
#print axioms sole_remaining_obligation
#print axioms exact_hit_reduction
#print axioms outgoing_death_not_hit
end Fact715NoHitReduction
