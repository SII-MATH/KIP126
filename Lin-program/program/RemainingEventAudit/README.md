# Remaining events 3151, 3152, 3992

This read-only audit records the current blockers in
`AggregateDC2h6Conditional/source.json`. It introduces no override and no
new differential theorem. The source and aggregate fingerprints are pinned
in `source.json`; subsequent aggregate changes require an explicit rerun.

| Event | Recorded result | First unresolved input |
| --- | --- | --- |
| 3151 | Incoming d4 from S0 `(11,137)` | d3 on staircase row 2708 at `(7,134)` |
| 3152 | Outgoing d5 from S0 `(15,140)` | Same row 2708 d3 |
| 3992 | Incoming d4 from S0 `(21,147)` | d3 on staircase row 3564 at `(18,145)` |

## Events 3151 and 3152

Staircase row 2708 is `(7,134,"0,1",NULL,9997)`. It represents E2 basis
2706 plus 2707, with E3 coordinates `[1,0]` in a two-dimensional source.
Its full d3 target at `(10,136)` is one-dimensional, represented by E2
local index 2, basis id 2857. E2 basis id 2708 is a different class.

The existing exhaustive configured-map screen covers all 70 S0 maps, with
35 nonzero source images, 14 zero targets, 21 unavailable cases, and no
source-annihilating detector. Six maps detect the full target but have
nonzero source: Csigma, CW_sigma_nu, CW_2_eta by nu, DC2h5, DC2h6, and Csigma
by 2sigma. The audit rechecks every relevant logged source vector in the
actual d2 quotient. None equals the required source image. Even the span
of the displayed zero-valued, nontrial logs on pages 3 through 998 excludes
the required vector in each of the six targets. Those logs still require
their own source and page semantics; this span check grants no theorem.

In the complete pinned proof CSVs, exact S0 `x=0,1` d3 records occur at ids
2422713 and 2603924 and both retain `[NULL]`. The nearby later-page records
on `x=2` cannot be reused: they represent the other E3 coordinate.

A complete conditional detector route must supply six actual matrices for
one of these maps, four full d2 comparisons, both adjacent chain-map squares,
and a proof of the d3 value of its nonzero source image. Actual d3 naturality
then transports that value; target injectivity fixes the S0 coefficient.
The coefficient may be zero or nonzero and must be established independently.
No source value currently recorded here closes that route.

After row 2708 is resolved, the aggregate must recompute the entire DAG.
For example, row 2925 at `(11,137)` has a proved conditional d3-zero detector,
but that does not determine its d4. `AggregateHighD2Conditional` already
records a later `row2925 d4` blocker in the `(15,140)` closure. Resolving the
first blocker alone is therefore insufficient to claim either full event.

## Event 3992

Staircase row 3564 is `(18,145,"1",NULL,9000)`, E2 basis id 3562. Its full
d3 target at `(21,147)` has dimension 3. N382803 records `local4 -> local2`,
whereas the required source is local1. Existing `Row3564.requested_ne_logged`
proves these classes are distinct in the complete d2 quotient.

The available C2-to-S0 route is more precise than assuming a zero source
differential. The map has suspension 1 and sends C2 `(18,146)` local1 to
the desired S0 source. The C2 source is staircase row 3735 and remains
`NULL,9000`. Its target map has rank one: a candidate vector `v` in the
three-dimensional C2 `(21,148)` E3 target maps to zero exactly when `v[0]=0`.
The independent audit rechecks the four complete C2/S0 d2 quotients and
enumerates all eight candidate vectors; exactly four satisfy this condition.
`C2Naturality.requested_zero_from_target_kernel` provides the conditional
semantic theorem once a represented source value, the kernel equation and
actual naturality are supplied.

`LaterDetector.from_D154545_conditions` can prove the one-bit exclusion using
a genuine later S0 d4 operator, its cycle condition, all seven candidate
refutations from `D154545`, and coherence saying that later d4 kills the
earlier mapped boundaries. Each premise needs an independently justified
mathematical and historical interpretation. Choosing an arbitrary detector
matrix or reusing event 3992's desired conclusion would not discharge them.
The r999 records G241080 and N241081 are software bookkeeping provenance;
they are not d3-zero evidence.

Even a completed row 3564 argument leaves later full-matrix requirements,
including the unknown row 3750 d4 value at `(21,147)`, and full target-side
boundary accounting. D154545 concerns local1; it does not determine row
3750/local0. The existing branch reduction leaves an affine line for that
different value. Every remaining candidate must be checked or retained as
an explicit finite assumption before full event and trajectory validation.

## Reproduction and physical lines

```sh
python3 RemainingEventAudit/inspect.py
python3 RemainingEventAudit/analyze.py
```

The streaming pass reads all three pinned proof CSVs and retains 120 records
across 14 source degrees. It uses `csv.reader.line_num` to record true
physical line starts and ends, including multiline `info` fields. Some
older reports used the CSV record ordinal as a line number. For example,
N241081 starts at physical line 298588 of part1, and N382803 at line 586829;
their older record ordinals were 235649 and 377371.

`source.json` retains the exact raw SQL and full proof records;
`review.json` records quotient coordinates, all six nonzero-source routes,
the kernel enumeration and exact file hashes. SHA-256 is provenance only.
No source database, existing aggregate, or registered Lean module is
modified. This audit does not claim that no further mathematical route
exists; it precisely identifies the remaining evidence for the examined
routes.
