# Full-family continuation after row2693

Both frozen H2 branches are preserved exactly and extended from 1403 to
1413 complete comparisons. The added source d5 matrix at (10,134) is
`[false,true]`: only row2693's named first column is filled by the proved
h1 product theorem; row2694's stored nonzero column is retained. Incoming
d5 sources are complete and have dimension zero, using the checked
(5,130) early quotient. The source comparison has one-dimensional homology.

The ten new comparisons are:

| Center | Page | Current dimension | Next dimension |
| --- | --- | --- | --- |
| (10,134) | 5 | 2 | 1 |
| (15,138) | 5 | 1 | 0 |
| (15,138) | 6 | 0 | 0 |
| (21,143) | 6 | 1 | 1 |
| (21,143) | 7 | 1 | 1 |
| (28,149) | 7 | 0 | 0 |
| (20,142) | 8 | 0 | 0 |
| (5,130) | 4 | 0 | 0 |
| (1,127) | 3 | 0 | 0 |
| (-2,125) | 2 | 0 | 0 |

`generate.py` extends the existing bounded generator and explicitly records
the new conditional row2693 rule, its exact coordinates and premises.
Unknown source row3005 remains unknown. `package.py` writes strict JSON
wires and Lean comparison imports. `Data`, `Extra`, `ZeroB0`, `ZeroB1` and
`Branches` check all new comparisons and cross-family coherence with
`lin_cert` and proved finite checkers.

`Actual.lean` identifies the new source wire with the independently proved
`Fact763Continuation` full map. It reuses that package's actual incoming
construction and same-original-input nonzero E6 theorem. It also proves
every actual element at the d5 target is a boundary, using the preserved
nonzero second source column. Thus its d5 is zero by differential squared
zero. With complete target neighbors, quotient zero/add laws and the full
incoming map, it constructs the actual target E6 chart of dimension zero.
These are complete-space statements, not tests on a selected vector alone.

## What advances

The row2693 source's original E2 input (raw local index4, raw basis2694)
reaches **nonzero E6**. Its d5 target (15,138) is **zero on E6**. The named
paper trajectory at (9,132) remains **nonzero E10**, with its original E2
input `[true,true]`. Its next unresolved dependency is now
`S0:14,138:d4:row3005`, whose possible target has dimension 1. Neither E11
nor E12 for the main trajectory is asserted.

All actual conclusions retain explicit complete input meanings from
`Row2693D5Search` and `Fact763Continuation`, including the known other d5
column, whole incoming coordinates, local quotient laws and full product
transitions. The inherited main E10 theorem still needs its `Prefix10`.
Finite coherence alone does not construct the original topological
spectral sequence.

## Tactics and diagnostics

`fact713_row2693_cert using P` verifies imported main E10 requests against
a complete `Prefix10`. `fact713_row2693_source_cert using D` proves the
same-original-input nonzero source E6, with the exact E2 coordinate binding.
`fact713_row2693_target_cert using T` proves the complete target E6 is zero.
The imported E10 single/batch format and field/record diagnostics are those
of `ActualTraceRequestsE10`/`ActualTraceRequests`. Wrong main output/input
and missing or wrong source input bindings are rejected in `Request.lean`.

## Reproduction and evidence

Run from `program/`:

```sh
python3 Fact713Row2693Continuation/generate.py
python3 Fact713Row2693Continuation/package.py
python3 Fact713Row2693Continuation/audit.py
python3 Fact713Row2693Continuation/reproduce.py
python3 Fact713Row2693Continuation/compile.py
```

The independent audit checks every family quotient (9816 ordered cycle
pairs per branch), all 1081 neighboring matrix matches and 908 consecutive
page matches per branch. It also requires all three preceding-page records
for every comparison after d2, with 2724 predecessor dimension checks per
branch. The correction retained in `frozen-source-before-closure.json`
adds the previously cached but unexported (1,127) d3 predecessor and its
(-2,125) d2 predecessor. It checks exact preservation of every old entry,
the complete source map and both named finite trajectories. The reproduction
check compares all generated artifacts byte for byte. Serial compile
attempts, including failures, are retained in `evidence/`; only the current
source/input-stable exit-zero records are accepted. Accepted theorems use
only standard Lean axioms, with no admitted proof or implicit C++ trust.

The C++/Python output and hashes remain untrusted finite input and
provenance. Lean checks the witnesses and their mathematical consequences;
this package does not prove that the imported E2 algebra is the Ext algebra
of the original spectrum.
