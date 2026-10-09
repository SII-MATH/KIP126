# Conditional actual cycle representatives and row-3247 detection

`LaterBoundary` records actual cycle representatives from E3 through the
page preceding a specified boundary, the complete quotient-transition
equations between those representatives, and the final differential-source
equation. The two instances used here are Cnu row 1183 at `(18,85)`, recorded
as the d4 target of row 1078 at `(14,82)`, and Cnu row 5286 at `(19,146)`,
recorded as the d7 target of row 4536 at `(12,140)`.

The actual E3 cycle representatives and their names are explicit mathematical
inputs. Their cycle proofs are fields of `PageCycle`. The later-boundary
equations document the source association; they do not prove that an
arbitrary E3 class is a cycle. In particular, the proof of
`bound_element_cycle` uses the first representative's cycle property and
the class binding, not the later-boundary equation. No database level tag
is decoded as a proof.

`Actual.row3247_d3_zero` uses those two named representatives to derive both
product-cycle conditions needed by P-squared detection, factorization,
h0/d0 joint detection and Cnu-to-sphere naturality. Its interface does not
take a separate h0-product-cycle or d0-product-cycle premise; those facts
follow from the explicitly supplied named cycles and whole product meanings.
The mathematical cycle obligations have been organized, not discharged from
the raw database.

`Whole.row3247_whole_d3_zero` extends the named result to the complete
one-dimensional actual sphere E3 source. It uses the complete source
equivalence and its explicit zero law, so it covers both source vectors.
These conditional theorems justify the comparison data in
`Fact713Row3247ConditionalBranches` only under the same actual interpretations.

```sh
python3 program/Fact713Row3247Boundaries/compile.py
```

The compiler runs serially and records observed results and source hashes.
There are no custom axioms, SQL NULL-to-zero rules, native proof evaluators
or implicit trust in the C++ or Python exporters.
