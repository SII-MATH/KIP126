# Current remaining-event search

`rank.py` traverses all eleven unresolved roots in the 333-comparison
aggregate. It subtracts only complete exact conditional signatures, including
object, bidegree, page, row ID, base, diff, and level. Proof-log rows are
streamed as provenance, with both record ordinal and physical ending line.
The leading shared unknown is row2574 (three roots, previously investigated).
Rows2576,2708,2695,2925,3080,3390,3147 appear in two roots each. The ranking is
dependency occurrence, not a claim that every listed row is an independent
obstruction: available zero targets are separately marked in `priorities.json`.

`screen.py` examines every nonzero homogeneous d2 cycle with 0<t<=30,
including linear combinations within the two-dimensional basis blocks.
There are 91 such cycles, with six other nonzero vectors rejected as
noncycles. Products are reduced using actual ring relations, then checked
for cyclehood and boundary preservation. The script explicitly enforces
the S0 metadata windows E2 t<=261 and d2 t<=177; outside-window or missing
coordinates are unavailable, never zero. Rows2576,2708,2695,2925,4306 have
no jointly zero-reflecting source-annihilating product family in this range.
The row2576 residual kernel is `(0,1)`. Rows3080 and3390 already have a
zero-dimensional target quotient and supply no new detector problem.

`screen_maps.py` reuses the bounded, trace-preserving map reducer to examine
all 70 configured S0 map records for rows2925 and4306. Row2925 has exactly
one numerical candidate: `S0__Cnu_by_eta`, factor Cnu degree `(1,6)`, basis9,
module generator1. Its named source maps to literal zero; its unique target
quotient coordinate maps to `[0,1]` in Cnu `(15,145)`. Row4306 has no candidate.
Unknown map stages retain their reasons. The actual formalization lives
separately in `Row2925Detector`; search JSON alone is not a proof.

All outputs preserve source hashes and metadata. No search result asserts
Adams naturality, permanence, a topological realization, or the aggregate
Kervaire conclusion.
