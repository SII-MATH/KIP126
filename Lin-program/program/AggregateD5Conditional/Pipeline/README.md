# Event 3391: complete finite E2-to-E5 trajectory

The original stored incoming row is `[3391,18,143,"0","0",5]`, paired with
stored outgoing row `[3083,13,139,"0","0",9995]`. The source representative is
E2 local index 0, basis ID 3082, at (13,139); the target is E2 local index 0,
basis ID 3391, at (18,143). These identifications distinguish staircase IDs
from E2 basis IDs.

`Trace3391.lean` proves that both representatives are cycles and nonboundaries
on pages 2, 3 and 4, and that both full projections have E5 coordinate `[1]`.
`Executable3391.lean` imports the finite and indexed C++ wires, checks them
with `lin_cert`, identifies all six imported comparisons with the aggregate,
and proves the source is not in the kernel of the d5 matrix `[1]`. Rejection
examples cover an incorrect event page, incorrect raw source, and zero target.

```lean
import AggregateD5Conditional.Pipeline.Executable3391
open AggregateD5Conditional.Pipeline.Executable3391

example : finite.Valid := by lin_cert using ()
example : indexed.Valid := by lin_cert using ()
```

`review.py` independently checks the two raw SQL roles, E2 basis identities,
all six cycle/projection calculations, both final raw projections, canonical
wire bytes, the indexed page and degree labels, the Lean import bindings, and
all 11 conditional dependency uses. The associated raw `null` values and
level 9000 markers are preserved. In particular the row 2796 d5 use requires
the two source completions and the compatibility/naturality premises of the
detector; the checker does not manufacture unknown Adams source pages.

From `program/`, run `python3 AggregateD5Conditional/Pipeline/review.py` and
`python3 AggregateD5Conditional/Pipeline/assert_current.py`. Both pass for the
recorded artifacts. The compile audit records two actual successful modules
and four standard-only axiom reports. These are finite conditional semantics,
with an actual Adams realization and the inherited staircase meanings still
required for the corresponding topological statement.
