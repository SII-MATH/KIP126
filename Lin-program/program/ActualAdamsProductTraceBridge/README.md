# Actual product traces across Adams pages

This directory closes the explicit trace-composition gap left by
`ActualAdamsProductCycleBridge`. Given an actual E2 name equal to the intended
graded product, it constructs the same named product at E4 through actual
homology transitions. A product trace is derived, not supplied as a premise.

## Local mathematical premise

`Transition S pages P r d e` requires one equality for every actual pair of
cycles at the fixed page r and fixed bidegrees d/e: take their product as a
cycle and then its actual next-page homology image, or take the two next-page
homology images and multiply them; the two results agree. It is a local
full-cycle multiplicativity square and carries no preassembled trace or
claim that a named element survives.

`trace_product` inducts on actual `ManualInputObligations.Trace` constructors.
At each step it proves the product is a cycle by the same-page Leibniz law,
advances through the actual quotient, and uses the corresponding local square
to identify the endpoint. It only requires squares with `2 <= q < r`, ending
strictly before the requested endpoint page.

Same-page product laws and arbitrary zero-preserving homology identifications
alone do not give these squares. The review includes an invertible linear
zero-preserving map of F2[x]/(x^2) that fails to preserve products; no local
product transition is inferred merely from a type equivalence or zero law.
The ordinary same-page Leibniz law remains distinct from any cross-page or
indeterminacy form of a generalized Leibniz rule.

## Actual factor prefixes and names

`Factors.EmptyTargets` requires faithful actual E2 coordinates in `Vec 0` for
each outgoing target of the prefix. `endpointOfEmpty` propagates these actual
zero spaces with `CertifiedAdamsPages` and `ZeroMeaning`, proves every needed
factor cycle, and builds a trace recursively. No nonboundary or nonzero factor
condition is required.

The g prefix from E2 to E4 uses target degrees `(6,25)` and `(7,26)`; the
delta prefix uses `(11,55)` and `(12,56)`. These are precisely the empty raw
E2 degrees found in `Fact764CycleFromProduct`, but SQL emptiness alone cannot
provide coordinate faithfulness. The possibly unknown incoming row279 for
delta does not obstruct forming an outgoing-cycle trace; its later class may
be zero. It is not silently assigned a zero differential.

`NamedTransitions` records just the six needed local squares: g*g,
g^2*g^2 and g^4*delta, each at pages2/3. `namedTrace` composes these and the
two factor traces. `namedTrace_from_name` first requires an actual equality
between the intended E2 name and the actual product, then builds its E4 trace.
`named_at` identifies the result with `System.at initialName 2`, which is Adams
page4, via the already checked trace bridge.

`Assembly.FactorTargets` adds the empty `(13,57)` E2 target used to prove the
delta d4 cycle. `endpoint` constructs the named E4 endpoint from five faithful
empty-target coordinate maps and the local squares. `endpoint_cycle` and
`at_cycle` prove that this very endpoint is a d4 cycle, using the actual graded
fourth-power cancellation from the previous bridge. `finite_at_cycle` then
transports it to the exact finite three-coordinate named kernel condition.

## Remaining mathematical inputs

All data refer to one typed actual Adams spectral sequence, its certified
graded product, homology identifications, and zero interpretation. The six
local multiplicativity squares, five faithful empty-target E2 interpretations,
true E2 names, and final named coordinate equation must still be proved for
the intended spectral sequence. The implementation does not reconstruct those
objects from the raw topology or justify a name from a database string.

The final finite kernel condition can be combined with the previous incoming
obstruction and complete-source conditions to get unique E5 homology. Full
actual uniqueness additionally requires `WholeMeaning`; no later permanence
or stable homotopy identification is claimed here.

## Reproduce

```text
python3 program/ActualAdamsProductTraceBridge/compile.py
python3 program/ActualAdamsProductTraceBridge/review.py
python3 program/ActualAdamsProductTraceBridge/assert_current.py
```

Four new leaves compile serially with `lean -j1`. Fourteen axiom reports use
only standard Lean axioms. The independent arithmetic replay verifies source
SQL empty degrees and names, exact local degree pairs, finite homology/product
transition behavior, and counterexamples to inferring multiplicativity from
zero preservation. No original comparison data or frozen predecessor source
is modified.
