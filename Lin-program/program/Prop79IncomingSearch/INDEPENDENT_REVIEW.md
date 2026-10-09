# Independent review of the eight frozen leaves

No correctness finding was identified. All eight final direct compilation
records match the frozen Lean sources and imported certificate hashes, and
all 32 explicit axiom reports contain only standard Lean axioms or none.
The review does not modify the frozen source, generator outputs or logs.

`independent_review.py` imports no producer helper. It checks all 49 recorded
raw degrees against read-only SQLite, every available complete quotient,
the six complete coefficient matrices and all 29 columns, eight homogeneous
relation reductions, both adjacent d2 squares, and both whole induced maps.
The 24-entry necessary dependency closure still lacks exactly the two
tracked target blocks at d3 and d4. The 31 available blocks include optional
outgoing work and are not presented as a completed no-hit proof through d5.

Canonical-to-staircase coordinate changes are verified on every vector and
both inverse directions, and on every actual finite cycle representative.
Using integer bit encodings, the three-dimensional source change is
`[0,1,6,7,4,5,2,3]`; canonical vector 6, or `[0,1,1]`, maps to staircase
vector 2, or `e1`. The target change is `[0,2,1,3]`, taking canonical `e1`
to staircase `e0`. All three source representatives are individually bound:
row 4179 base `0`, row 4180 base `1,2`, and row 4181 base `2` become the
three respective staircase coordinate basis vectors. The target is
staircase row 4411 base `2`, corresponding to E2 basis row 4412.

The audit enumerates every function from eight source vectors to four target
vectors, then checks zero and addition preservation. Exactly 64 linear
functions remain, and all 512 vector evaluations agree with the three-column
decomposition. Exactly one function has all three columns zero. Three
counterexamples survive if the named middle-column condition is omitted.

The actual named-differential theorem has no circular differential premise.
The full eta source map kills the named S0 class. Actual d3 naturality and
zero preservation therefore kill its eta target image. The complete finite
eta target map reflects zero, and faithful actual target coordinates give
the S0 differential zero. The bottom-cell source map then lifts the desired
Cnu class, and its separate naturality square gives the Cnu differential
zero. The degrees are S0 `(11,137)` to `(14,139)`, eta-shifted Cnu `(12,143)`
to `(15,145)`, and bottom-cell Cnu `(11,137)` to `(14,139)`.

Scope remains explicit. `Incoming.complete_no_hit` is a theorem about the
supplied finite quotient-valued differential `dc`; no proof in this package
identifies its entire graph with an actual Cnu differential. The actual
named-column theorem is separate. The other two columns retain boundary
and future-prefix premises. Target outgoing row 4411 stays unknown. There
is no new target-survival, permanent-cycle, synthetic-extension or
unconditional Proposition 7.9 theorem.

```sh
python3 program/Prop79IncomingSearch/independent_review.py
```

The exact counts, frozen hashes, degree checks and limitations are recorded
in `independent-review.json` and `independent-review.log`.
