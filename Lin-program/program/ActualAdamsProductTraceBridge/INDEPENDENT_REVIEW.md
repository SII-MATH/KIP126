# Independent Review: Actual Product Traces

Reviewer: `/root/map_search_next`; implementation by `/root/source_rules_next`.
The four frozen leaves `Basic`, `Factors`, `Named`, and `Assembly` have no
identified soundness findings.

`Transition` states a local multiplicativity square for every pair of actual
cycles in two fixed bidegrees. It contains no desired endpoint, named
survival assertion, or preassembled product trace. `trace_product` constructs
the Type-valued product trace by induction. Constructor matching synchronizes
the endpoint pages, and the lower bound on existing traces excludes
impossible start/step mismatches. The inductive step uses the actual product
cycle proof and the local square at the preceding page, with exactly
`2 <= q < r` as its range.

The five empty target degrees are checked against raw SQL, but the actual
theorems still require faithful full E2 coordinates. These are used with the
same actual homology identifications to prove every needed outgoing factor
cycle, then build factor endpoints at E4. Incoming boundaries may kill a
factor and yield zero; no nonzero or nonboundary premise is silently added.
Unknown incoming row279 is retained and is not assigned zero by this route.

`NamedTransitions` supplies precisely six local squares: each of the degree
pairs `(4,24)+(4,24)`, `(8,48)+(8,48)`, and `(16,96)+(9,54)` on pages 2 and 3.
The first two construct the fourth-power trace; the third composes it with
the delta factor trace. `namedTrace_from_name` uses an actual E2 equality
before producing the named trace, so matching strings or bidegrees cannot
replace the name interpretation. `named_at` and `at_cycle` use system index
2, correctly corresponding to Adams page 4. The final d4-cycle is proved
from the separate `(13,57)` zero target and the graded fourth-power theorem.

The independent replay includes all surjective unital ring maps between
`F2[t]/t^4`, `F2[t]/t^2`, and `F2[t]/t`, composing two transitions and checking
every product trace and fourth-power-times-factor trace. This includes
nontrivial quotient maps that kill initially nonzero products. Separately,
five of the six invertible additive zero-preserving maps on the dual-number
ring fail multiplicativity, confirming that the local square cannot be
inferred from a Type equivalence, additivity, or zero preservation alone.

All four successful direct build records match their current sources and
logs; fourteen axiom reports use only standard Lean axioms. The finite
output kernel condition still requires the exact actual coordinate equation;
reverse transport to full actual uniqueness still requires `WholeMeaning`.

The six local squares, actual homology/product objects, five faithful target
interpretations, true E2 names, and final named coordinate binding remain
mathematical proof inputs. This work constructs the trace from those local
inputs; it does not produce them from database metadata, establish later
permanence, or prove convergence.

Run `python3 program/ActualAdamsProductTraceBridge/independent-review.py` from
the repository root.
