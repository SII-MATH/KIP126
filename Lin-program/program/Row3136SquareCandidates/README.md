# Complete local square-zero candidates for row3136

The unknown row3136 d3 image has coordinates `(a,b)` in the two-dimensional
target at `(23,142)`. That target has a known second d3 column 1, from
ss row3306 to E2 basis3471. Its first column, ss row3305, is still represented
by a parameter `u`. Therefore the whole target map is `[u,1]`, and square
zero gives precisely `b = u*a`.

| u | a | Row3136 image |
| ---: | ---: | --- |
| 0 | 0 | `(0,0)` |
| 0 | 1 | `(1,0)` |
| 1 | 0 | `(0,0)` |
| 1 | 1 | `(1,1)` |

The diagonal nonzero case is necessary unless a separate mathematical
theorem proves u=0. This package neither sets u nor selects a row3136 value.
The prior row2994 incoming branch can be zero or `(0,1)` in canonical
coordinates. Crossing those two incoming cases with all four `(u,a)` pairs
gives eight local diagrams, each with complete source and target d3
quotient witnesses. The target E4 dimension is `1-a`; the source E4 dimension
is `2-a-residual`. These are finite candidate dimensions, not actual branch
identifications or global staircase choices.

`Data.lean` checks four complete d2 neighborhoods and sixteen complete local
d3 comparisons. `Basic.lean` proves the exact square-zero equivalence and
kernel candidates. `Parameters.lean` checks every parameter-selected wire,
its full matrices, adjoining equality and exact quotient dimensions.
`Actual.lean` derives the actual image restriction using
`AdamsSpectralSequence.differentialSq`, assuming the complete actual target
map interpretation with parameter u. It also proves the whole-source
matrix coefficient constraint when that matrix has been interpreted. The
known-zero row3135 column in that matrix still needs its separate actual
Leibniz interpretation; no desired row3136 value is supplied.

Raw naming is explicit: ss row3136 base0 names E2 basis3134; ss row3135
base1 names E2 basis3135. The ss3306 target is local1, E2 basis3471, and its
projection is the sole nonzero next-space coordinate. Both original NULL
rows3136 and3305 remain NULL in the provenance.

`audit.py` independently checks all SQL neighborhoods, the full d2 and d3
quotient identities, every possible local linear source matrix, and 192
actual-target relabelings. `search.py` is an untrusted certificate producer.
No global family is modified, no unknown later row is guessed, and no
actual E4 continuation or permanence conclusion is asserted.

```sh
python3 program/Row3136SquareCandidates/search.py
python3 program/Row3136SquareCandidates/generate.py
python3 program/Row3136SquareCandidates/audit.py
python3 program/Row3136SquareCandidates/compile.py
```

All accepted Lean proofs use only standard axioms. No `sorry`, custom
axiom, native proof evaluator or trust in C++ appears. Failed elaboration
attempts remain separately recorded; only successful records are accepted.
