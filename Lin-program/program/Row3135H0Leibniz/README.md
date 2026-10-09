# Row3135: an h0 product of a known nonzero differential

This package derives the named actual d3 zero at sphere degree `(20,140)`
from a whole product interpretation, the actual Leibniz law, and the known
d3 on the factor at `(19,139)`. It does not assume the desired row3135 value.

The staircase row3135 has base local1, which is basis3135
`h0^2 d0 x106,14`. Its factor is basis3065 `h0 d0 x106,14`, named by
staircase row3066 (not basis3066). That staircase record has d3 target
local1, basis3236 `d0 h3^2 x...` at `(22,141)`. This differential is nonzero
in the complete d2 quotient. Its h0 product is zero by the recorded ring
relation `h0 h3^2 = 0`. The complete h0 d3 target `(4,3)` is zero as well.
Leibniz therefore gives the desired zero for the product.

`Data.lean` imports six complete d2 comparisons and two complete product
tensors, covering six polynomial columns and two explicit relation
reductions. `Basic.lean` proves the product identities in the actual finite
kernel/image quotients, including nonzeroness of the known differential.
`Semantics.lean` interprets every tensor column and all vectors under ring
evaluation with explicit relation-vanishing hypotheses. `Actual.lean`
transports the quotient calculation through complete product meanings and
the typed Adams Leibniz law.

The actual interpretation of the known row3066 differential remains a
mathematical premise. Only initial finite relations, product tensors and
quotient algebra are checked from data. Original sphere realization and
the other unknown row3136 are not supplied by this package. The raw NULL
row3135 stays unchanged. Hashes track bytes only.

```sh
python3 program/Row3135H0Leibniz/generate.py
python3 program/Row3135H0Leibniz/generate_semantics.py
python3 program/Row3135H0Leibniz/compile.py
```

All four leaves have successful direct compiler records and standard axiom
reports only. The first Actual elaboration had a degree-transparency error;
its failed log is retained and is not proof evidence. No custom axiom,
`sorry` or native proof evaluator occurs in the accepted sources.
