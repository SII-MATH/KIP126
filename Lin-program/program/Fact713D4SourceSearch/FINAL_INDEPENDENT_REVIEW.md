# Final independent review

There are no unresolved correctness findings in the ten compiled leaves.
One raw-coordinate discrepancy was found and fixed before acceptance: the
S0 source incoming d3 matrix is `[0,0,1,1]` in the E2-ordered E3 basis. Its
original `[0,0,0,1]` used a staircase coordinate on one side. Both complete
input vectors and the staircase vector `e0+e1` are now checked independently.
Earlier audit artifacts and failed Lean logs remain separately preserved.

The independent finite audit verifies 16 complete E2 matrices, 44 columns,
20 relation-reduction steps, 12 complete d2 comparisons, both d2 squares on
114 vectors, 14 parameterized d3 comparisons, 34 raw d3 column bindings,
1,071 quotient pairs, and 40 coordinate-bridge checks. It imports no producer
helper. All 512 assignments of the unknown columns are enumerated; exactly
32 pass. In every accepted case the whole source E4 map is zero and the
whole target E4 map reflects zero. The remaining five unknown bits are
parameters, not selected values. The raw row-to-basis bindings are recorded
in `candidate-independent-review.json`.

The actual-object proof chain was reviewed directly:

- `Incoming.Forcing.zero` derives the incoming unknown column from the
  earlier conditional actual row-2773 theorem and whole current-map meanings.
- `Assembly.incomingCoordinates_surjective` covers the entire actual incoming
  carrier. `incomingEquation` uses `Forcing.zero` to prove its complete
  differential equation; zero incoming is not an additional supplied premise.
- `Assembly.targetMeaning` supplies that derived equation to the actual
  homology construction, retaining explicit additive and outgoing meanings.
- `ActualDescent.next_map_coordinates` derives both complete next-coordinate
  map formulas from the actual quotient transitions. `next_all_zero` and
  `next_reflects_zero` transfer the finite results to all actual next elements.
- `Assembly.actual_d4_zero` combines these derived properties with actual d4
  naturality. Its conclusion ranges over every actual source E4 element.
- `CoordinateBridge` checks complete source and target E3 swaps, both d3
  squares with the correct incoming basis change, and induced E4 maps. The
  actual next-page name and its uniqueness follow from the quotient formula.

The supplemental actual-model audit covers 256 relabeled carrier models,
1,024 cycle transitions, 512 representative comparisons, 512 next-coordinate
equations and 512 zero/reflection checks. It also records 128 countermodels
if the actual quotient-transition premise is removed.

All ten direct compilation records have exit code zero and match the current
source, log and imported-wire hashes. Their 39 explicit axiom reports contain
only Lean's standard `propext`, `Classical.choice`, and `Quot.sound`, or no
axioms. No accepted source contains `sorry`, `admit`, custom `axiom`,
`native_decide`, or `unsafe`. `Comparison.lean` is reproduced byte for byte
by `generate_comparison.py`.

The actual current-page, product, map, and homology interpretations remain
explicit premises. This establishes a conditional theorem about supplied
actual Adams objects; it does not construct a sphere realization from SQL,
choose the five unknown coefficients, or finish the topological Kervaire
theorem. Source hashes serve provenance only.

```sh
python3 program/Fact713D4SourceSearch/candidate_independent_review.py
python3 program/Fact713D4SourceSearch/actual_descent_model_check.py
python3 program/Fact713D4SourceSearch/generate_comparison.py
python3 program/Fact713D4SourceSearch/final_independent_review.py
```
