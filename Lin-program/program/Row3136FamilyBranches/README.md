# Row3136 conditional families

This package connects the separately proved `u = false` target parameter to
both remaining row3136 source matrices, crossed with both row2994 incoming
branches. It extends `Fact713Row2431Continuation`; every old complete entry
and its provenance is retained. No actual branch is selected here.

| Case | Source E4 dimension | Target E4 dimension | Family entries | New entries |
| --- | ---: | ---: | ---: | ---: |
| zero_a0 | 2 | 1 | 1338 | 5 |
| zero_a1 | 1 | 0 | 1338 | 5 |
| residual_a0 | 1 | 1 | 1346 | 5 |
| residual_a1 | 0 | 0 | 1349 | 8 |

The source is `(20,140)` at d3, the target is `(23,142)`, and the next
target is `(26,144)`. In the canonical coordinates the source matrix is
`[a,0;0,0]`, the incoming column is `[0;r]`, and the target map is `[0,1]`.
The staircase source order is reversed: its source matrix is `[0,a;0,0]`
and its incoming column is `[r;0]`. `CoordinateBridge.lean` proves both
chain-map squares in both directions and the inverse homology coordinate
maps, with a commuting statement for every homology class.

## Actual mathematical premises

`Actual.SourceMeaning` accepts an arbitrary complete 2-by-2 actual source
matrix. It does not assume that its second column is zero. The second
column is derived from the row3135 h0 product, its named factors, the known
right differential, and a binding to the same second-coordinate element.
`Actual.ParameterWitness` binds the actual row3305 h0 product to the first
coordinate of the entire target map. `parameter_zero` derives `u = false`.
The spectral-sequence square-zero law then proves
`actual_complete_matrix`: the whole source matrix has one of the two forms.

`actual_selected_family` additionally takes the entire actual incoming map
in its one-dimensional coordinates. It returns a coherent finite family
and equality of its full source, incoming, and target d3 matrices with the
actual maps under the displayed change of coordinates. It does not derive
actual realizations of all other old family entries. Their original actual
map, product, quotient, naming, and external-event premises remain needed.

## Residual/nonzero rebase

For `residual_a1`, the E4 target of row2907 d4 is zero-dimensional. The raw
row `[2907,"1",null,9996]` schedules a deletion at E5, but supplies no exact
differential value. The initial unrebased attempt fails with
`selected dimension mismatch 0 != homology 1`; its snapshot is preserved
in `initial-unrebased/`. This branch restores row2907 at E5 and subsequent
pages. All old complete keys remain unchanged, and every new comparison
and neighbor checks. The restored d4 comparison has `(k,m,n,h)=(0,1,1,1)`.
`actual_rebased_d4_zero` proves that a full actual target equivalence to
`Vec 0` forces this d4 to vanish. A raw scheduling marker is never asserted
to be a nonzero mathematical differential.

## Verification and reproduction

From the repository root:

```sh
python3 program/Row3136FamilyBranches/generate.py
python3 program/Row3136FamilyBranches/package.py
python3 program/Row3136FamilyBranches/audit.py
python3 program/Row3136FamilyBranches/review_families.py
python3 program/Row3136FamilyBranches/reproduce.py
python3 program/Row3136FamilyBranches/compile.py
python3 program/Row3136FamilyBranches/freeze.py
```

The generator exports four separate stable family JSON files, 23 comparison
JSON files, provenance, exact unresolved keys, and selection changes.
`Data.lean` imports comparisons with `page_comparison%` and proves each
valid using `lin_cert using ()`. The four `*Cross.lean` leaves prove old/new
cross consistency and full family coherence. `Branches.lean` binds their
keys, counts, dimensions, old-entry inclusion, and prior finite E9 result.

`audit.py` independently checks full matrices, all cycle pairs, all
predecessor dimensions, adjacent differentials, and consecutive pages.
`review_families.py` additionally enumerates all 7,212,005 ordered pairs in
the emitted family files and checks canonical/staircase inverses. It checks
all 16 full source matrices: 12 fail the derived second-column condition,
two fail square zero, and two remain. `reproduction.json` records exact
byte-for-byte regeneration. Each direct compilation records the command,
observed exit, source/import/JSON hashes and stable-input status. Earlier
failed imports or proof attempts remain in `evidence/`; only final successful
attempts are accepted by `freeze.py`.

## Remaining scope

All four families retain the prior named finite E9 trajectory. The named
d9 remains missing here because of row3143 d4; another independent package
addresses that row. For the first three branches, row2907 d4 remains
unknown with target dimensions 2, 1, and 1. For `residual_a1`, its d4 is
forced zero and row2622 d5 is the next unresolved first-class step, with
one-dimensional target. The other restored-class route reaches row3240 d4.

This is a finite certificate package with conditional actual transport,
not a construction of the Adams spectral sequence from the original
topological objects. No C++ output, raw NULL, SHA-256, schedule, or inventory
status supplies a mathematical proof. No proof hole, custom axiom, or
native evaluator is used in accepted Lean results; axiom reports permit
only the standard `propext`, `Classical.choice`, and `Quot.sound`.
