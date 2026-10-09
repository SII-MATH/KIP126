# Exact row2929 full-target search

The stored S0 staircase row is `(2929,10,137,"3",NULL,9000)`.
Its source is E2 local index 3, global basis 2932, monomial `1,2,375,1`.
The staircase identifier must not be mistaken for an E2 basis identifier.
The complete d2 quotient at the possible d3 target `(13,139)` has dimension
one; its canonical representative is E2 local index 0, global basis 3082.

`search.py` checks every configured map from S0: 70 records. The result has
3 numerical candidates, 10 nonzero source images, 35 zero target images,
and 22 unknowns. The candidates are `S0__CW_2_eta`, `S0__C2h6`, and
`S0__DC2h6`. Unknown columns and degrees beyond declared database coverage
are retained as unknown. `event3391-input.json` records the exact unresolved
event and the aggregate snapshot that motivates this search.

`review.py` reruns the search deterministically and independently replays
raw SQL identities, 97 complete cycle quotients, 178 relation reductions,
and 52 ring-relation lifts. The shared reducer is exposed through a relative
symbolic link so its existing provenance check still identifies actual code.

```sh
python3 program/Row2929Search/search.py
python3 program/Row2929Search/review.py
```

This search alone proves no differential. `Row2929Detector` supplies full
actual matrices and the conditional Lean argument for `S0__CW_2_eta`.
