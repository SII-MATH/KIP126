# Fact 7.13: complete predecessor-data audit through E12

`audit.py` opens the pinned S0 SQLite database read-only and memoizes every
required (s,t,page) block and degree lookup. Roots are the ten d2 through d11
comparisons for the named source(9,132), E2 vector e0+e1. For each comparison,
its incoming source, middle and outgoing target spaces require complete
preceding-page comparisons; the recursion stops at imported E2/d2 data.

The full DAG contains 1420 unique comparison blocks, 681 unique degrees and
760 unique differential-row uses (a row at two pages counts twice). Every
block retains all three full raw staircase/E2 row lists, selected rows,
dimensions, predecessor edges and differential references in dag.json.
There is no exponential revisiting or omission of indirect dependencies.

Of the 760 required row/page values, 499 are known d2, 52 are known event
values, 59 are stored earlier-zero prefixes, 93 are stored incoming-class
zeros, 55 are permanent-sentinel unknowns and 2 are genuinely unknown event
values. These classifications describe imported finite semantics only.

There are 57 unknown row/page values. 26 have zero selected target dimension;
only 2 of these have an empty E2 target outright. The remaining 24 require
verified complete predecessor quotient comparisons before the target can be
proved zero. Thus 26 are *candidates* for zero-codomain elimination, not 26
proved zero differentials. 31 unknowns remain with nonzero selected targets.

Two blockers cannot be attributed merely to permanent sentinels:
- d3 at(6,132), row2574, base0, level9997, NULL; target selected dimension3.
- d4 at(16,137), row2907, base1, level9996, NULL; target selected dimension2.

All 57 records, their uses, target degrees and dimension flags are retained
in blockers.json. summary.json gives counts and database SHA256. The audit
produces no Lean theorem, zero override, C++-trusted fact or change to the
existing Fact713 files. Neither known/prefix rows nor selected dimensions
establish true Adams provenance. Full finite E12 reconstruction is not ready
without resolving or explicitly conditioning these dependencies.

Run from program: `python3 Fact713TrajectoryAudit/audit.py`. Output is stable
for the pinned database. The run completed successfully.
