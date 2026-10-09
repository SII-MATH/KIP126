# Row2576 d4 bounded E4 search

This search starts from the exact `AggregateC2H2Conditional` 336-block snapshot.
The source `(4,132)` has E4 dimension1, conditional on the proved local C2+h2
d3 argument and its explicit naturality/Leibniz premises. The d4 target `(8,135)`
has E4 dimension2, with basis representatives E2local2 and E2local1, respectively.
Its comparison retains the earlier conditional row2796 d3 argument and the
imported earlier-page prefix of row2797. Raw Row2576 remains NULL; no d4 zero
or permanence is assumed.

## Results

All 70 configured S0-domain map records were screened using actual coefficient
substitution, explicit module/ring-relation reductions, and complete E4 image
comparisons where available. Eleven have complete images of the source and
both target basis vectors, and both target images are zero in every case.
The other 59 remain unknown. No complete numerical E4 candidate was found.

All 91 nonzero homogeneous d2-cycle combinations from the existing exhaustive
S0 factor screen with `0 < t <= 30` were also screened. Twenty-six have complete
E4 factor/source/target comparisons and zero target images; 65 remain unknown.
No complete numerical product candidate was found.

The raw `counts` in `lifted-search.json` describe its preliminary E3 stage;
use `E4_counts` and each record's `E4` member for the d4 question. The E3 stage
alone cannot certify an E4 detector. An E3-detecting C2 map has zero E4 source,
but its target comparison is blocked by C2 row2797 d3. The analogous Ceta
comparison is blocked by row4427. The h2 target `(9,139)` is blocked by S0
row3094 d3; the h3 source product by row3194; the d0 source product by row4055.
Other missing columns, out-of-window data and unknown events remain explicitly
listed in `review.json`.

## Validation and limits

`review.py` independently reads all recorded SQL rows and verifies complete
comparison matrix identities, known d2 columns, relation traces, cycles before
projection, and resulting E4 coordinates. The union of imported/computed finite
comparisons has 1,245 blocks, including 942 d2 blocks. It replays 213 map-reduction
steps and 162 product-reduction steps. Conditional uses must match the exact
existing aggregate snapshot; no new unknown differential is set to zero.
The known structural-empty S0 comparison outside the d2 window still has all
three E2 spaces empty within E2 coverage.

These are numerical image screens. Full compatibility of a map/product on all
classes through d2 and d3 is not inferred from representative images. Since
none of the complete image screens supplies a candidate, no such E4 descent
or detector theorem is asserted here. No arbitrary completion of missing
comparisons is used. Even an unavailable individual representative's actual
cycle status is not guessed from the existence of a topological map.

Run from the repository root:

```sh
python3 program/Row2576D4Search/search.py
python3 program/Row2576D4Search/products.py
python3 program/Row2576D4Search/review.py
```

All writes stay in this directory. The two search outputs and recorded comparison
data rerun byte-for-byte identically (`determinism.json`). SHA-256 tracks sources
only and is not a mathematical correctness argument.
