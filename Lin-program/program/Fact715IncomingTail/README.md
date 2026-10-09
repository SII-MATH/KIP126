# Fact 7.15: complete later incoming sources except d5 and d9

The target degree is `(11,136)`. Six full finite comparisons are strictly
imported and checked by Lean. The complete E2 homology at source `(5,131)`
and `(3,129)` is zero. The complete E3 homology at `(4,130)` is zero.
Actual earlier-page meanings construct these zero spaces; quotient
surjectivity then proves all their later pages zero.

`EarlierSources.incoming_zero` exhausts every legal incoming element for
pages at least five except five and nine. This includes the zero summand
and every source degree, not just a selected named element. Pages ten and
eleven have complete empty E2 sources, and pages above eleven have no
nonnegative source filtration. No outgoing equation of the main class is
used or asserted.

The separate d5 source `(6,132)` has an unknown nonzero d3: its complete
matrix cannot be selected from the raw database. The d9 source is `h6^2`
at `(2,128)`. Its factor h6 dies on d2, so later square-cycle arguments
cannot be applied directly. Neither missing source is silently set to zero.
This package alone does not prove the all-page no-hit part of Fact 7.15.

`generate.py` retains raw SQL bases/staircases, metadata and hashes, builds
only complete available comparisons with the C++ page-transition exporter,
and records unsuccessful attempts separately. `proof_events.py` streams
all 2,672,275 proof events and records the exact relevant 28. The map search
is an untrusted E3 screen and is not a mathematical certificate.

Actual E2 coordinates, complete differential meanings and actual quotient
zero/addition laws remain explicit hypotheses. A JSON record or future-page
marker supplies none of these hypotheses. All successful proofs use only
the documented Lean standard axioms; historical compiler failures remain
in `evidence/` and are not acceptance evidence.

```sh
python3 program/Fact715IncomingTail/generate.py
python3 program/Fact715IncomingTail/compile.py
```
