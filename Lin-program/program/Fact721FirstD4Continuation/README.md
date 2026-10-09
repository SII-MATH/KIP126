# Whole row2622 d4 rule in both conditional comparison families

This package extends each frozen `Fact713Row3247ConditionalBranches` family
using only `Fact721FirstD4Search.Actual.actual_row2622_d4_zero`. The theorem
annihilates the whole actual d4 map at `(11,133)`; no named representative
or guessed NULL coefficient is needed for that new rule. Its complete
actual d3 meanings, current map meanings, actual quotient transitions and
d4 naturality remain explicit mathematical inputs.

The earlier conditional premises are inherited unchanged. In particular,
the row3247 rule requires the two named actual E3 cycle representatives in
Cnu at rows1183 and5286. Their later boundary equations do not supply the
E3 cycle properties. The row2994 zero and residual cases stay separate.

| Branch | Prior entries | New entries | Complete family | Requested graph present | Missing |
| --- | ---: | ---: | ---: | ---: | ---: |
| Zero | 1300 | 14 | 1314 | 1311 | 109 |
| Residual, rebased | 1302 | 20 | 1322 | 1319 | 101 |

`Data.lean` imports and checks all 20 distinct newly available complete
comparison wires. The branch Extra/Cross/Coherence leaves prove complete
family validity, unique keys, adjacent differential equality, consecutive
dimensions and inclusion of every previous entry. `Branches.lean` proves
the new row2622 d4 block is present and its entire outgoing matrix is zero.
It preserves the existing common d2-through-d8 trajectory to finite E9.
It explicitly proves the next d9 block and row2916 d3 block remain absent.
`ActualRule.lean` binds the new finite d4 wire to the already constructed
actual E5 step and derives its whole outgoing coordinate formula from the
actual C2h6 theorem for every supplied source coordinate system.

The first Fact7.21 class remains at the separately proved conditional actual
E5 endpoint. Its d5 target `(16,137)` needs the complete d4 quotient there.
That quotient first needs unknown d3 columns at `(20,140)`, row3135 and
possibly row3136; after those are resolved the row2907 exact d4 value is
still NULL. A stored future event alone does not reveal that exact value.
There is no claimed E6 or permanence result.

The precise next roots are:

| Requested root | First unresolved row | Degree/page | Full current target dimension |
| --- | ---: | --- | ---: |
| Fact7.13 d9 | 2916 | `(13,137)`, d3 | 1 |
| Fact7.13 d10 / first-class d5 target | 3135 | `(20,140)`, d3 | 2 |
| Fact7.13 d11 | 2431 | `(9,130)`, d3 | 3 |

`next-blockers.json` records each complete raw source, target and incoming
neighborhood. In particular row2916 is E2 coordinate1, and its d3 target is
E2 coordinate0 at `(16,139)`. The target's being a recorded d3 boundary
does not force row2916's d3 to vanish.

```sh
python3 program/Fact721FirstD4Continuation/generate.py
python3 program/Fact721FirstD4Continuation/package.py
python3 program/Fact721FirstD4Continuation/audit_branches.py
python3 program/Fact721FirstD4Continuation/audit_families.py
python3 program/Fact721FirstD4Continuation/compile.py
```

The numeric audits test every vector, every cycle pair and all ordered
family pairs. Their results are supporting evidence; the checked Lean
theorems establish finite certificate validity. The actual topology and
original Adams realization remain explicit outstanding interpretation
obligations. Hashes record provenance and reproduction only. Raw unknowns
are retained; no custom axioms, `sorry` or native proof evaluator occurs in
accepted source proofs. Every compilation attempt, including the observed
terminated initial Data attempt, remains recorded under `evidence/`.
Five unused wire filenames containing a minus sign are retained from that
initial generation; their active replacements use `neg` in Lean identifiers.
Only the 20 imports listed in `Data.lean` form the new finite family data.
