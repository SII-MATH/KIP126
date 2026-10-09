# Kernel-check decomposition for dense generic complexes

The dense rank-three, 16-generator complex has 4096 product witnesses. A
single `by decide` over `checkWire` reduces all nested finite quantifiers,
list-index access, coproduct tables and support checks under one proof term.
The observed long-running allocation is consistent with that construction;
this is not evidence of a mathematical failure. List indexing through the
large shared `Wire.witnesses` also repeatedly traverses prefixes.

`GenericCheckDecomposition.lean` provides the unchanged checker acceptance
from four independently proved ingredients:

- `checkDimensions w = true`;
- `checkGrading w.data = true`;
- for each source i, `SourceProducts w.data w.certificate i`;
- for each source i, `SourceCancellation w.certificate i`.

The final `wire_valid_of_sources` applies the original `checkWire_sound` to a
proof assembled from these facts. It does not evaluate `decide` again on the
whole conjunction. Every product still uses exactly `checkAll`; every target
cancellation and dimension check is retained.

Recommended acyclic module layout:

1. `Data.lean`: materialize the wire data only, without a `checkWire` theorem.
2. `Source00.lean` through `Source15.lean`: import Data and the helper, prove
   source-specific product and cancellation lemmas by kernel `decide`.
3. `Verified.lean`: import the source modules and combine their lemmas with
   nested `Fin.cases`/`forall_fin_cons`, then `wire_valid_of_sources`.
4. Component exactness batches import Verified, never the reverse.

If 256 products per source still consume too much memory, split each source
into 16 middle-generator lemmas with 16 products each. Combine them with
`Fin.cases`; do not use `decide` to reconstruct their conjunction. For the
smallest peak footprint, individual cell declarations may be checked and
then composed. A numeric dispatch written as nested `Fin.cases` needs only
constructor/numeral definitional equality, avoiding an equality transport
that unfolds the entire wire in every branch.

This is a proposed memory reduction, not an experimentally measured bound
or guarantee. Source chunks should compile sequentially while monitoring RSS.
Parser elaboration still has to construct the dense data once per importing
process; this decomposition only isolates kernel proof reduction. If data
materialization itself dominates, the next representation change is a
separately proved array-indexed or chunk-indexed wire conversion, not relaxed
checking or an external evaluator axiom.
