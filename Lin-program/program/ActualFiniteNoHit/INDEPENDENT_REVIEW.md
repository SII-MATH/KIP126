# Independent review of cumulative all-page no-hit

No correctness finding in the two reviewed leaves, `Basic.lean` and
`Fact713.lean`. Their existing direct-compilation records both have observed
exit code zero, stable source/dependency inputs at compilation, and four
combined reports containing only `propext`, `Classical.choice`, `Quot.sound`.
This review does not recompile them or assert completion of the root build.

## Mathematical proof review

- `Basic.lean:9`, `boundary_stable`: both directions concern
  `Filtration.Boundary`, which includes membership in the entire preceding
  cycle subset. In the backwards direction, the next-boundary equivalence
  supplies the actual incoming witness and current cycle membership. The
  whole incoming map being zero makes the current quotient image zero,
  so the exact image-zero equivalence gives the previous cumulative boundary.
  The forward direction uses the already proved boundary-increasing law.
  No assumption about outgoing zero or a selected future element is needed.
- `Basic.lean:25`, `no_boundary_ever`: an arbitrary boundary index either
  precedes the cutoff (monotonicity) or follows it (the preceding stability
  theorem). Both produce a boundary at precisely the cutoff, contradicting
  the supplied nonzero quotient image of the same E2 element. The initial
  cycle condition is the domain of that quotient image, not a full-tail
  survival premise.
- `Basic.lean:41`, `actual_no_boundary_ever`: `actualRealization` is derived
  from complete next-page quotient equivalences. The same actual trace
  supplies all required cycle-prefix conditions via `cycles_from_trace`;
  `trace_at` identifies its exact endpoint with the recursive representative.
  The inequality `d.filtration < n+2` is strict, and monotonicity gives it
  for every later page. The tail theorem quantifies over every actual
  source degree, with the zero source retained. It does not use missing
  SQL rows or sparse differential lists as evidence of no incoming map.
- `Fact713.lean:14`, `not_killed`: the inherited degree is `(9,132)`;
  index 8 is actual page 10, so `9 < 10` is correct. `P.raw`,
  `P.endpoint10.trace`, and `P.nonzero10` refer to the same constructed
  endpoint of the same supplied prefix. The tactic uses this theorem without
  importing any mathematical premise as a flag.

## Outgoing death is not mistaken for an incoming hit

For the actual filtration,

```text
Boundary n x iff (all earlier representatives were outgoing cycles)
                  and (the nth representative is zero).
```

An outgoing death may make every later recursive representative zero, but
it falsifies the earlier-cycle condition for all those indices. Therefore
that fact alone does not put the original E2 class in `BInfinity`. The result
correctly proves `not BInfinity initial`, and neither `AlwaysCycle` nor
strong permanence. It also does not claim every later zero representative
is a nonboundary. The README states this distinction explicitly.

## Independent finite oracle

`independent_review.py` constructs all maps to a one-dimensional outgoing
space and every subspace of the kernel as an incoming image, for page
dimensions zero through three. The next page is the entire kernel/image
quotient with all equivalence pairs checked. It exhausts four-step page
sequences, appending constant identity pages and zero maps forever, so each
test describes an infinite model with an explicit tail. Coordinate labels
for quotient classes are not used as proof that a global Adams object exists.

The successful run records:

- 2172 page sequences and 1698 complete quotient-equivalence pairs;
- 87973 cumulative-boundary stabilization comparisons;
- 10820 nonzero-endpoint implications and 67452 monotonicity checks;
- 8466 outgoing-death cases with zero later representatives but no
  cumulative boundary;
- 12345 nonzero-prefix cases hit later when the zero-incoming-tail premise
  is omitted;
- 14322 exact Adams degree queries, with a retained strictness counterexample
  at r=s=9: source `(0,124)` can map to target `(9,132)`.

The oracle retains representative countermodels in `independent_review.json`.
It also records that zero input belongs to `Boundary 0`, so the nonzero
premise is necessary. The finite oracle checks the generic quotient mechanism;
it does not reconstruct the sphere or supply the actual Fact 7.13 prefix.

## Residual scope

The theorem remains conditional on the existing complete actual prefix and
global quotient-zero law. It closes the all-page incoming-exclusion
subclaim for such a prefix; E12 survival and original sphere/Ext realization
remain separate. Root integration and exhaustive auditing are owned by the
root agent and are outside this read-only proof review.
