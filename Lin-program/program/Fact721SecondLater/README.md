# Fact 7.21 second class: same-input E9 through E11

This package extends `Fact721SecondE6.LaterInput.endpoint8` directly,
constructing nonzero E9, E10 and E11 endpoints from the same named E2 input
`h5 x91,11` at `(12,134)`. It does not assume any named d8, d9 or d10 cycle.

The three outgoing targets vanish by complete earlier computations:

| Differential | Target | Earlier reason |
| --- | --- | --- |
| d8 | `(20,141)` | E3 dimension one, zero d3, recorded injective d4, hence E5 zero |
| d9 | `(21,142)` | E3 dimension one, completely hit by recorded row3140 d3, hence E4 zero |
| d10 | `(22,143)` | Complete d2 homology zero |

The d8 target's full d3 source `(17,139)` is hit by rows2912 and2913.
The actual identity `d3*d3=0` therefore proves its whole outgoing d3 zero.
The d8 target's d3 target `(23,143)` has complete E3 zero. These give an
actual complete E4 chart, with no unknown prefix assumption for row3242.

The d4 target `(24,144)` has complete E3 dimension two. Its d3 target
`(27,146)` has complete E3 zero. Its d3 source `(21,142)` is completely hit
by row3140; the square-zero law again proves the whole outgoing d3 zero.
Thus its E4 chart is constructed without guessing the unknown row3476.
Recorded row3242 has d4 image `(0,1)` in this constructed chart, forcing
the one-dimensional source to have zero E5.

All incoming degrees for pages 8 through 12 have empty complete E2 bases.
Above page 12 no legal source degree exists. `Incoming.zero` covers every
page `r >= 8` and the full actual source carrier. The new endpoint
nonzero proofs use the actual quotient-zero law and this full incoming
vanishing; they do not inspect only listed differential rows.

```lean
example (certificate : Input previous)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Fact721SecondE6.ResultValid S pages initial input 11 := by
  fact721_second_later_cert using certificate named binding
```

The tactic also accepts pages 9 and 10. Zero inputs and page 12 are rejected.
The same certificate may be reused in a batch of these goals.

## Trust and reproduction

`generate.py` exports nine complete d2 neighborhoods and two complete zero
d3 comparisons through the untrusted C++ comparison exporter. JSON wire
certificates are imported by Lean and checked by kernel reduction. Four
recorded events (rows2912,2913,3140,3242) retain their exact source and target
coordinate bindings. The independent finite replay exhausts cycle vectors
and quotient pairs, validates every d2 column against SQLite, and checks
all four known events after the complete projections.

Complete actual E2 coordinates, the known recorded differential equations,
and actual quotient zero/addition laws remain explicit mathematical inputs.
They are not supplied by hashes or by C++ execution. Unknown rows2999 and
3476, and the future level7 event row3139, are never zero-cycle premises.
This package proves finite survival through E11, not permanence or the
original topological Fact 7.21 without those mathematical inputs.

```text
python3 program/Fact721SecondLater/generate.py
python3 program/Fact721SecondLater/compile.py
python3 program/Fact721SecondLater/review.py
```

Compilation is serial, with every observed attempt retained in `evidence/`.
Only latest successful records are acceptance evidence. No admitted proof,
custom axiom, native proof evaluator, or implicit C++ trust is used.

The accepted finite review checks eleven complete comparisons, 44 cycle
vectors, 254 quotient pairs, 43 SQL d2 columns, four known events, four
derived whole zero maps, and five empty incoming degrees. Seven modules
compile without warnings, reporting 51 uses of only standard axioms and
four theorems with no axioms. The final local compile is repeated after
the parent rebuild so that every direct dependency hash matches the
current accepted object; earlier attempts remain retained.
