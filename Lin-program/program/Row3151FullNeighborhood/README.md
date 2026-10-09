# Event3151 with both possible incoming dimensions

The new eta restriction removes the second unknown bit of row2925 d4,
but it does not determine the unknown row2708 d3 or the actual dimension
of the incoming E4 source `(7,134)`. The earlier
`Row3151BranchCertificates` four outgoing completions have incoming
dimension1 and a zero incoming column. They are complete in that stated
scope; they are not an exhaustive treatment of the possible dimension2
incoming source. This directory supplies the missing cases independently
of the old snapshots.

Let `a` denote the unknown row2708 d3 coefficient and `b` the remaining
row2925 d4 coefficient. The complete E3 incoming-source comparison has
outgoing row `[0,a]`, incoming zero, and E4 dimension `1` when `a=true` and
`2` when `a=false`. The row2707 later prefix is its first E4 basis vector.
The event3151 outgoing matrix is `[b,1;0,0]`. A whole incoming d4 matrix
must kill that first prefix vector and have image in this matrix's kernel.

These conditions have exactly six solutions:

| a | b | q | Incoming E4 dimension | Incoming d4 matrix | Event E5 dimension |
|---|---|---|---|---|---|
| 0 | 0 | 0 | 2 | `[0,0;0,0]` | 1 |
| 0 | 0 | 1 | 2 | `[0,1;0,0]` | 0 |
| 0 | 1 | 0 | 2 | `[0,0;0,0]` | 1 |
| 0 | 1 | 1 | 2 | `[0,1;0,1]` | 0 |
| 1 | 0 | 0 | 1 | `[0;0]` | 1 |
| 1 | 1 | 0 | 1 | `[0;0]` | 1 |

The nonzero incoming cases are retained. They kill the entire outgoing
kernel but do not kill the named event source `[0,1]`, whose d4 is always
the nonzero target `[1,0]`. No complete-kernel premise selects `a`, and no
NULL value is assigned.

Each case has a nine-key finite family: `(7,134)`, `(11,137)`, `(15,140)`,
each on d2, d3 and d4. Full comparisons, all supplied adjacent differential
matrices and all consecutive homology dimensions agree. The target d4
comparison is exactly the new `Row3152BranchCertificates` source comparison,
linking the two events at their common degree. The known3151 source and
target each have complete checked d2/d3 paths with the exact raw E2 vectors.

The raw source is staircase row2926, E2 local2/global basis2925; the target
is staircase row3151, E2 local1/global basis3151. The different staircase
row2925 is the unknown combination local1+local2. Raw row2708 remains
`(2708,7,134,"0,1",NULL,9997)` in the retained SQL provenance.

`Semantics.d3_exhaustive` proves that all incoming-source d3 maps satisfying
the first-prefix condition have one of the two `a` values.
`incoming_exhaustive` covers all whole incoming d4 maps in each dependent
dimension. `all_admissible_matrices` uses the known event value, eta's
second-coordinate zero, prefix and complex condition to obtain a checked
complete event comparison in the six-case family. The family is exhaustive
for precisely these supplied finite matrix conditions. It is not a realized
actual Adams spectral sequence or an unconditional topological computation.

The separate `Links` leaf proves that the imported incoming-source d3
matrix is exactly `[0,a]`, its checked quotient dimension is `dim(a)`, and
the original row2707 prefix projects to the indicated first vector in both
dimensions. It also identifies the incoming-source d4 matrix with the same
generic incoming map used in the exhaustive event comparison. The dependent
dimension is thus linked to the actual checked finite comparison, not just
chosen to name two unrelated matrix cases.

`Checks.complete_window` proves exactly the nine-key family consistency and
coverage. `Checks.event3151` proves the same fixed nonzero event for every
case. None of these six alternatives adds six events to the shared batch;
the frozen 358-comparison/95-event snapshot stays unchanged.

## Remaining-event audit

`remaining-audit.json` computes the exact static comparison predecessor
closure for events2696,2697,2852,3151,3992. Only3151 reaches the newly
constrained d4 block. The other four closures have no path to the new
eta/d4/d5 blocks. This does not rule out a future product or naturality
argument absent from that DAG. In particular2696 and2852 still have NULL
targets, and2852's target path still depends on unknown row3147.

## Reproduction

```sh
python3 program/Row3151FullNeighborhood/prepare.py
python3 program/Row3151FullNeighborhood/review.py
python3 program/Row3151FullNeighborhood/remaining-audit.py
python3 program/Row3151FullNeighborhood/compile.py
python3 program/Row3151FullNeighborhood/assert_current.py
```

The independent oracle enumerates all320 possible outgoing/incoming matrix
pairs across both source dimensions and finds exactly six admissible pairs.
It checks54 complete comparisons,12 adjacent matrix equalities,36 consecutive
dimensions and24 prior endpoint steps. Every C++ output is only data; Lean
rechecks the complete comparisons. Source hashes are provenance, not
mathematical assumptions. Actual values of imported differentials, earlier
product meanings and actual E2/page identifications remain explicit external
interpretation obligations.

All four Lean modules have observed successful serial direct compiler
exits, with thirteen standard-or-no-axiom reports. `current-audit.json` binds
current source/log/input identities while keeping historical and current
object hashes separate. Earlier failed-development logs are preserved.
No `sorry`, `native_decide`, custom axiom, or C++ trust is used.

`INDEPENDENT_REVIEW.md` records the separate independent review of the
original three frozen leaves and all six complete neighborhoods. Its scope
does not silently include a subsequently added leaf; supplemental review
of `Links` is recorded separately when available.
