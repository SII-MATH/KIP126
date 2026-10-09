# Row3019: C2 detects the entire two-dimensional target

This finite detector uses the configured map `S0__C2`, `maps_v2` ordinal 1,
factor `[0,0,0]`. Its factor is C2 bottom-cell module generator 0, database
basis id 0, in degree `(0,0)`. Filtration and suspension shifts are zero.

The exact source is staircase row `(3019,11,138,"2",NULL,9000)`. Its E2
representative is local index 2, basis id **3020**, monomial
`0,1,2,1,373,1`. Basis id 3019 is local index 1 and represents a different
class in the actual d2 quotient. The source E3 space has dimension 3;
the named source has coordinates `[0,0,1]`.

## Complete map and quotient evidence

The six actual map matrices cover degrees `(9,137)`, `(11,138)`, `(13,139)`,
`(12,139)`, `(14,140)` and `(16,141)`. They contain 21 total columns with
12 explicit module-relation reduction steps and no lifted ring relation.
The checked matrix expressions retain every E2 basis vector and exact
source relation provenance.

Four complete d2 homology comparisons cover S0 and C2 at `(11,138)` and
`(14,140)`. Their E3 dimensions are 3, 3, 2 and 4, respectively. Both pairs
of adjacent chain-map squares commute. The named source maps to literal
E2 zero, and the whole two-dimensional possible d3 target embeds into
the C2 four-dimensional target as follows:

| S0 target coordinates | E2 local indices | C2 target coordinates |
| --- | --- | --- |
| `[1,0]` | `[0]` | `[0,1,0,0]` |
| `[0,1]` | `[2]` | `[0,0,0,1]` |
| `[1,1]` | `[0,2]` | `[0,1,0,1]` |

All three nonzero vectors remain nonzero. The rank is 2, so the detector
reflects zero on the entire target, including linear combinations.
`Matches.target_coordinates` gives the formula on every `Vec 2` input;
`Naturality.g_reflects_zero` proves the corresponding quotient statement.

`Naturality.named_d3_zero ds dt zeroPreserving naturality` proves the named
source has zero d3 for arbitrary maps on these finite homology objects
under the displayed local d3 naturality and zero-preservation premises.
`Matches.matched` identifies the resulting zero candidate column in exact
E3 coordinates. `MapSemantics.actual_all_vectors` separately interprets
the checked actual matrix as a supplied module map, under generator-image
and imported-relation equations.

The database NULL is unchanged. These statements do not prove Adams
realization or the naturality premises from the topology of the spectra.
Neither the numerical search nor the database level 9000 provides a
zero-differential theorem by itself.

## Independent review

`review.py` reads the databases without modifying them. It verifies the
exact staircase and complete basis rows, all degrees and metadata bounds,
canonical disk wire bytes, every reduction step and relation degree, both
chain-map squares and all full homology identities. It checks the generated
Lean imports and matrices against the same wire bytes. It also checks all
three nonzero target directions against the separately reviewed 70-map
search, and independently computes the target matrix rank 2.

The review found no discrepancies. It writes source and input fingerprints
to `review.json`; hashes provide provenance only. It does not regenerate
data or compile Lean modules. Build status is recorded separately by the
actual per-module exit codes and hashes in `compile-audit.json`.

From `program/`:

```sh
python3 Row3019Detector/review.py
python3 Row3019Detector/compile.py
```

## Files

| File | Purpose |
| --- | --- |
| `export.py`, `source.json`, `wire/*.json` | Six complete map certificates with exact module relations |
| `generate_comparison.py`, `comparison-source.json` | Four complete d2 quotient certificates |
| `Actual.lean`, `Comparison.lean` | Checked maps, homology comparisons and chain-map compatibility |
| `Naturality.lean`, `Matches.lean` | Full target injection, conditional d3 zero and coordinate matches |
| `MapSemantics.lean` | Interpretation of actual module maps |
| `Tests.lean` | Wrong-shift rejection, all nonzero directions and distinct source identifiers |
| `CurrentImports.lean` | Fresh exact wire imports |
| `compile.py`, `compile-audit.json`, `*.log` | Actual serial compiler runs |
| `review.py`, `review.json` | Independent SQL, reduction and full-matrix replay |
