import ActualAdamsProductCycleBridge.Finite

namespace ActualAdamsProductTraceBridge
open ManualInputObligations ManualInputObligations.Reference

def multiplyCycle (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (r : Nat) (d e : Bidegree) (x : PageCycle S r d) (y : PageCycle S r e) :
    PageCycle S r (Bidegree.add d e) :=
  ⟨P.product.multiply r d e x.val y.val,
    (ActualAdamsProductCycleBridge.product_cycle S P r d e x.val y.val
      (x.property.trans (S.zero_is_zero r _)) (y.property.trans (S.zero_is_zero r _))).trans
        (S.zero_is_zero r _).symm⟩

/-- One page transition, one pair of bidegrees, every actual pair of cycles.
This is the multiplicativity square; no preexisting product trace is assumed. -/
structure Transition (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (r : Nat) (d e : Bidegree) : Prop where
  formula : ∀ (x : PageCycle S r d) (y : PageCycle S r e),
    (pages.nextPage r (Bidegree.add d e)).toNext
      (Quotient.mk _ (multiplyCycle S P r d e x y)) =
    P.product.multiply (r+1) d e
      ((pages.nextPage r d).toNext (Quotient.mk _ x))
      ((pages.nextPage r e).toNext (Quotient.mk _ y))

/-- Two actual traces combine using only the local squares before the endpoint. -/
noncomputable def trace_product (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) (d e : Bidegree)
    {r : Nat} {x0 : (S.element 2 d).carrier} {y0 : (S.element 2 e).carrier}
    {x : (S.element r d).carrier} {y : (S.element r e).carrier}
    (tx : Trace S pages d r x0 x) (ty : Trace S pages e r y0 y)
    (transitions : ∀ q, 2 ≤ q → q < r → Transition S pages P q d e) :
    Trace S pages (Bidegree.add d e) r (P.product.multiply 2 d e x0 y0)
      (P.product.multiply r d e x y) := by
  induction tx generalizing y0 with
  | start x =>
    cases ty with
    | start y => exact .start _
    | step previousY _ => have hq := trace_page_at_least_two previousY; omega
  | @step q initial x previous cycle ih =>
    cases ty with
    | start y => have hq := trace_page_at_least_two previous; omega
    | @step q y0 y previousY cycleY =>
      have earlier := ih previousY (fun k hk hl => transitions k hk (by omega))
      let current := multiplyCycle S P q d e ⟨x,cycle⟩ ⟨y,cycleY⟩
      have next := Trace.step earlier current.property
      have law := (transitions q (trace_page_at_least_two previous) (by omega)).formula
        ⟨x,cycle⟩ ⟨y,cycleY⟩
      change Trace S pages (Bidegree.add d e) (q+1) (P.product.multiply 2 d e initial y0)
        ((pages.nextPage q (Bidegree.add d e)).toNext (Quotient.mk _ current)) at next
      rw [law] at next
      exact next

#print axioms multiplyCycle
#print axioms trace_product
end ActualAdamsProductTraceBridge
