# Independent row 2994 constraint review

No correctness findings in the six frozen Lean leaves. The final direct
compiler records match every source and log hash; all printed axiom reports
use standard Lean axioms. The review independently reconstructs six matrices
from raw SQLite basis entries and seven polynomial reduction steps, checks
four full d2 quotients, and enumerates both complete chain maps.

The named sphere raw representative is `(1,1,1,0)` at `(17,138)`.
Its detector image is the same nonzero vector and is d2 of detector basis
2803, monomial `64,1,55`, with stored differential `"0,1,2"`. Its image
therefore vanishes in the homology quotient.

The target quotient matrix is `(a,b) -> (0,a)`. Its full kernel contains
exactly `0` and `(0,1)`, and all 16 pairs satisfy the proved affine fiber
description. The theorem consequently gives two candidates for the unknown
actual differential. It does not select the zero candidate.

Both complete quotient coordinate changes are verified. The source change
is the identity; the target change swaps the two coordinates, carrying the
residual `(0,1)` to staircase residual `(1,0)`. The actual theorem keeps full
map meanings and actual d3 naturality explicit. The optional named residual
theorem only identifies an actual representative of the remaining candidate.

The raw row remains `(2994,17,138,"0,1,2",NULL,9000)`. These constraints do
not replace NULL with zero and do not establish actual E8 survival.

Reproduce using `python3 program/Fact713Row2994Constraint/independent_review.py`.
The audit writes review records only; it does not compile or edit the frozen
implementation. Separate branch exploration is outside these six leaves.
