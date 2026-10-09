# Exact row2861 d4 full-target search

The stored S0 staircase row is `(2861,9,136,"1",NULL,9000)`.
The source is E2 local index 1, global basis 2861, monomial `1,1,392,1`.
The complete E4 target at `(13,139)` has dimension one and is represented
by E2 local index 0, global basis 3082. Its d3 comparison depends on the
conditional row2929 detector. The source d3 comparison depends on the
earlier Csigma detector. These dependencies are recorded, not discarded.

The search checks all 70 configured maps from S0. Requiring complete source
and target E4 images yields one numerical candidate, `S0__DC2h6`, four zero
targets and 65 unknowns. The candidate sends the source to `[0,0]` and the
full target basis to `[1,0]`. The earlier Csigma E3 detector does not by
itself establish detection after the next quotient.

`review.py` independently replays coefficient reductions, complete d2
matrices, comparison identities, raw higher-page rows, retained conditional
uses and both quotient projections. Imported higher-prefix interpretation
remains explicit, including NULL rows at recorded later filtration levels.
`regeneration-review.json` records a byte-identical rerun.

```sh
python3 program/Row2861D4Search/search.py
python3 program/Row2861D4Search/review.py
```

The numerical result is a candidate, not a differential theorem.
`Row2861D4Detector` checks the actual whole maps and gives the conditional
Lean proof through both quotient stages.
