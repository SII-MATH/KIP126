# Independent review of the row-3247 boundaries and conditional branches

No findings were identified. This review covers the three frozen
`Fact713Row3247Boundaries` leaves and eight frozen conditional-family leaves,
including the final `named_d8_shape` theorem. All eleven source/log/object
records and imported hashes match; the 38 printed reports use only standard
Lean axioms or none. Frozen sources and compiled dependencies were read only.

## Mathematical premise audit

`LaterBoundary.cycle` already consists of actual `PageCycle` values from
E3 up to the page before the recorded later boundary. Therefore its first
representative includes a proof of the E3 cycle condition. The transitions
and endpoint equation associate this representative with the later actual
boundary; they do not establish the E3 condition for an arbitrary earlier
named element. `bound_element_cycle` correctly uses the first representative's
cycle property and the explicit element binding. Its proof does not use
the endpoint or transition fields. The README and conditional signature
state this limitation accurately.

The P-squared product is tied to a supplied actual E3 cycle at Cnu row 1183;
the h0 product is tied to one at row 5286. Product coordinate injectivity
and the explicit naming equations identify them with the actual products.
The P-squared detector, alternate factorization, h0/d0 joint reflection and
top-cell naturality then derive the named sphere d3-zero result. The two
product-cycle arguments are organized by mathematical premises, not derived
from SQL level tags. The exact read-only SQL rows independently match
1078 -> 1183 at d4 and 4536 -> 5286 at d7, with the stated degrees and bases.

`Whole.whole_of_named` covers the entire one-dimensional actual sphere
source through its full quotient equivalence, the source-zero equation,
and the named nonzero class. It does not restrict the differential check
to a list of supplied representatives. Eight relabeled zero-map models and
24 countermodels without the named-cycle premise verify this distinction.
An additional finite example shows that a later boundary does not force an
arbitrary earlier element to be a cycle.

## Complete family audit

Both old families are preserved as exact entry-list prefixes: 1290 entries
become 1300 and 1292 become 1302, with ten additions apiece. The branch
matrices at row 2994 remain different and are never merged. Unique keys,
full homotopy identities, quotient fibers, neighboring differential equality
and consecutive dimensions all pass an independent integer-vector audit.

For the zero branch, the audit checks 2,588 full homotopy vectors, 9,544
quotient pairs, 1,690,000 ordered family pairs, 991 neighboring maps and
800 consecutive pages. For the residual branch the respective counts are
2,591, 9,546, 1,695,204, 993 and 802. Each checks the same seven named
d2-through-d8 steps with cycles, nonboundaries and the exact next vector.

The common d8 wire has source dimension 1, incoming/outgoing dimensions 0,
and next dimension 1; inclusion and projection are identities. It gives
the finite E9 endpoint. The d9 key and row-2622 d4 key are absent in these
frozen families, as the Lean theorems assert. A later separately developed
detector may supply that missing comparison, but is not part of these
frozen-family assertions. The actual E9 interpretation requires the same
explicit cycle, product, full-map and quotient premises; finite family
agreement does not select the actual row-2994 branch.

Run `python3 program/Fact713Row3247ConditionalBranches/second_review.py` for
the read-only review. `second-review.json` records all evidence. No custom
axiom, sorry, native proof evaluator or trust in an external producer is used
by the audited successful Lean proofs.
