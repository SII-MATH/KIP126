# Finite endpoint and all-page incoming exclusion

This package proves a statement about cumulative boundaries of the original
E2 class. If a class has a nonzero actual endpoint on page `n+2` above its
filtration, it never belongs to the union of incoming boundaries. Every
incoming source on or after that page is absent by its filtration degree.

`Basic.boundary_stable` proves that cumulative boundaries stabilize when
the entire incoming map is zero. Earlier boundaries propagate to the cutoff;
later boundaries descend back to it. A nonzero endpoint contradicts either.
`actual_no_boundary_ever` applies the theorem to the actual cycle/boundary
filtration constructed from the supplied Adams sequence and its complete
homology quotient maps. A same-input trace supplies the required finite
cycle conditions. The global zero compatibility of quotient maps remains
an explicit mathematical law.

`Fact713.not_killed` applies this to the existing same-input nonzero E10
endpoint in degree `(9,132)`. Since `9 < 10`, it establishes the additional
Fact 7.13(1) incoming-exclusion subclaim under exactly that actual prefix
and the quotient zero law:

```lean
example (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (P : Fact713Row3143Continuation.Constructed.Prefix10 S pages) :
    ActualFiniteNoHit.Fact713.NotKilledByAnyDifferential zeros P := by
  fact713_no_hit_cert using P with zeros
```

The conclusion is `not BInfinity` for the initial E2 class. It does not
state that every later recursive representative is a nonboundary: after
an outgoing differential, that representative may be zero. It also does
not assert all-page outgoing survival, E12 survival, convergence, or the
original sphere realization. Those are separate obligations.

The existing strict E10 importer and checker still bind the finite named
input to its actual endpoint. This package adds a mathematical implication
and a tactic; it introduces no new external data format or trusted flags.
`Examples` includes a stable case and a genuine quotient counterexample
showing why nonzero initial data without a zero incoming tail is insufficient.
Independent review also checks outgoing death without an incoming boundary.

Only successful stable direct compiles are accepted; historical failed
attempts are retained in `evidence/`. Root build and exhaustive declaration
audit evidence are recorded separately. Allowed foundational axioms are
`propext`, `Classical.choice`, and `Quot.sound`.
