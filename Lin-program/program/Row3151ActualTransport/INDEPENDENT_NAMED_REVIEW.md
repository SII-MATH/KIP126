# Independent fixed-name trace review

No correctness findings in the final `Named.lean` source. Its recorded
direct compilation exits 0, the source/log hashes match, and all twelve
printed axiom reports contain only standard dependencies. No independent
Lean compilation was performed during this review.

The source is fixed to the six-dimensional coordinate vector at local
index 2, and the target to the five-dimensional vector at local index 1.
`raw_binding` matches their coordinates to the imported finite-event raw
vectors for every branch. The actual E2 elements are defined by the inverse
of `Meanings.sourceE2.equivalence` and `Meanings.targetE2.equivalence`;
the final theorem does not accept arbitrary raw E2 elements.

The four `StepMeaning` inputs use exactly the fixed d2/d3 comparisons.
Their current/next coordinate objects share the same S and pages, and the
last next-coordinate objects are precisely `E.source` and `E.target`, not
new independently related coordinates. Every step includes a full actual
outgoing interpretation, a bijection for the entire incoming carrier, and
the actual quotient projection law. The incoming coordinate equivalence
does not separately claim linearity or zero preservation; neither is
needed for its full-image equivalence, because the incoming differential
equation quantifies over every actual input and the map is surjective.

`advance` forms the actual cycle and its actual quotient class, extending
`Trace` by its `step` constructor. Both d2 and d3 cycle checks use the
fixed finite matrix identities. Projection laws derive the E3 and E4
coordinates, so those terminal coordinate statements are conclusions
rather than extra assumptions. `source_prior_nonboundaries` and
`target_prior_nonboundaries` use every actual incoming element through
`boundary_iff`; the finite image exclusions cover both prior pages.

`named_event` therefore removes the earlier arbitrary-endpoint issue for
the fixed coordinate names. It retains the explicit known d4 column and
the mathematical meanings of the coordinate systems, full differentials,
and quotient maps. It does not identify the finite coordinates with the
actual Adams E2 of a sphere from a CW definition, or derive those meanings
from SQL rows. This remaining topology-interpretation boundary is stated
in `NAMED_BINDING.md` and is not a hidden proof assumption.

## Independent finite trace oracle

`independent_named_review.py` reuses the exact imported finite matrices
but independently constructs local actual groups and all actual quotient
cosets under 240 reproducible coordinate relabelings across six branches.
It starts from the inverse of the two fixed raw coordinate vectors, forms
actual cycles and quotient transitions, and checks the final actual event.
The observed run exits 0 and covers:

- 960 actual prior-page quotient steps;
- 11,040 full incoming-carrier element evaluations;
- 24,960 actual/full-matrix boundary membership comparisons;
- 7,680 actual cycle-to-quotient evaluations;
- 12 branch-specific raw coordinate bindings and 240 final nonzero events.

The oracle verifies the local algebraic interpretation and trace mechanism;
it is not a global Adams realization. `independent-named-review.json`
records source, input, log and object hashes. Historical direct object
evidence is retained separately from later Lake objects.
