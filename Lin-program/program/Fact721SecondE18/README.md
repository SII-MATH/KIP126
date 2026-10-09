# Fact 7.21 second class: same-input E12 through E18

The previous E11 endpoint is extended directly to nonzero endpoints on
every page through E18. All traces start from the same original E2 input
`h5 x91,11` at `(12,134)`. No later named-cycle hypothesis is added.

| Outgoing page | Target | Complete earlier vanishing |
| --- | --- | --- |
| 11 | `(23,144)` | d3 removes one of two dimensions; recorded row3479 d4 kills the remaining dimension |
| 12 | `(24,145)` | recorded row3551 d3 is injective on the one-dimensional E3 |
| 13 | `(25,146)` | recorded row3482 d3 hits the entire one-dimensional E3 |
| 14 | `(26,147)` | recorded row3553 d3 hits the entire one-dimensional E3 |
| 15 | `(27,148)` | complete d2 homology is zero |
| 16 | `(28,149)` | complete d2 homology is zero |
| 17 | `(29,150)` | recorded row3736 d4 hits the entire constructed one-dimensional E4 |

All higher target charts are built by actual complete quotients from E2.
The d3 outgoing targets required to build these charts already have zero
complete E3. The d3 incoming maps are the recorded full one-column maps,
or have empty E2 sources `(22,145)` and `(26,148)`. No NULL value or future
event is used as a zero prefix. In particular row3736 reaches E4 because
its d3 target is empty, and row3479 reaches E4 for the same actual reason.

Every endpoint nonzero proof uses the existing full incoming-vanishing
theorem for all `r >= 8` and the actual quotient-zero equivalence. No
assumption of permanence, survival to E18, or a later coordinate name
appears in the input certificate.

```lean
example (certificate : Input previous)
    (binding : initial.coordinates.equivalence input = Fact721PageCertificates.Second.target) :
    Fact721SecondE6.ResultValid S pages initial input 18 := by
  fact721_second_e18_cert using certificate named binding
```

The tactic accepts pages 12 through 18. Compiled examples cover all seven
pages; zero inputs and page 19 are rejected. The same certificate can be
reused for a batch of these goals.

## Trust and verification

The untrusted generator exports seventeen complete d2 neighborhoods and
four d3 comparisons. Lean checks all 21 wire certificates. The independent
finite replay enumerates cycle vectors and quotient pairs, checks every
d2 column against SQLite, and checks the four recorded d3 and two recorded
d4 events after their complete earlier projections. Corrupting an incoming
column fails the comparison checker.

Complete actual E2 coordinate meanings, the six known recorded event
equations, and actual quotient zero/addition laws remain mathematical
premises. SHA256 is only a consistency check. No admitted proof, custom
axiom, native proof evaluator, or implicit C++ trust is introduced.

```text
python3 program/Fact721SecondE18/generate.py
python3 program/Fact721SecondE18/compile.py
python3 program/Fact721SecondE18/review.py
```

All attempts are retained under `evidence/`; only latest successful
compiles are acceptance evidence. This package proves finite survival,
not permanence or the original topological result without the stated
mathematical premises. Later targets still require further reasoning;
the finite database window cannot establish an infinite vanishing tail.

The accepted run has five warning-free modules, 82 standard-axiom reports
and two reports with no axioms. The finite audit checks 21 comparisons,
65 cycle vectors, 291 quotient pairs, 58 SQL d2 columns, six known events,
four derived whole zero maps, and two empty incoming degrees. All 23
generated source/wire/manifest files reproduce byte-for-byte.
