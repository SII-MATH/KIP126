# Complete d2 homology comparison with stored E3 representatives

Fact761.lean uses the same actual outgoing/incoming d2 matrices already
verified in Fact761PageCertificates, but its inclusion columns are the
actual selected staircase E3 representatives, in stored row order:

- global staircase2701: e4, level9983, unknown d17;
- global staircase2702: e0+e3, level9994, unknown d6;
- global staircase2703: e3, level9997, known d3;
- global staircase2704: e2, level9997, known d3.

The incoming d2 row e5 and the outgoing d2 row e1 are excluded. No later
unknown value is set to zero. The four surviving representatives are
cycles before d3. checkComparison verifies all complex, splitting and
homotopy identities against the actual d2 matrices. completeComparison
therefore proves these precise staircase representatives span the entire
finite d2 homology, independently modulo boundaries; equivalence supplies
inverse functions on the actual quotient type.

named_class_coordinates proves the named x126,8,4+x126,8 quotient class
has coordinates(0,1,0,0) in this basis, matching its staircase location.
reconstruct_every_class holds for every homology class, not only this
named vector. This closes an actual finite basis bridge for use in later
page calculations. It does not justify any unknown later differential
or identify the finite imported complex with the true Adams sequence.

Run `python3 program/NamedPageComparison/review.py` to verify the exact
representative columns against the database read-only. The Lean module
was directly compiled with -j1; no root configuration was changed.

## Next finite differential and linked quotient

`Fact761D3.lean` checks the imported finite adjacent incoming E3 space is zero:
the single E2 generator at(5,132) has nonzero d2 into local1. It also
checks a complete d2 comparison at target(11,136), using exact staircase
representatives e1,e2,e3,e0. In these verified coordinates, d3 has columns
0,0,e0,e1 on source representatives e4,e0+e3,e3,e2. The first two zeros
come from the stored first-undetermined page17/page6 strictly exceeding3;
they are not obtained merely because the raw diff field is NULL.
`sourceRows` preserves the four raw row identifiers, bases, levels and nullable
diff fields. `queryStored` explicitly interprets the decoded outgoing levels;
`stored_unknown_pages` checks that the unknown event pages remain unknown.
`d3_columns_from_stored_query` proves every matrix entry equals the stored
query followed by the checked target projection. This finite interpretation
does not prove the assertions in the imported levels are true Adams facts.

The d3 complex has zero incoming E3 domain and a two-dimensional quotient.
Its comparison and `named_d2_d3_trajectory` compile: the next representative
is checked equal to the preceding projection, giving a linked nonzero
finite d2/d3 quotient trajectory for the named sum. Both source and target
bases have actual d2 homology comparison theorems, so no unexplained
coordinate transport is assumed.

`python3 program/NamedPageComparison/review_d3.py` checks the actual d3
rows, target order and incoming E2 generator. The new d3 matrix still
relies on imported differential/page-bound assertions as data. Its finite
complex and linked quotient are proved; provenance of those assertions as
true Adams d3 values remains separate. This is not an implicit proof of
the requested real E6 survival.

## Higher-page attempt: blocked, not delivered as a theorem

`Fact761Higher.lean.draft` is excluded from Lean builds. Recursive predecessor
coverage for a prospective E4/E5/E6 trajectory required 36 finite comparisons.
The strict generator `generate_higher.py` rejects the required incoming d3
column at source(10,136), row2858, base2, level9000, diffNULL. A second required
row is(14,139), row3080, base1, level9000, diffNULL. The permanent sentinel is
not a proof of a zero differential; neither row may be zeroed to finish the
trajectory. There is consequently no validated named E6 trajectory here.

`higher-source.json` retains raw staircase and E2 records, database SHA256,
and explicitly labelled unvalidated candidate matrices for audit only.
`review_higher.py` checks all 36 blocks read-only and reports both precise
blockers in `higher-blockers.json`; its success means the blocked-state audit
matches the database, not that the candidate matrices were accepted. The
main class's unknown d6 also remains unknown. No file or cache from this
draft is part of the delivered Lean theorem library.
