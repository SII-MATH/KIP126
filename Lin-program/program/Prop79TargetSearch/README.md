# Proposition 7.9: conditional no-hit through d5

This package resolves the two precise d3 blockers found in
`Prop79IncomingSearch` using separate mathematical source arguments. It
keeps the same input: Cnu `(s,t)=(14,139)`, global E2 basis ID 4412,
local E2 index 2. Its staircase row is 4411, not basis row 4411.

The resulting conditional finite search supplies all 24 comparisons in
the minimal no-hit dependency graph. All four complete incoming maps
exclude the tracked class:

| Page | Complete source dimension | Target dimension | Tracked coordinates |
|---|---:|---:|---|
| d2 | 4 | 4 | e2 |
| d3 | 3 | 2 | e0 |
| d4 | 0 | 2 | e0 |
| d5 | 1 | 2 | e0 |

The optional stronger target d5 quotient graph still has 33 of 36
comparisons available. The implementation does not need that outgoing
calculation and does not assert survival to E6. The original unconditional
`Prop79IncomingSearch/search.json` is preserved: it still reports its two
missing target comparisons.

## Source arguments

`ActualIncoming.lean` transports the preceding package's complete
three-column d3 calculation to every actual Cnu source element. Full
source coordinates, faithful target coordinates and the whole differential
interpretation are explicit. `actual_no_hit` excludes the actual named
target, not just a coordinate vector.

`bottom_inclusion.py` exports six complete bottom-cell maps around the
named target, 26 coefficient columns, eight relation reductions and four
d2 quotients. The whole S0 E3 target at `(17,141)` has dimension zero.
`Maps`, `Comparison`, `Naturality` and `Actual` use that zero target and
bottom-cell naturality to prove the actual d3 of the Cnu named class is
zero. No incoming or outgoing NULL is treated as zero by source status.
`MapSemantics` supplies arbitrary-vector coefficient semantics.

`DerivedStep` combines that named outgoing result with the other outgoing
basis column's future-event prefix, using actual additivity to cover the
entire two-dimensional source. The complete incoming result is transported
to the proof-indexed incoming carrier. `Assembly.prefix4` uses these
source arguments to construct the whole actual d3 step; neither unknown
differential value is an input to that constructor.

For d4, both complete neighboring coordinates have dimension zero.
`ZeroSpaces.step4` derives every actual outgoing and incoming value from
those full coordinate meanings. `Assembly.prefix5` uses it to construct
the d4 step. At d5 the source is one-dimensional, staircase row 3994 with
future d16 marker and raw NULL; its complete future-prefix meaning remains
explicit in `Assembly.page5`. No d5 outgoing value is requested.

## Same-input actual trace and tactic

`Constructed` requires additive E2 coordinates and local actual homology
zero/addition laws. It constructs E3, E4 and E5 coordinates from complete
neighboring map meanings. No later current coordinates or quotient formula
is supplied. `Trace.result_sound` tracks one fixed raw E2 element and
proves that its E2, E3, E4 and E5 representatives are not incoming
boundaries and its E5 representative is nonzero.

```
example (certificate : Certificate S pages initial) :
    ResultValid S pages initial (raw initial) := by
  prop79_cert using certificate

example (certificate : Certificate S pages initial)
    (input : (S.element 2 degree).carrier)
    (bindingProof : initial.coordinates.equivalence input = NoHit.input) :
    ResultValid S pages initial input := by
  prop79_cert using certificate named bindingProof
```

The names in these examples are in `Prop79TargetSearch.Constructed`.
The certificate packages a constructed prefix and the complete last-page
incoming interpretation. It contains mathematical proofs of actual meanings,
not C++ data that can discharge those meanings automatically. Wrong goal
and zero-input regression examples fail as expected.

## Verification and limitations

Run from the repository root:

```
python3 program/Prop79TargetSearch/conditional_search.py
python3 program/Prop79TargetSearch/bottom_inclusion.py
python3 program/Prop79TargetSearch/compile.py
python3 program/Prop79TargetSearch/audit.py
python3 program/Prop79TargetSearch/check_trace_models.py
```

`audit.py` independently reconstructs the necessary graph, checks exact
source SQL, replays all coefficient reductions, verifies every finite
homotopy and quotient identity with integer bit vectors, checks full
induced maps, and rechecks all four complete no-hit calculations. The
same-input trace oracle covers 221184 relabelled finite carrier models and
663552 quotient steps. Two export runs have identical bytes. All actual
compile attempts and their observed exits are retained; failed attempts
are not verification evidence.

The final theorem is conditional on actual Adams data, full coordinate
meanings, naturality of the eta and bottom-cell maps, boundary and future
prefix interpretations, and local homology zero/addition laws. The finite
certificate system checks complete algebraic data and the kernel checks
the deductions from these explicit assumptions. It does not identify this
abstract system with the topological Cnu spectrum, prove the synthetic
extension obstruction in Proposition 7.9, or prove Proposition 7.8's
synthetic detection equivalence. No unconditional Proposition 7.9 or
full Kervaire formalization is claimed.
