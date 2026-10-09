# Next proof frontier after all 17 claims

All 17 CSV identifiers exactly match the 17 ClaimCoverage entries. The
per-claim gap inventory and pinned input hashes are in `frontier.json` and
`claims.csv`. This review changes no coverage claims or registered source.

The closest separate task is **Fact 7.19: construct the actual fixed named
E2-to-E6 trace from a single initial additive coordinate equivalence**. The
current theorem proves a finite trajectory, but no same-system actual path
theorem instantiates it. This can reuse the already checked comparison data
and the general next-coordinate construction without adding a new unknown
differential completion.

Concrete evidence:

- `doc_data/kervaire_claims.csv:13` requests E6 survival of `h1 x121,7`.
- `program/Fact719TrajectoryCertificates/Generated.lean:126` fixes all four
  d2-d5 stages and proves `named_finite_E6`. The source file contains 36 full
  predecessor comparisons and their overlapping map bindings.
- The four tracked wires have `(n,m,k,h)` equal to `(0,1,1,1)`, `(0,1,0,1)`,
  `(0,1,1,1)`, `(0,1,1,1)`. All tracked outgoing matrices are zero; every
  quotient projection is the identity and there are no incoming coordinates.
- `program/Fact719TrajectoryCertificates/Named.lean:9` identifies the initial
  vector with the named page target; line 18 supplies its literal polynomial
  interpretation. Line 27 explicitly preserves the unknown d6.
- Raw SQLite basis 2433 is `(s,t)=(8,130)`, monomial `1,1,323,1`, with d2 `""`.
  Staircase row 2433 is `(8,130,"0",NULL,9994)`: its unknown event is d6.
  The d2-d5 zero-prefix statements are part of the imported finite model and
  still need actual mathematical interpretation; NULL is never replaced.

Proposed implementation in a new `Fact719ConstructedActual/` directory:

1. Bind the four fixed accepted wires and named vector. Reuse the generic
   `AdditiveCoordinates` and `StepInput` at
   `program/Fact713ConstructedNamed/Basic.lean:10`, or define a neutral adapter
   in the new directory without modifying that frozen module.
2. Supply only the initial actual E2 additive coordinates. At each page,
   keep the complete actual outgoing/incoming interpretation and local
   actual homology zero/addition laws explicit. Construct all later
   coordinates and quotient laws using `ActualAdamsHomologyCoordinates`.
3. Prove four actual cycles and nonboundaries, then construct a nonzero E6
   endpoint with `ManualInputObligations.Trace` from the exact initial raw
   vector. No later coordinates, survival statement, arbitrary endpoint, or
   zero-prefix conclusion is accepted as a substitute for whole-map meaning.
4. Check the actual trace in relabeled finite carrier models and audit every
   declaration for standard axioms. Add no E7 or h2-extension assertion.

This advances the finite-to-actual semantic interface while keeping its
unproved topology boundary explicit. It does not complete Fact 7.19 for the
sphere without an actual E2/differential comparison. The h2 extension used
in Lemma 7.20 remains separate.

Why this precedes other separate gaps: Fact 7.15 still needs its conditional
Ceta map interpretation; Remark 7.7 lacks the actual affine-membership
premise; the permanence claims require genuine infinite-tail input;
Proposition 7.9 additionally needs complete incoming sources and a synthetic
contradiction; the three manual equations require external theorems. The
49-spectrum reconstruction and 101/105 whole-span elimination are substantially
larger. Fact 7.13's row 2773/2994 work is deliberately outside this selection.
