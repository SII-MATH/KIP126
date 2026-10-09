import ActualAdamsSystemBridge.Basic
import OutgoingCycleFiltrationCertificates.Boundary

namespace ActualAdamsSystemBridge
open ManualInputObligations.Reference

/-- Reindex a finite trace by the system convention: index n is Adams page n+2. -/
theorem trace_at_transport (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree)
    {r : Nat} {initial : (S.element 2 d).carrier} {value : (S.element r d).carrier}
    (trace : ManualInputObligations.Trace S pages d r initial value) :
    ∀ n (h : r = n+2), (h ▸ value : (S.element (n+2) d).carrier) =
      (system S pages zeroMeaning d).at initial n := by
  induction trace with
  | start x =>
    intro n h
    have hn : n = 0 := by omega
    subst n
    rfl
  | @step q initial x previous cycle ih =>
    intro n h
    have hq := ManualInputObligations.trace_page_at_least_two previous
    cases n with
    | zero => omega
    | succ n =>
      have hp : q = n+2 := by omega
      subst q
      have hx := ih n rfl
      change (pages.nextPage (n+2) d).toNext
        (Quotient.mk _ (⟨x, cycle⟩ : PageCycle S (n+2) d)) =
          advance S pages (n+2) d ((system S pages zeroMeaning d).at initial n)
      rw [← hx, advance_on_cycle S pages (n+2) d x cycle]

theorem trace_at (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree)
    {n : Nat} {initial : (S.element 2 d).carrier} {value : (S.element (n+2) d).carrier}
    (trace : ManualInputObligations.Trace S pages d (n+2) initial value) :
    value = (system S pages zeroMeaning d).at initial n :=
  trace_at_transport S pages zeroMeaning d trace n rfl

theorem endpoint_at (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree)
    (n : Nat) (initial : (S.element 2 d).carrier)
    (endpoint : ManualInputObligations.Endpoint S pages (n+2) d initial) :
    endpoint.value = (system S pages zeroMeaning d).at initial n :=
  trace_at S pages zeroMeaning d endpoint.trace

/-- This includes every incoming source degree, not just stored differential rows. -/
theorem incoming_cycle (S : AdamsSpectralSequence) (r : Nat) (d : Bidegree)
    (y : Incoming S r d) :
    S.differential r d (incoming S r d y) = S.zero r (AdamsTarget r d) := by
  cases y with
  | inl _ =>
    exact (S.differential r d).map_zero'.trans (S.zero_is_zero r _).symm
  | inr y =>
    obtain ⟨e, h, x⟩ := y
    have hd := h.val
    subst d
    exact (S.differentialSq r e x).trans (S.zero_is_zero r _).symm

theorem differentialLaws (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree) :
    OutgoingCycleFiltrationCertificates.DifferentialLaws (system S pages zeroMeaning d) where
  zero_outgoing := by
    intro n
    change S.differential (n+2) d (S.zero (n+2) d) = S.zero (n+2) (AdamsTarget (n+2) d)
    rw [S.zero_is_zero, (S.differential (n+2) d).map_zero', S.zero_is_zero]
  incoming_cycle := fun n y => incoming_cycle S (n+2) d y

#print axioms trace_at_transport
#print axioms trace_at
#print axioms endpoint_at
#print axioms incoming_cycle
#print axioms differentialLaws
end ActualAdamsSystemBridge
