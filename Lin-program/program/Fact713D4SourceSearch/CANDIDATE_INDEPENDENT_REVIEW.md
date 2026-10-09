# Independent C2h5 candidate review

The independent audit identified and corrected one complete-coordinate error
in the initially generated source incoming d3 matrix. Raw row 2569 has
`base="0,1"` and later-prefix zero, while row 2570 has `base="1"` and d3 image
equal to the second source E3 coordinate. Hence both E2-ordered incoming
columns equal that coordinate: the matrix is `[0,0,1,1]`, not `[0,0,0,1]`.
The boundary subspace is the same, but the full incoming-map equation requires
this correction. The generator, wire and candidate replay now agree.
The earlier audit is preserved with `before-d3-basis-correction` in its name.

No unresolved correctness issue remains in the finite C2h5 search.
`candidate_independent_review.py` imports no producer or search helper. It
opens the two original databases read-only and independently checks:

- All 16 complete E2 matrices, 44 columns, and 20 module-relation reductions.
- All 12 complete d2 neighborhoods, including every incoming E2 source.
- Both adjacent d2 squares on 114 vectors and all six induced E3 maps.
- The 14 parameterized d3 quotients, with 1,071 quotient-pair checks including
  the four staircase comparisons used by the coordinate bridge.
- Forty checks of both E3 coordinate changes and the whole d3 chain maps;
  the induced E4 coordinate changes preserve the one-dimensional coordinate.
- All raw d3 staircase vectors for the source and target matrices are tested
  after conversion to their E2-ordered E3 coordinates, including both source
  incoming basis vectors. Conditional zero refinements are labeled explicitly.
- All 512 assignments of three source, two target, and four incoming bits.
  Exactly 32 pass naturality; all 480 nonzero incoming assignments fail.
- The whole source E4 map is zero and the whole target E4 map reflects zero
  for every accepted assignment. The source dimension is zero or one and the
  target dimension is always two. No unknown source or target bit is chosen.

The raw row identifier is not a basis-coordinate identifier:

| Role | Staircase row | `base` | E2 basis row |
| --- | --- | --- | --- |
| Named target image | 4185 | `3` | 4188 |
| Unknown target d3 column | 4188 | `0` | 4185 |
| Unknown incoming d3 column | 3988 | `3` | 3991 |

Whole incoming naturality maps S0 row 2773 to coordinate 3 and forces the
last column of the C2h5 incoming d3 matrix to vanish. The other three columns
are accounted for by the complete raw staircase at `(13,135)`. The target
image is a cycle outside the complete boundary subspace in all four target
parameter cases. The S0 E4 target is one-dimensional, so this proves the
whole finite map reflects zero, not just a test of one selected vector.

The S0 row-2684 and row-2773 d3-zero refinements are conditional mathematical
inputs from earlier modules; SQL `NULL` has not been decoded as zero. The
remaining actual-object premises are complete current-page coordinate and
map meanings, actual quotient transitions with explicit zero laws, and d4
naturality. The generic `ActualDescent.lean` derives next-page coordinates
and their whole map equation from these inputs. A finite audit does not
establish that imported databases realize the sphere Adams spectral sequence.

Reproduce the finite audit from the repository root:

```sh
python3 program/Fact713D4SourceSearch/candidate_independent_review.py
```

The JSON and log record the exact input hashes and counts. This review does
not claim compilation of leaves that are still being implemented by the
owning agent; their separate compile records are authoritative.

`generate_comparison.py` reproduces `Comparison.lean` byte for byte from the
12 complete recorded neighborhoods without modifying the Lean source. Its
default replay result is stored in `comparison-replay.json`.
