# Independent review of the first Fact 7.21 d4 detector

No correctness findings in the eight frozen Lean leaves. The review verifies
all 82 frozen file hashes, the successful source and log records, and 55 axiom
reports. Only `propext`, `Classical.choice`, and `Quot.sound` occur. No frozen
source or compilation evidence was modified or rebuilt.

The independent bit-vector implementation replays the raw SQL bases and all
16 E2 matrices (34 columns, 13 relation reductions), the 12 complete d2
quotients, all six full d2 chain maps, four complete d3 quotients, and both
full d3 chain maps. It checks 292 quotient pairs and 80 adjacent-square
vectors. The eight raw d3 maps are reconstructed using invertible staircase
bases; all 26 combinations are checked. Both canonical source incoming
matrices are `[true,true]`. In particular, the two detector staircase inputs
`(1,1)` and `(0,1)` with outputs 0 and 1 give two nonzero canonical columns.
The SQL NULL entries at sphere rows 2622 and 2684 remain explicitly
conditional on their earlier actual d3 theorems.

The complete E4 source map has dimensions 1 to 0. The complete E4 target
map has dimensions 2 to 2 and is the identity in the checked coordinates.
The actual theorem consequently proves zero on every actual source element,
using the actual quotient transition laws and naturality. It takes no d4
value or next-page coordinate equation as a premise. The earlier full map
semantics theorem requires actual generator compatibility and vanishing
relations; those mathematical interpretations are not supplied by hashes.

The independent review exhausts all current and next carrier permutations
for these two quotient descents: 96 source models and 331,776 target models,
covering 1,327,488 quotient representatives and 1,327,296 actual elements.
All 1,152 complete E4 squares force zero; all 3,456 nonzero differential
candidates fail naturality. It also checks all 2,304 relabelings of the
tracked E2 through E5 carriers, including 82,944 actual quotient pairs and
6,912 transitions from the same initial E2 vector `[false,true]`.

`Prefix5` retains the same spectral sequence, pages, initial coordinates,
and endpoint trace as `First.Prefix4`. Its E5 coordinates are constructed;
the zero-dimensional complete incoming source supplies d4 incoming
vanishing. The tactic's result predicate binds the exact input and asserts
a nonzero E5 endpoint for that input. It does not assert permanence. Actual
meanings of the complete d3 complexes and maps, d4 naturality, the previous
prefix, neighboring coordinates, local quotient laws, and the named sphere
interpretation remain explicit premises. The Python models are additional
finite checks, not constructions of those actual Adams interpretations.

Reproduce the review artifacts with:

```sh
python3 program/Fact721FirstD4Search/independent_review.py
```

`independent-review.json` contains exact counts, raw basis transformations,
proof evidence, limitations, and input hashes.
