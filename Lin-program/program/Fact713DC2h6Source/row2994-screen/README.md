# Read-only row 2994 frontier search

The raw unresolved row `[2994,17,138,"0,1,2",null,9000]` has one source E3
coordinate. The full d3 target E3 at `(20,140)` has two coordinates.
`search.py` screens all 70 configured S0 maps on the source and all three
nonzero target vectors, with the common engine's degree limits, 10,000-step
reduction limit and 100,000-term bound. It writes only search artifacts.

Forty-eight maps have complete quotient results for all four requested
vectors. Twenty kill the named source. Sixteen of those also kill the entire
target; the other four detect `(1,0)` and `(1,1)` but kill `(0,1)`. Consequently
neither one map nor any collection of these complete source-zero maps reflects
zero on the full target. Twenty-two incomplete maps retain their exact stage,
degree-window or missing-d2 failure. This is not an impossibility theorem for
maps outside the bounded screen.

`review.py` uses the independent polynomial/SQL oracle for every map and every
nonzero target direction. All three replays pass: 97 complete cycle-quotient
evaluations per direction, with 226, 252 and 303 reduction steps respectively.
`record_failures.py` records all incomplete stages and the common nonzero
kernel direction. `reproducibility.json` records byte-identical search output
on a second execution. No Lean rule or value for the unknown d3 is added.

`affine_screen.py` records the stronger joint-kernel result and checks all 48
complete maps for an affine refinement. Only Csigma, CW_2_eta_by_nu and DC2h6
can distinguish the remaining direction; their mapped sources involve the
raw unknown rows 4537+4538, 4206 and 3219 respectively. Each mapped source lies
outside the span of all non-NULL rows which are d2 cycles. Noncycles cannot be
treated as E3 classes by applying an arbitrary comparison projection.

Run from the repository root:

```sh
python3 program/Fact713DC2h6Source/row2994-screen/search.py
python3 program/Fact713DC2h6Source/row2994-screen/review.py
python3 program/Fact713DC2h6Source/row2994-screen/record_failures.py
python3 program/Fact713DC2h6Source/row2994-screen/affine_screen.py
```
