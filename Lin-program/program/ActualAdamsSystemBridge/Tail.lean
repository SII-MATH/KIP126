import ActualAdamsSystemBridge.Basic

namespace ActualAdamsSystemBridge
open ManualInputObligations.Reference PermanentCycleCertificates

theorem incoming_eq_zero_source (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (above : d.filtration < r) (y : Incoming S r d) : y = .inl () := by
  cases y with
  | inl u => cases u; rfl
  | inr y =>
    obtain ⟨e, h, x⟩ := y
    have he := congrArg Bidegree.filtration h.val
    change e.filtration + r = d.filtration at he
    omega

theorem incoming_subsingleton_above_filtration (S : AdamsSpectralSequence)
    (r : Nat) (d : Bidegree) (above : d.filtration < r) :
    Subsingleton (Incoming S r d) :=
  ⟨fun a b => (incoming_eq_zero_source S r d above a).trans
    (incoming_eq_zero_source S r d above b).symm⟩

theorem incoming_tail (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree) (cutoff : Nat)
    (above : d.filtration < cutoff+2) :
    ∀ n, cutoff ≤ n → Subsingleton ((system S pages zeroMeaning d).Incoming n) := by
  intro n hn
  exact incoming_subsingleton_above_filtration S (n+2) d (by omega)

theorem incoming_map_zero_above_filtration (S : AdamsSpectralSequence)
    (r : Nat) (d : Bidegree) (above : d.filtration < r) (y : Incoming S r d) :
    incoming S r d y = S.zero r d := by
  rw [incoming_eq_zero_source S r d above y]
  exact (S.zero_is_zero r d).symm

#print axioms incoming_eq_zero_source
#print axioms incoming_subsingleton_above_filtration
#print axioms incoming_tail
#print axioms incoming_map_zero_above_filtration
end ActualAdamsSystemBridge
