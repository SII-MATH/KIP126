# Independent coordinate-choice review

The C++ reproduction emits 1234 valid-complex candidates. Two recorded runs
are byte identical to each other; their output is not byte identical to
the old comparison family. Exactly 1195 wire objects match the old objects
and 39 contain alternative witnesses. All 1234 preserve the dimensions and
both differential matrices.

No correctness finding in the final source and build review. The generic
leaf and the 39-case data leaf have observed direct exit zero, with 43
printed axiom reports using only standard Lean axioms. The independent full
review script also exits zero. The final data proof exposes all four
dimensions before rewriting the equal differential matrices; this resolves
elaboration without weakening the checked proposition.

The 39 candidates are imported individually and checked in Lean. Their
old counterparts are indexed into the previously checked batch modules.
The same-complex equalities transport the new comparison proofs to the
exact old outgoing and incoming matrices before invoking the generic
coordinate equivalence. No old family entry is changed.

The generic `HomologyCoordinateChoice.equivalence` passes through the same
cycle/boundary quotient. Its inverse passes in the opposite direction;
both inverse laws follow from the two checked quotient equivalences.
`coordinates_compatible` compares the two projections on every actual
quotient class. `equivalence_apply` identifies the map with new projection
after old inclusion, and `equivalence_add` proves addition preservation.
Thus the proof supplies both invertibility and coordinate meaning.

The independent oracle validates the exact 39 JSON-to-old-batch bindings,
1008 complete homotopy input vectors, 9792 quotient representative pairs,
416 comparison coordinate vectors, 208 vectors for both coordinate inverse
laws, 1488 additivity pairs and 352 cycle compatibility cases. All pass.
The coordinate change is nonidentity in 34 cases. In the remaining five,
the wire witnesses differ but their induced coordinate map is identity.
Therefore all 39 should be called alternative witnesses; it would be
inaccurate to say all 39 change the homology coordinates.

`independent_review.py --data-only` records the finite data review without
asserting Lean build success. The full invocation also checks the final
direct compiler records, final source hashes, logs, allowed axioms and
current object hashes. Failed compilation attempts remain outside the
success evidence. The machine-readable full report is
`independent-review.json`. The final generator reads all fixed inputs and
recreates the exact 39 definitions; its index, dimension and matrix binding
checks agree with the independent audit.

These results justify changing the coordinates for each supplied complex.
They do not assert that all later page matrices can be used unchanged after
arbitrary basis replacements. The original coherent family retains its
fixed coordinates. Neither reproducible output nor a digest replaces the
Lean certificate checker.
