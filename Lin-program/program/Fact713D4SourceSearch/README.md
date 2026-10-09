# Row-2684 d4 certificate and actual homology descent

The next common E8-to-E9 gap is raw row `[2684,12,134,"0",null,9000]` at d4.
`search.py` screens all 70 configured S0 maps on its named source and the full
one-dimensional E4 target's E2 representative at `(16,137)`. The screen alone
checks only E3 quotients. Forty-nine maps have both complete quotient results,
21 retain explicit failures, and three E3 candidates remain: C2h5,
S0_by_kappa and C2_by_h5. `review.py` independently replays every result.

`export_c2h5_matrices.py` computes the 16 distinct complete E2 matrices needed
for six whole E3 map neighborhoods. Their d2 adjacent squares and all twelve
complete d2 quotient comparisons are rechecked in `c2h5_e4_candidates.py`.

The C2h5 source map on E3 is entirely zero. The named E4 target maps to E2
coordinate 3, represented by staircase row 4185 with base `"3"` and a later d4
event. It is not row 4188: that row has base `"0"` and an unknown d3 value.
Keeping row IDs separate from representative coordinates is essential.

At the target's incoming degree `(13,135)`, the only unknown C2h5 d3 column is
row 3988, base `"3"`. It is the image of row 2773, whose d3 zero has already
been conditionally proved. The complete incoming naturality equation forces
that column to zero; the other incoming columns have recorded later prefixes.
Thus the target has no incoming d3 boundaries. Its outgoing matrix is
`[(a,1,0,0),(b,0,1,0)]` for the two still-unknown bits of row 4188. Coordinate 3
is a cycle for all four choices and is never a boundary.

The source detector's unknown d3 has three bits. The finite analysis exhausts
all 8 times 4 choices, checking complete d3 naturality and d3-square-zero.
All 32 cases have an injective whole map from the one-dimensional S0 E4
target. The detector source quotient can have dimension zero or one; the
source map remains zero in either case. No raw unknown value is selected.

The ten Lean leaves prove the finite comparisons and a conditional theorem
for actual Adams spectral sequences. `Actual.actual_row2684_d4_zero` proves
that the entire differential at source degree `(12,134)` vanishes, uniformly
in all five still-unknown source/target bits. It uses both complete actual
d3 complex meanings and the actual maps' quotient-transition laws.

`Assembly.actual_d4_zero` provides the stronger assembled route. Its
`Incoming.Forcing` input names the old row-2773 product and actual naturality
square. `Forcing.zero` invokes `Row2773Leibniz.Actual.actual_row2773_d3_zero`
to prove the unknown incoming column is zero. `Assembly.incomingCoordinates`
then gives coordinates on the entire actual incoming source and proves
surjectivity. `targetMeaning` constructs the complete target homology meaning
using this equation. A zero incoming differential is not a separate premise.

The remaining mathematical inputs are explicit: current-page coordinates,
their additivity and complete outgoing/incoming equations, the meanings of
the whole maps, the old row-2773 product interpretation, the actual homology
quotient transitions with their local zero laws, and d4 naturality. A stored
later-prefix level alone does not establish one of these mathematical inputs.
In particular, the three other C2h5 incoming columns' zero equations are part
of `Forcing.unknownMeaning`, not inferred by Lean from `level=9993`.

`ActualDescent` constructs next-page coordinate equivalences from the full
actual quotient and proves the whole next-page map equation; it does not
take that equation as an input. `CoordinateBridge` proves both complete E3
coordinate swaps, complete induced E4 quotient equivalences, and the next
name/uniqueness theorems for actual cycle representatives. The helper source
incoming matrix is `[0,0,1,1]`, with a separate explicit incoming-coordinate
change to the previously imported staircase matrix.

Every proof is checked by Lean's kernel. The ten direct compilation records
have observed exit code zero. `lin_cert using ()` checks all complete finite
quotients and adjacent chain-map squares; there are no custom axioms or
native proof evaluators. `propext`, `Quot.sound`, and, for actual equivalence
construction, `Classical.choice` are the only reported foundational axioms.
Historical failed compiler logs are retained for provenance and are not
successful proof artifacts. C++ and Python compute witnesses and audits;
their hashes do not establish mathematical correctness.

`candidate_independent_review.py` imports no producer. It independently
replays all 16 whole E2 matrices, 12 complete d2 and 14 d3 quotients, 114 d2
square vectors, 34 raw d3-coordinate checks, and all 512 assignments of
the nine unknown bits. Exactly 32 assignments pass; the 480 nonzero incoming
assignments fail. `actual_descent_model_check.py` checks 256 relabeled whole
models and 128 failures without a quotient-transition law.

This module does not establish that the imported databases are the Adams
spectral sequences of the original topological spectra, and it does not
turn any retained SQL NULL into an unconditional mathematical theorem.

```sh
python3 program/Fact713D4SourceSearch/search.py
python3 program/Fact713D4SourceSearch/review.py
python3 program/Fact713D4SourceSearch/export_c2h5_matrices.py
python3 program/Fact713D4SourceSearch/c2h5_e4_candidates.py
python3 program/Fact713D4SourceSearch/generate_comparison.py
python3 program/Fact713D4SourceSearch/generate_parameters.py
python3 program/Fact713D4SourceSearch/candidate_independent_review.py
python3 program/Fact713D4SourceSearch/actual_descent_model_check.py
python3 program/Fact713D4SourceSearch/compile.py
```

The compilation command is serial. Root integration owns the registered
module build and the final global axiom audit. `FILES.txt` lists this module's
files; the root `program/` report lists the complete deliverable.
