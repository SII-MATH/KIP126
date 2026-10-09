# Row3019 complete target search

This isolated, untrusted screen examines all 70 configured maps from S0.
The raw row is `[3019,11,138,"2",null,9000]`; its source is E2 local2,
basis3020 (`0,1,2,1,373,1`), not E2 basis3019. The source E3 quotient is
three-dimensional and the possible d3 target S0(14,140) is two-dimensional.

`search.py` computes both canonical target columns and their sum, covering
all three nonzero target vectors. `review.py` independently replays each
direction's raw database rows, relation reductions (including lifted ring
relations), complete d2 comparisons and quotient coordinates. It also
reruns generation byte-for-byte and checks that the sum is the sum of the
two basis images. All three views pass for all 70 configured maps.

Four single maps annihilate the named source and numerically detect the
whole target: `S0__C2`, `S0__C2h4`, `S0__C2h5`, and `S0__C2h6`. There are
also ten pairs of partial maps whose detected directions jointly cover
the target. The simplest candidate is `S0__C2`: the source image is already
zero at E2; the target basis images are local1 and local3 in the
four-dimensional C2 E3 target quotient.

Unknown stages remain unknown, and raw NULL is not changed. This directory
contains no assertion of a d3 value. Full imported map compatibility and
explicit local naturality and zero-preservation premises still need Lean
proofs before a candidate can become a conditional aggregate rule.

From the repository root:

```sh
python3 program/Row3019Search/search.py
python3 program/Row3019Search/review.py
```

`raw/lifted-search.json` retains all four selected vectors, `candidates.json`
records the full-target classification, and `target/`, `target1/`, and
`targetsum/` each contain a separately replayed view with fingerprints and
logs. `review.json` records the successful deterministic replay.
