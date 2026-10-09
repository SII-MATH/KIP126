import ActualAdamsFiltration.Basic
import ActualAdamsSystemBridge.Trace

namespace ActualAdamsFiltration
open ManualInputObligations.Reference ActualAdamsSystemBridge
open OutgoingCycleFiltrationCertificates

/-- The actual quotient identification supplies a cycle representing every
next-page element. No finite-table coverage assertion is used. -/
theorem actual_cycle_surjective (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree) :
    CycleSurjective (system S pages zeroMeaning d) := by
  intro n y
  let q := (pages.nextPage (n+2) d).fromNext y
  have hq : (pages.nextPage (n+2) d).toNext q = y :=
    (pages.nextPage (n+2) d).rightInverse y
  revert hq
  induction q using Quotient.inductionOn with
  | h x =>
    intro hq
    refine ⟨x.val,x.property,?_⟩
    change advance S pages (n+2) d x.val = y
    rw [advance_on_cycle S pages (n+2) d x.val x.property]
    exact hq

noncomputable def actualRealization (S : AdamsSpectralSequence)
    (pages : CertifiedAdamsPages S) (zeroMeaning : ZeroMeaning S pages) (d : Bidegree) :=
  realization (system S pages zeroMeaning d) (differentialLaws S pages zeroMeaning d)
    (actual_cycle_surjective S pages zeroMeaning d)

/-- Each partial-cycle condition constructs an actual chain of quotient
representatives starting at E2. A boundary may advance to zero. -/
noncomputable def traceFromCycles (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree)
    (initial : (S.element 2 d).carrier) (n : Nat)
    (h : Cycles (system S pages zeroMeaning d) n initial) :
    ManualInputObligations.Trace S pages d (n+2) initial
      ((system S pages zeroMeaning d).at initial n) := by
  induction n with
  | zero => exact .start initial
  | succ n ih =>
    obtain ⟨previous,cycle⟩ := (cycles_succ (system S pages zeroMeaning d) n initial).mp h
    have trace := ManualInputObligations.Trace.step (ih previous) cycle
    change ManualInputObligations.Trace S pages d (n+2+1) initial
      (advance S pages (n+2) d ((system S pages zeroMeaning d).at initial n))
    rw [advance_on_cycle S pages (n+2) d _ cycle]
    exact trace

theorem cycles_from_trace (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree)
    {r : Nat} {initial : (S.element 2 d).carrier} {value : (S.element r d).carrier}
    (trace : ManualInputObligations.Trace S pages d r initial value) :
    ∀ n, r = n+2 → Cycles (system S pages zeroMeaning d) n initial := by
  induction trace with
  | start x =>
    intro n h
    have hn : n = 0 := by omega
    subst n
    intro k hk
    omega
  | @step q initial x previous cycle ih =>
    intro n h
    have hq := ManualInputObligations.trace_page_at_least_two previous
    cases n with
    | zero => omega
    | succ n =>
      have hp : q = n+2 := by omega
      subst q
      apply (cycles_succ (system S pages zeroMeaning d) n initial).mpr
      refine ⟨ih n rfl,?_⟩
      change S.differential (n+2) d ((system S pages zeroMeaning d).at initial n) = _
      rw [← trace_at S pages zeroMeaning d previous]
      exact cycle

theorem cycles_iff_endpoint (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree)
    (initial : (S.element 2 d).carrier) (n : Nat) :
    Cycles (system S pages zeroMeaning d) n initial ↔
      Nonempty (ManualInputObligations.Endpoint S pages (n+2) d initial) := by
  constructor
  · intro h
    exact ⟨⟨(system S pages zeroMeaning d).at initial n,
      traceFromCycles S pages zeroMeaning d initial n h⟩⟩
  · rintro ⟨endpoint⟩
    exact cycles_from_trace S pages zeroMeaning d endpoint.trace n rfl

theorem actual_permanent_iff (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeroMeaning : ZeroMeaning S pages) (d : Bidegree)
    (initial : (S.element 2 d).carrier) :
    (system S pages zeroMeaning d).Permanent initial ↔
      (filtration (system S pages zeroMeaning d)
        (differentialLaws S pages zeroMeaning d)).ZInfinity initial ∧
      ¬ (filtration (system S pages zeroMeaning d)
        (differentialLaws S pages zeroMeaning d)).BInfinity initial :=
  permanent_iff _ _ (actual_cycle_surjective S pages zeroMeaning d) initial

#print axioms actual_cycle_surjective
#print axioms actualRealization
#print axioms traceFromCycles
#print axioms cycles_from_trace
#print axioms cycles_iff_endpoint
#print axioms actual_permanent_iff
end ActualAdamsFiltration
