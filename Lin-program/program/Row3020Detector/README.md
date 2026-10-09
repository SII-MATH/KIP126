# Row3020 reuses the complete C2 map

The exact staircase row is `[3020,11,138,"0",null,9000]`. Its source is
E2 local0, basis3018, with E3 coordinates `[1,0,0]`. This differs from both
staircase row3019 and E2 basis3020.

The six complete matrices and four full quotient comparisons are reused
from `Row3019Detector`; no new raw map computation is needed. The entire
source C2 matrix is zero, and the same target map detects every vector in
the two-dimensional target. `Meaning.all_d3_zero` therefore proves that
any supplied differential from this source to this target is zero under
the explicit local naturality and zero-preservation premises.

`named_d3_zero` and `matched` provide the exact row3020 specialization.
`distinct_row3019` checks the two named quotient classes are distinct.
No assertion about another page, another target, or an Adams realization
follows automatically, and the raw NULL remains unchanged.

`review.py` independently checks the exact SQL identity, reused matrix
column, full target injection, and the current Row3019 audit fingerprints.
`compile.py` serially checks the new module; `assert_current.py` checks the
actual successful exit, current fingerprints and four standard-only axiom
sets (`propext`, `Classical.choice`, `Quot.sound`).

```sh
python3 program/Row3020Detector/review.py
python3 program/Row3020Detector/compile.py
python3 program/Row3020Detector/assert_current.py
```
